//
// Created by 10580.
//

#ifndef QT6QMLTEMPLATEPROJ__MYOBJECT_HPP
#define QT6QMLTEMPLATEPROJ__MYOBJECT_HPP

#include <QObject>
#include <QtQml>


class MyObject : public QObject
{
Q_OBJECT
QML_ELEMENT

public:
    explicit MyObject(QObject *parent = nullptr);

//    int iValue() const;
//    void setIValue(int newIValue);
//
//    QString sString() const;
//    void setSString(const QString &newSStr);
//
    static MyObject *getInstance();

    Q_INVOKABLE void test_qml_call();
public slots:
    void test_cpp_slot_func(int i, QString s) const;

signals:
    void iValueChanged();
    void sStringChanged();
    void cppSig(QVariant i, QVariant s);

private:
    int m_iValue{};
    QString m_sString{};
//  需要成员函数 READ WRITE 后面的成员函数
//    Q_PROPERTY(int iValue READ iValue WRITE setIValue NOTIFY iValueChanged)
//    Q_PROPERTY(QString sString READ sString WRITE setSString NOTIFY sStringChanged)
//  使用MEMBER 可以不用生成 set get 成员读写函数
    Q_PROPERTY(int iValue MEMBER m_iValue NOTIFY iValueChanged)
    Q_PROPERTY(QString sString MEMBER m_sString NOTIFY sStringChanged)
};


#endif //QT6QMLTEMPLATEPROJ__MYOBJECT_HPP
