// Generated Code Do Not Modify
// package org.allbinary.game.configuration
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GameOptionsFormFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("GameOptionsFormFactory", "instance", jr.new("GameOptionsFormFactory", []))
    jr.JNull
}

fn c1_m4__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("GameOptionsFormFactory", "instance")
}

fn c1_m5__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_command_listener, l_title, l_backgroun_basic_color, l_foreground_basic_color] = jargs
    jr.method(fn() {
            jr.try_catch(fn() {
            jr.ret(jr.new("GameOptionsForm", [l_command_listener, l_title, l_backgroun_basic_color, l_foreground_basic_color]))
            Nil
        }, [#(["Exception"], fn(l_e) { {
            let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(l_common_strings, "EXCEPTION"), this, jr.get_field(l_common_strings, "INIT"), l_e])
            jr.ret(jr.call_static("CommandForm", "getNullCommandForm_0", []))
            Nil
        } })], fn() { Nil })
        jr.JNull
    })
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GameOptionsFormFactory",
        "org.allbinary.game.configuration.GameOptionsFormFactory",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m4__getinstance), 
            jr.Method("init_4", ["CommandListener", "String", "BasicColor", "BasicColor"], False, c1_m5__init), 
            jr.Method("jinit_0", [], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

