// Generated Code Do Not Modify
// package org.allbinary.game.configuration
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class InGameOptionsFormFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "SINGLETON", jr.call_static("CommandForm", "getNullCommandForm_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("InGameOptionsFormFactory", "instance", jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))
    jr.JNull
}

fn c1_m3__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.eq(jr.get_static("InGameOptionsFormFactory", "instance"), jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))) {
            True -> {
            jr.set_static("InGameOptionsFormFactory", "instance", jr.new("InGameOptionsFormFactory", []))
            Nil
        }
            False -> Nil
        }
    jr.get_static("InGameOptionsFormFactory", "instance")
}

fn c1_m5__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_command_listener, l_init_interface, l_title, l_backgroun_basic_color, l_foreground_basic_color] = jargs
        jr.try_catch(fn() {
            case jr.truth(jr.eq(jr.get_field(this, "SINGLETON"), jr.call_static("CommandForm", "getNullCommandForm_0", []))) {
                True -> {
                jr.call(l_init_interface, "init_0", [])
                jr.set_field(this, "SINGLETON", jr.new("InGameOptionsForm", [l_command_listener, l_title, l_backgroun_basic_color, l_foreground_basic_color]))
                Nil
            }
                False -> Nil
            }
            Nil
        }, [#(["Exception"], fn(l_e) { {
            let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(l_common_strings, "EXCEPTION"), this, jr.get_field(l_common_strings, "INIT"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_m6__get(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "SINGLETON")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "InGameOptionsFormFactory",
        "org.allbinary.game.configuration.InGameOptionsFormFactory",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull), #("SINGLETON", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m3__getinstance), 
            jr.Method("init_5", ["CommandListener", "Init", "String", "BasicColor", "BasicColor"], False, c1_m5__init), 
            jr.Method("get_0", [], False, c1_m6__get), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

