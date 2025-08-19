//
// Created by 10580.
//


#include "mylistmodel.hpp"


MyListModel::MyListModel(QAbstractListModel *parent) :
        QAbstractListModel(parent)
{
    m_data.append({"孙悟空", 1});
    m_data.append({"唐僧", 2});
    m_data.append({"猪八戒", 3});
    m_data.append({"沙和尚", 4});
    m_data.append({"白龙马", 5});
}

/**
 * model 数据的个数
 */
int MyListModel::rowCount(const QModelIndex &parent) const
{
    return m_data.count();
}

QVariant MyListModel::data(const QModelIndex &index, int role) const
{
    if (!index.isValid())
        return {};
    if (role == MyRoleName::Name) {
        return m_data[index.row()].m_name;
    }
    else if(role == MyRoleName::Value) {
        return m_data[index.row()].m_value;
    }
    return QVariant();
}

QHash<int, QByteArray> MyListModel::roleNames() const
{
    QHash<int, QByteArray> roles;
    roles.insert(MyRoleName::Name, "name");
    roles.insert(MyRoleName::Value, "value");
    return roles;
}

MyListModel *MyListModel::getInstance()
{
    static MyListModel *model = new MyListModel;
    return model;
}


