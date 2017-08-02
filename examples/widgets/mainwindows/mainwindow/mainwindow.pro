TEMPLATE = app
QT += widgets
QT += quick

HEADERS += colorswatch.h mainwindow.h toolbar.h
SOURCES += colorswatch.cpp mainwindow.cpp toolbar.cpp main.cpp
build_all:!build_pass {
    CONFIG -= build_all
    CONFIG += release
}

INCLUDEPATH += $$PWD/../../../../../../../../gitx/qtwebdriver/inc/ $$PWD/../../../../../../../../gitx/qtwebdriver/src/Test
LIBS += -L$$PWD/../../../../../../../../gitx/qtwebdriver/out/Default/ -lchromium_base -lWebDriver_core -lWebDriver_extension_qt_base -lWebDriver_extension_qt_quick
LIBS += -lws2_32 -ladvapi32 -luser32 -lkernel32

RESOURCES += mainwindow.qrc

# install
target.path = $$[QT_INSTALL_EXAMPLES]/widgets/mainwindows/mainwindow
INSTALLS += target
