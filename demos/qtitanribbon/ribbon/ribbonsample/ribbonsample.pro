QTITANDIR = $$quote($$PWD/../..)
include(../../../../qtproject.pri)

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TEMPLATE = app
DESTDIR = $$IDE_APP_PATH

LIBS *= -l$$qtLibraryNameVersion(qribbon, 3)

INCLUDEPATH += $$QTCANPOOL_ROOT/src/libs/qribbon/include

HEADERS       = mainwindow.h
SOURCES       = main.cpp \
                mainwindow.cpp
RESOURCES     = ribbonsample.qrc
FORMS         = ribbonsample.ui

include($$QTITANDIR/shared/aboutdialog.pri)

macx {
    CONFIG-=app_bundle
}

!lessThan(QT_MAJOR_VERSION, 5) {
  QT += printsupport
}
