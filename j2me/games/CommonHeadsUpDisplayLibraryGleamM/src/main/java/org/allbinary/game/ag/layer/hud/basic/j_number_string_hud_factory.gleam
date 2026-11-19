// Generated Code Do Not Modify
// package org.allbinary.game.ag.layer.hud.basic
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class NumberStringHudFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "NULL_NUMBER_STRING_HUD", jr.call(this, "createHud_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("NumberStringHudFactory", "instance", jr.call_static("NullUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.eq(jr.get_static("NumberStringHudFactory", "instance"), jr.call_static("NullUtil", "getInstance_0", []))) {
            True -> {
            jr.set_static("NumberStringHudFactory", "instance", jr.new("NumberStringHudFactory", []))
            Nil
        }
            False -> Nil
        }
    jr.get_static("NumberStringHudFactory", "instance")
}

fn c1_m3__createhud(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.method(fn() {
            jr.try_catch(fn() {
            jr.ret(jr.new("NumberStringHud", [jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.JInt(9), jr.get_field(jr.call_static("BasicHudFactory", "getInstance_0", []), "ABSOLUTE"), jr.JInt(1), jr.JInt(0), jr.get_field(jr.call_static("BasicColorFactory", "getInstance_0", []), "NULL_COLOR")]))
            Nil
        }, [#(["Exception"], fn(l_e) { {
            let l_log_util = jr.call_static("LogUtil", "getInstance_0", [])
            let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
            jr.call(l_log_util, "put_4", [jr.get_field(l_common_strings, "EXCEPTION"), this, jr.get_field(l_common_strings, "CONSTRUCTOR"), l_e])
            jr.throw(jr.new("RuntimeException", []))
            Nil
        } })], fn() { Nil })
        jr.JNull
    })
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "NumberStringHudFactory",
        "org.allbinary.game.ag.layer.hud.basic.NumberStringHudFactory",
        "Object",
        [],
        False,
        [#("NULL_NUMBER_STRING_HUD", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("createHud_0", [], False, c1_m3__createhud), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

