//
// Created by 10580.
//

#ifndef QT6QMLTEMPLATEPROJ__MYLISTMODEL_HPP
#define QT6QMLTEMPLATEPROJ__MYLISTMODEL_HPP

#include <QAbstractListModel>


struct MyData
{
    QString m_name;
    int m_value;
};
class MyListModel : public QAbstractListModel
{
    Q_OBJECT

public:
    enum MyRoleName {
        Name = Qt::DisplayRole + 1,
        Value
    };

    explicit MyListModel(QAbstractListModel *parent = nullptr);


    int rowCount(const QModelIndex &parent) const override;

    QVariant data(const QModelIndex &index, int role) const override;

    QHash<int, QByteArray> roleNames() const override;

    static MyListModel *getInstance();

private:
    QList<MyData> m_data;
};


#endif //QT6QMLTEMPLATEPROJ__MYLISTMODEL_HPP
