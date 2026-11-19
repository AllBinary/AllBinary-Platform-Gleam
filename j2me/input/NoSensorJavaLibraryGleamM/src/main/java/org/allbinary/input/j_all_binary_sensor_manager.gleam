// Generated Code Do Not Modify
// package org.allbinary.input
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AllBinarySensorManager

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "commonStrings", jr.call_static("CommonStrings", "getInstance_0", []))
    jr.set_field(this, "ORIENTATION_SENSOR_INPUT", jr.JStr("Orientation Sensor Input"))
    jr.set_field(this, "ORIENTATION_TYPE", jr.JStr("Orientation Type"))
    jr.set_field(this, "list", jr.new("BasicArrayListD", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("AllBinarySensorManager", "instance", jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.eq(jr.get_static("AllBinarySensorManager", "instance"), jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))) {
            True -> {
            jr.set_static("AllBinarySensorManager", "instance", jr.new("AllBinarySensorManager", []))
            Nil
        }
            False -> Nil
        }
    jr.get_static("AllBinarySensorManager", "instance")
}

fn c1_m8__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m10__getsensornameslist(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "list")
}

fn c1_m11__shutdown(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_jinit7(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.try_catch(fn() {
            jr.call_static("GyroSensorFactory", "init_0", [])
            jr.call_static("AccelerometerSensorFactory", "init_0", [])
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(jr.get_field(this, "commonStrings"), "EXCEPTION"), this, jr.get_field(jr.get_field(this, "commonStrings"), "CONSTRUCTOR"), l_e])
            Nil
        } })], fn() { Nil })
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AllBinarySensorManager",
        "org.allbinary.input.AllBinarySensorManager",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull), #("commonStrings", jr.JNull), #("ORIENTATION_SENSOR_INPUT", jr.JNull), #("ORIENTATION_TYPE", jr.JNull), #("list", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("init_0", [], False, c1_m8__init), 
            jr.Method("getSensorNamesList_0", [], False, c1_m10__getsensornameslist), 
            jr.Method("shutdown_0", [], False, c1_m11__shutdown), 
            jr.Method("jinit_0", [], False, c1_jinit7)],
        c1_jfields,
        c1_jclinit,
    )
}

