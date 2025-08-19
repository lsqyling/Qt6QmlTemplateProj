#include <stdio.h>
#include <qapplication>
#include <qqmlapplicationengine>
#include <qqmlcontext>
#include <qdebug>
#include "mylistmodel.hpp"
#include "mydebugmsg.hpp"

void myMessageOutput(QtMsgType type, const QMessageLogContext &context, const QString &msg)
{
    QByteArray localMsg = msg.toLocal8Bit();
    const char *file = context.file ? context.file : "";
    const char *function = context.function ? context.function : "";
    QString s = QString("Debug: %1 (%2:%3, %4)\n").arg(localMsg.constData()).arg(file).arg(context.line).arg(function);
    MyDebugMsg::getInstance()->set_data(s);
    switch (type) {
        case QtDebugMsg:
            fprintf(stderr, "Debug: %s (%s:%u, %s)\n", localMsg.constData(), file, context.line, function);
            break;
        case QtInfoMsg:
            fprintf(stderr, "Info: %s (%s:%u, %s)\n", localMsg.constData(), file, context.line, function);
            break;
        case QtWarningMsg:
            fprintf(stderr, "Warning: %s (%s:%u, %s)\n", localMsg.constData(), file, context.line, function);
            break;
        case QtCriticalMsg:
            fprintf(stderr, "Critical: %s (%s:%u, %s)\n", localMsg.constData(), file, context.line, function);
            break;
        case QtFatalMsg:
            fprintf(stderr, "Fatal: %s (%s:%u, %s)\n", localMsg.constData(), file, context.line, function);
            break;
    }
}

int main(int argc, char *argv[])
{
    qInstallMessageHandler(myMessageOutput);

    QApplication app(argc, argv);
    app.setOrganizationName("MyApp");

    QQmlApplicationEngine engine;

//    engine.rootContext()->setContextProperty("MyListModel", MyListModel::getInstance());
    qmlRegisterSingletonInstance("MyModel", 1, 0, "MyListModel", MyListModel::getInstance());
    qmlRegisterSingletonInstance("MyDebugMsg", 1, 0, "MyDebugMsg", MyDebugMsg::getInstance());

    qDebug("hello world");

    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.loadFromModule("QmlDemo", "Main");

    qDebug("my test");


    return app.exec();
}
