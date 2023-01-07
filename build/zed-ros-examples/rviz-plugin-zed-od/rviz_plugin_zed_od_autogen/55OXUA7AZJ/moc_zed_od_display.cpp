/****************************************************************************
** Meta object code from reading C++ file 'zed_od_display.hpp'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.12.8)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "zed_od_display.hpp"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'zed_od_display.hpp' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.12.8. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_rviz_plugin_zed_od__displays__ZedOdDisplay_t {
    QByteArrayData data[9];
    char stringdata0[156];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_rviz_plugin_zed_od__displays__ZedOdDisplay_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_rviz_plugin_zed_od__displays__ZedOdDisplay_t qt_meta_stringdata_rviz_plugin_zed_od__displays__ZedOdDisplay = {
    {
QT_MOC_LITERAL(0, 0, 42), // "rviz_plugin_zed_od::displays:..."
QT_MOC_LITERAL(1, 43, 18), // "updateShowSkeleton"
QT_MOC_LITERAL(2, 62, 0), // ""
QT_MOC_LITERAL(3, 63, 15), // "updateShowLabel"
QT_MOC_LITERAL(4, 79, 11), // "updateAlpha"
QT_MOC_LITERAL(5, 91, 14), // "updateShowBBox"
QT_MOC_LITERAL(6, 106, 14), // "updateLinkSize"
QT_MOC_LITERAL(7, 121, 17), // "updateJointRadius"
QT_MOC_LITERAL(8, 139, 16) // "updateLabelScale"

    },
    "rviz_plugin_zed_od::displays::ZedOdDisplay\0"
    "updateShowSkeleton\0\0updateShowLabel\0"
    "updateAlpha\0updateShowBBox\0updateLinkSize\0"
    "updateJointRadius\0updateLabelScale"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_rviz_plugin_zed_od__displays__ZedOdDisplay[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
       7,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    0,   49,    2, 0x08 /* Private */,
       3,    0,   50,    2, 0x08 /* Private */,
       4,    0,   51,    2, 0x08 /* Private */,
       5,    0,   52,    2, 0x08 /* Private */,
       6,    0,   53,    2, 0x08 /* Private */,
       7,    0,   54,    2, 0x08 /* Private */,
       8,    0,   55,    2, 0x08 /* Private */,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void rviz_plugin_zed_od::displays::ZedOdDisplay::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<ZedOdDisplay *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->updateShowSkeleton(); break;
        case 1: _t->updateShowLabel(); break;
        case 2: _t->updateAlpha(); break;
        case 3: _t->updateShowBBox(); break;
        case 4: _t->updateLinkSize(); break;
        case 5: _t->updateJointRadius(); break;
        case 6: _t->updateLabelScale(); break;
        default: ;
        }
    }
    Q_UNUSED(_a);
}

QT_INIT_METAOBJECT const QMetaObject rviz_plugin_zed_od::displays::ZedOdDisplay::staticMetaObject = { {
    &rviz::MessageFilterDisplay<zed_interfaces::ObjectsStamped>::staticMetaObject,
    qt_meta_stringdata_rviz_plugin_zed_od__displays__ZedOdDisplay.data,
    qt_meta_data_rviz_plugin_zed_od__displays__ZedOdDisplay,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *rviz_plugin_zed_od::displays::ZedOdDisplay::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *rviz_plugin_zed_od::displays::ZedOdDisplay::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_rviz_plugin_zed_od__displays__ZedOdDisplay.stringdata0))
        return static_cast<void*>(this);
    return rviz::MessageFilterDisplay<zed_interfaces::ObjectsStamped>::qt_metacast(_clname);
}

int rviz_plugin_zed_od::displays::ZedOdDisplay::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = rviz::MessageFilterDisplay<zed_interfaces::ObjectsStamped>::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 7)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 7;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 7)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 7;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
