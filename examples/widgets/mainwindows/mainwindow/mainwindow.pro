TEMPLATE = app
QT += widgets quick
INCLUDEPATH += /home/user/qtwebdriver/out/dist/desktop/release/Test
INCLUDEPATH += /home/user/qtwebdriver/out/dist/desktop/release/h
LIBS += -L/home/user/qtwebdriver/out/dist/desktop/release/libs
LIBS += -lchromium_base -lWebDriver_core -lWebDriver_extension_qt_base -lWebDriver_extension_qt_quick -lWebDriver_extension_qt_quick_web -lWebDriver_extension_qt_web
DEFINES += QT_NO_SAMPLES="1"

HEADERS += colorswatch.h mainwindow.h toolbar.h
SOURCES += colorswatch.cpp mainwindow.cpp toolbar.cpp main.cpp
build_all:!build_pass {
    CONFIG -= build_all
    CONFIG += release
}

RESOURCES += mainwindow.qrc

# install
target.path = $$[QT_INSTALL_EXAMPLES]/widgets/mainwindows/mainwindow
INSTALLS += target
