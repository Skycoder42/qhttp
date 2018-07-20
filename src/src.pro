TEMPLATE  = lib

CONFIG += staticlib c++14

QT += core network
QT -= gui

TARGET = $$qtLibraryTarget(qhttp)
VERSION = 1.0.0

DEFINES += QHTTP_MEMORY_LOG=0
win32:DEFINES += QHTTP_EXPORT

# http-parser
HEADERS  += ../3rdparty/http-parser/http_parser.h
SOURCES  += ../3rdparty/http-parser/http_parser.c
INCLUDEPATH += ../3rdparty

HEADERS  += \
    qhttpfwd.hpp \
    qhttpabstracts.hpp \
    qhttpserverconnection.hpp \
    qhttpserverrequest.hpp \
    qhttpserverresponse.hpp \
    qhttpserver.hpp

SOURCES  += \
    qhttpabstracts.cpp \
    qhttpserverconnection.cpp \
    qhttpserverrequest.cpp \
    qhttpserverresponse.cpp \
    qhttpserver.cpp

qhttp_has_client {
    SOURCES += \
        qhttpclientrequest.cpp \
        qhttpclientresponse.cpp \
        qhttpclient.cpp

    HEADERS += \
        qhttpclient.hpp \
        qhttpclientresponse.hpp \
        qhttpclientrequest.hpp
}
