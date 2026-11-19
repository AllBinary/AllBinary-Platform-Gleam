// Generated Code Do Not Modify
// package org.allbinary.graphics.displayable
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CanvasStrings

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "CONSTRUCTOR", jr.JStr("MyCanvas::MyCanvas"))
    jr.set_field(this, "PAUSE", jr.JStr("MyCanvas::pause"))
    jr.set_field(this, "UN_PAUSE", jr.JStr("MyCanvas::unPause"))
    jr.set_field(this, "SET_FULL_SCREEN_MODE", jr.JStr("setFullScreenMode"))
    jr.set_field(this, "SIZE_CHANGED", jr.JStr("sizeChanged"))
    jr.set_field(this, "SCALED_IMAGES", jr.JStr("scaledImages"))
    jr.set_field(this, "PAINT", jr.JStr("paint"))
    jr.set_field(this, "ON_DISPLAY_CHANGE_EVENT", jr.JStr("onDisplayChangeEvent"))
    jr.set_field(this, "UPDATE_MEASUREMENT", jr.JStr("updateMeasurement"))
    jr.set_field(this, "FD_WIDTH", jr.JStr(" font/display width: "))
    jr.set_field(this, "FD_HEIGHT", jr.JStr(" font/display height: "))
    jr.set_field(this, "EMPTY_CHILD_NAME_LIST", jr.call(jr.call_static("BasicArrayListUtil", "getInstance_0", []), "getImmutableInstance_0", []))
    jr.set_field(this, "ABOUT", jr.JStr("About"))
    jr.set_field(this, "OPTIONS", jr.JStr("Options"))
    jr.set_field(this, "FONT_ATLAS", jr.JStr("/font.png"))
    jr.set_field(this, "OBJ_MODEL", jr.JStr("_obj"))
    jr.set_field(this, "MD2_MODEL", jr.JStr("_md2"))
    jr.set_field(this, "_PNG", jr.JStr(".png"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("CanvasStrings", "instance", jr.new("CanvasStrings", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("CanvasStrings", "instance")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CanvasStrings",
        "org.allbinary.graphics.displayable.CanvasStrings",
        "Object",
        [],
        False,
        [#("CONSTRUCTOR", jr.JNull), #("PAUSE", jr.JNull), #("UN_PAUSE", jr.JNull), #("SET_FULL_SCREEN_MODE", jr.JNull), #("SIZE_CHANGED", jr.JNull), #("SCALED_IMAGES", jr.JNull), #("PAINT", jr.JNull), #("ON_DISPLAY_CHANGE_EVENT", jr.JNull), #("UPDATE_MEASUREMENT", jr.JNull), #("FD_WIDTH", jr.JNull), #("FD_HEIGHT", jr.JNull), #("EMPTY_CHILD_NAME_LIST", jr.JNull), #("ABOUT", jr.JNull), #("OPTIONS", jr.JNull), #("FONT_ATLAS", jr.JNull), #("OBJ_MODEL", jr.JNull), #("MD2_MODEL", jr.JNull), #("_PNG", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

