// Generated Code Do Not Modify
// package org.allbinary.input.motion.button
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class TouchScreenFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "touchScreenType", jr.get_field(jr.call_static("TouchScreenTypesFactory", "getInstance_0", []), "NOTOUCH"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("TouchScreenFactory", "SINGLETON", jr.new("TouchScreenFactory", []))
    jr.JNull
}

fn c1_m8__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("TouchScreenFactory", "SINGLETON")
}

fn c1_m9__setmultitouch(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_multi_touch] = jargs
        jr.set_field(this, "multiTouch", l_multi_touch)
    jr.JNull
}

fn c1_m10__ismultitouch(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "multiTouch")
}

fn c1_m11__settouch(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_touch] = jargs
        jr.set_field(this, "touch", l_touch)
    jr.JNull
}

fn c1_m12__istouch(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "touch")
}

fn c1_m13__setmultitouchdistinct(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_multi_touch_distinct] = jargs
        jr.set_field(this, "multiTouchDistinct", l_multi_touch_distinct)
    jr.JNull
}

fn c1_m14__ismultitouchdistinct(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "multiTouchDistinct")
}

fn c1_m15__settouchscreentype(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_touch_screen_type] = jargs
        jr.set_field(this, "touchScreenType", l_touch_screen_type)
    jr.JNull
}

fn c1_m16__gettouchscreentype(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "touchScreenType")
}

fn c1_m17__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_string_buffer = jr.new("StringMaker", [])
        jr.call(l_string_buffer, "append_1", [jr.JStr("TouchScreen: ")])
        jr.call(l_string_buffer, "appendboolean_1", [jr.call(this, "isTouch_0", [])])
        jr.call(l_string_buffer, "append_1", [jr.JStr(" MultiTouch: ")])
        jr.call(l_string_buffer, "appendboolean_1", [jr.call(this, "isMultiTouch_0", [])])
        jr.call(l_string_buffer, "append_1", [jr.JStr(" Distinct MultiTouch: ")])
        jr.call(l_string_buffer, "appendboolean_1", [jr.call(this, "isMultiTouchDistinct_0", [])])
        jr.call(l_string_buffer, "append_1", [jr.JStr(" TouchScreenType: ")])
        jr.call(l_string_buffer, "append_1", [jr.call(jr.call_static("StringUtil", "getInstance_0", []), "toString_1", [jr.call(this, "getTouchScreenType_0", [])])])
    jr.call(l_string_buffer, "toString_0", [])
}

fn c1_jinit7(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.try_catch(fn() {
            jr.call(this, "setTouch_1", [jr.JBool(True)])
            jr.call(this, "setMultiTouch_1", [jr.JBool(False)])
            Nil
        }, [#(["Exception"], fn(l_e) { {
            let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(l_common_strings, "EXCEPTION"), jr.get_static("TouchScreenFactory", "SINGLETON"), jr.get_field(l_common_strings, "GET_INSTANCE"), l_e])
            Nil
        } })], fn() { Nil })
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "TouchScreenFactory",
        "org.allbinary.input.motion.button.TouchScreenFactory",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull), #("touch", jr.JBool(False)), #("multiTouch", jr.JBool(False)), #("multiTouchDistinct", jr.JBool(False)), #("touchScreenType", jr.JNull)],
        [#("SINGLETON", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m8__getinstance), 
            jr.Method("setMultiTouch_1", ["boolean"], False, c1_m9__setmultitouch), 
            jr.Method("isMultiTouch_0", [], False, c1_m10__ismultitouch), 
            jr.Method("setTouch_1", ["boolean"], False, c1_m11__settouch), 
            jr.Method("isTouch_0", [], False, c1_m12__istouch), 
            jr.Method("setMultiTouchDistinct_1", ["boolean"], False, c1_m13__setmultitouchdistinct), 
            jr.Method("isMultiTouchDistinct_0", [], False, c1_m14__ismultitouchdistinct), 
            jr.Method("setTouchScreenType_1", ["TouchScreenType"], False, c1_m15__settouchscreentype), 
            jr.Method("getTouchScreenType_0", [], False, c1_m16__gettouchscreentype), 
            jr.Method("toString_0", [], False, c1_m17__tostring), 
            jr.Method("jinit_0", [], False, c1_jinit7)],
        c1_jfields,
        c1_jclinit,
    )
}

