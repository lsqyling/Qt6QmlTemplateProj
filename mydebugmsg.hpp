#ifndef QT6QMLTEMPLATEPROJ_MYDEBUGMSG_HPP
#define QT6QMLTEMPLATEPROJ_MYDEBUGMSG_HPP
#include <qobject.h>

class MyDebugMsg : public QObject
{
    Q_OBJECT
public:
    static MyDebugMsg *getInstance();

    void set_data(const QString &);


signals:
    void dataChanged();



private:
    explicit MyDebugMsg(QObject *parent = nullptr);

    QString m_data;

    Q_PROPERTY(QString data MEMBER m_data NOTIFY dataChanged)


};



























#endif

