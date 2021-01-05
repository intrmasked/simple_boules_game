#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include<QQmlContext>
#include"datastore.h"
#include"QReseter.h"

int main(int argc, char *argv[])
{


#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    QQmlContext* context = engine.rootContext();
    DataStore a;
    context->setContextProperty("dataStore", &a);
int i =0;
        for (i=0;i<=4;i++){
        QReseter reseter(&engine);
        engine.rootContext()->setContextProperty("reseter", &reseter);
        engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
}

    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);





    return app.exec();

}
