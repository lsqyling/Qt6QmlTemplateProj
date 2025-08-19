//
// Created by 10580.
//


#include "myobject.hpp"


MyObject::MyObject(QObject *parent) :
        QObject(parent)
{ }

//int MyObject::iValue() const
//{
//    return m_iValue;
//}
//
//void MyObject::setIValue(int newIValue)
//{
//    if (m_iValue == newIValue) {
//        return;
//    }
//    m_iValue = newIValue;
//    emit iValueChanged();
//}
//
//QString MyObject::sString() const
//{
//    return m_sString;
//}
//
//void MyObject::setSString(const QString &newSStr)
//{
//    if (newSStr == m_sString)
//        return ;
//    m_sString = newSStr;
//    emit sStringChanged();
//}

MyObject *MyObject::getInstance()
{
    static MyObject *obj = new MyObject;
    return obj;
}

void MyObject::test_qml_call()
{
    qDebug() << __FUNCTION__ ;
    emit this->cppSig(101, "wangwu");
}

void MyObject::test_cpp_slot_func(int i, QString s) const
{
    qDebug() << __FUNCTION__ << "i: " << i << "s: " << s;
}


