#include "mydebugmsg.hpp"



MyDebugMsg::MyDebugMsg(QObject *parent) : QObject(parent) {}


MyDebugMsg *MyDebugMsg::getInstance()
{
    static MyDebugMsg *msg = new MyDebugMsg;
    return msg;
}

void MyDebugMsg::set_data(const QString &s)
{
    if (s == m_data)
        return ;
    m_data += s;
    emit dataChanged();
}

