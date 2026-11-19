// Generated Code Do Not Modify
// package org.allbinary.midlet
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AllBinaryMidlet

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "commonStrings", jr.call_static("CommonStrings", "getInstance_0", []))
    jr.set_field(this, "SET_DISPLAY", jr.JStr("setDisplay"))
    jr.set_field(this, "SETTING_", jr.JStr("Setting: "))
    jr.set_field(this, "_DISPLAY_", jr.JStr(" Display: "))
    jr.set_field(this, "SETTING_NO_TITLE", jr.JStr("Setting: No Title, Display: "))
    jr.set_field(this, "hashtable", jr.call(jr.call_static("StdUtil", "getInstance_0", []), "createHashtable_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("AllBinaryMidlet", "NULL_ALLBINARY_MIDLET", jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))
    jr.JNull
}

fn c1_m2__getnullinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.eq(jr.get_static("AllBinaryMidlet", "NULL_ALLBINARY_MIDLET"), jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))) {
            True -> {
            jr.set_static("AllBinaryMidlet", "NULL_ALLBINARY_MIDLET", jr.new("AllBinaryMidlet", []))
            Nil
        }
            False -> Nil
        }
    jr.get_static("AllBinaryMidlet", "NULL_ALLBINARY_MIDLET")
}

fn c1_m12__setdisplay(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_new_display] = jargs
        let l_title = jr.cell(jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"))
        case jr.truth(jr.ne(l_new_display, jr.get_static("NullCanvas", "NULL_CANVAS"))) {
            True -> {
            jr.set(l_title, jr.call(l_new_display, "getTitle_0", []))
            jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(this, "SETTING_")]), "append_1", [jr.get(l_title)]), "append_1", [jr.get_field(this, "_DISPLAY_")]), "append_1", [jr.call(jr.call_static("StringUtil", "getInstance_0", []), "toString_1", [l_new_display])]), "toString_0", []), this, jr.get_field(this, "SET_DISPLAY")])
            Nil
        }
            False -> Nil
        }
        let l_display = jr.call(this, "getDisplay_0", [])
        jr.call(l_display, "setCurrent_1", [l_new_display])
    jr.JNull
}

fn c1_m13__getdisplay(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call_static("Display", "getDisplay_1", [this])
}

fn c1_m14__getcurrentdisplayable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call(jr.call_static("Display", "getDisplay_1", [this]), "getCurrent_0", [])
}

fn c1_m15__setdestroyed(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_destroyed] = jargs
        jr.set_field(this, "midletDestroyed", l_destroyed)
    jr.JNull
}

fn c1_m16__isdestroyed(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "midletDestroyed")
}

fn c1_m17__startapp(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call_static("ForcedLogUtil", "log_2", [jr.get_field(jr.call_static("EventStrings", "getInstance_0", []), "PERFORMANCE_MESSAGE"), this])
    jr.JNull
}

fn c1_m18__pauseapp(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call_static("ForcedLogUtil", "log_2", [jr.get_field(jr.call_static("EventStrings", "getInstance_0", []), "PERFORMANCE_MESSAGE"), this])
    jr.JNull
}

fn c1_m19__destroyappinrunnable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_unconditional, l_is_progress] = jargs
    jr.JNull
}

fn c1_m20__destroyapp(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_unconditional] = jargs
        let l__m_e_t_h_o_d___n_a_m_e = jr.JStr("AllBinaryMidlet::destroyApp")
        jr.try_catch(fn() {
            jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.get_field(jr.get_field(this, "commonStrings"), "START"), this, l__m_e_t_h_o_d___n_a_m_e])
            jr.call_static("PreLogUtil", "put_3", [jr.call_static("Memory", "getInfo_0", []), this, l__m_e_t_h_o_d___n_a_m_e])
            jr.call(this, "setDestroyed_1", [jr.JBool(True)])
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(jr.get_field(this, "commonStrings"), "EXCEPTION"), this, l__m_e_t_h_o_d___n_a_m_e, l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_m21__setstartstatehashtable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_hashtable] = jargs
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(jr.call_static("CommonLabels", "getInstance_0", []), "START_LABEL")]), "append_1", [jr.call(jr.call_static("StringUtil", "getInstance_0", []), "toString_1", [l_hashtable])]), "toString_0", []), this, jr.JStr("setStartStateHashtable")])
        jr.set_field(this, "hashtable", l_hashtable)
    jr.JNull
}

fn c1_m22__getstartstatehashtable(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(jr.call_static("CommonLabels", "getInstance_0", []), "START_LABEL")]), "append_1", [jr.call(jr.call_static("StringUtil", "getInstance_0", []), "toString_1", [jr.get_field(this, "hashtable")])]), "toString_0", []), this, jr.JStr("getStartStateHashtable")])
    jr.get_field(this, "hashtable")
}

fn c1_m23__getcurrentstatehashtable(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.get_field(jr.get_field(this, "commonStrings"), "START"), this, jr.JStr("getStateHashtable")])
    jr.get_field(jr.call_static("StdUtil", "getInstance_0", []), "NULL_TABLE")
}

fn c1_m24__commandaction(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_command, l_displayable] = jargs
    jr.JNull
}

fn c1_jinit11(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("MIDlet", this, [])
    c1_jfields(this)
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.get_field(jr.get_field(this, "commonStrings"), "CONSTRUCTOR"), this, jr.JStr("AllBinaryMidlet::AllBinaryMidlet")])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AllBinaryMidlet",
        "org.allbinary.midlet.AllBinaryMidlet",
        "MIDlet",
        ["CommandListener"],
        False,
        [#("logUtil", jr.JNull), #("commonStrings", jr.JNull), #("SET_DISPLAY", jr.JNull), #("SETTING_", jr.JNull), #("_DISPLAY_", jr.JNull), #("SETTING_NO_TITLE", jr.JNull), #("hashtable", jr.JNull), #("midletDestroyed", jr.JBool(False))],
        [#("NULL_ALLBINARY_MIDLET", jr.JNull)],
        [
            jr.Method("getNullInstance_0", [], True, c1_m2__getnullinstance), 
            jr.Method("setDisplay_1", ["Displayable"], False, c1_m12__setdisplay), 
            jr.Method("getDisplay_0", [], False, c1_m13__getdisplay), 
            jr.Method("getCurrentDisplayable_0", [], False, c1_m14__getcurrentdisplayable), 
            jr.Method("setDestroyed_1", ["boolean"], False, c1_m15__setdestroyed), 
            jr.Method("isDestroyed_0", [], False, c1_m16__isdestroyed), 
            jr.Method("startApp_0", [], False, c1_m17__startapp), 
            jr.Method("pauseApp_0", [], False, c1_m18__pauseapp), 
            jr.Method("destroyAppInRunnable_2", ["boolean", "boolean"], False, c1_m19__destroyappinrunnable), 
            jr.Method("destroyApp_1", ["boolean"], False, c1_m20__destroyapp), 
            jr.Method("setStartStateHashtable_1", ["ABHashtable"], False, c1_m21__setstartstatehashtable), 
            jr.Method("getStartStateHashtable_0", [], False, c1_m22__getstartstatehashtable), 
            jr.Method("getCurrentStateHashtable_0", [], False, c1_m23__getcurrentstatehashtable), 
            jr.Method("commandAction_2", ["Command", "Displayable"], False, c1_m24__commandaction), 
            jr.Method("jinit_0", [], False, c1_jinit11)],
        c1_jfields,
        c1_jclinit,
    )
}

