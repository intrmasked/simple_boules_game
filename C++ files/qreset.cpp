#include "qreseter.h"

QReseter::QReseter(QQmlApplicationEngine* engine)
{
    m_pEngine = engine;

}

QReseter::~QReseter()
{

}

void QReseter::reset()
{
    if (m_pEngine){


        m_pEngine->load(QUrl(QStringLiteral("qrc:/main.qml")));

    }


}
