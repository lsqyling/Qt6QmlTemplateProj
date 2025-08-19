#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickWindow>
#include <QQmlContext>
#include <QDebug>
#include "myobject.hpp"

void printAPI(QQmlApplicationEngine &engine)
{
    // 获取主窗口并检测实际使用的 API
    QQuickWindow *window = qobject_cast<QQuickWindow*>(engine.rootObjects().first());
    if (window) {
        auto graphicsApi = window->rendererInterface()->graphicsApi();

        switch(graphicsApi) {
            case QSGRendererInterface::Direct3D11:
                qDebug() << "Active API: Direct3D 11"; break;
            case QSGRendererInterface::OpenGL:
                qDebug() << "Active API: OpenGL"; break;
            case QSGRendererInterface::Vulkan:
                qDebug() << "Active API: Vulkan"; break;
            case QSGRendererInterface::Software:
                qDebug() << "Active API: Software"; break;
            default:
                qDebug() << "Active API: Unknown (" << graphicsApi << ")";
        }
    }
}

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;
//    printAPI(engine);
    // 设置全局变量，提供qml访问不推荐
    QQmlContext *context = engine.rootContext();
    context->setContextProperty("screen_width", 800);
//    context->setContextProperty("MyObject", MyObject::getInstance());
    /*
     *    // qmlRegisterType<MyObject>("MyObj", 1, 0, "MyObject");
     *    通过这种方式注册为qml对象，一定要通过下面的代码来使用，即创建对象的方式
     *
     *     MyObject {
     *         id: myobj
     *     }
     */
//    qmlRegisterType<MyObject>("MyObj", 1, 0, "MyObject");
    qmlRegisterSingletonInstance("MyObj", 1, 0, "MyObject", MyObject::getInstance());
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.loadFromModule("QmlDemo", "Main");

//    cpp 端进行qml信号连接
    auto window = engine.rootObjects().first();
    QObject::connect(MyObject::getInstance(), SIGNAL(cppSig(QVariant, QVariant)),
                     window, SLOT(qmlSlot(QVariant,QVariant)));

//    cpp端调用qml端的函数
    QVariant res;
    QVariant arg_1;
    QVariant arg_2;
    QMetaObject::invokeMethod(window, "qmlFunc",
                              Q_RETURN_ARG(QVariant, res),
                              Q_ARG(QVariant, arg_1),
                              Q_ARG(QVariant, arg_2));
    qDebug() << res;

    return app.exec();
}
