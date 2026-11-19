// Generated Code Do Not Modify
// package org.allbinary.game.input
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class PlatformInputMappingFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "inputToGameKeyMapping", jr.call_static("PersistentInputMapping", "getNullInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("PlatformInputMappingFactory", "instance", jr.new("PlatformInputMappingFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("PlatformInputMappingFactory", "instance")
}

fn c1_m5__getpersistentinputmappinginstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.try_catch(fn() {
            case jr.truth(jr.eq(jr.get_field(this, "inputToGameKeyMapping"), jr.call_static("PersistentInputMapping", "getNullInstance_0", []))) {
                True -> {
                jr.set_field(this, "inputToGameKeyMapping", jr.new("LaptopGameInputMapping", []))
                Nil
            }
                False -> Nil
            }
            Nil
        }, [#(["Exception"], fn(l_e) { {
            let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(l_common_strings, "EXCEPTION"), this, jr.get_field(l_common_strings, "GET_INSTANCE"), l_e])
            Nil
        } })], fn() { Nil })
    jr.get_field(this, "inputToGameKeyMapping")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "PlatformInputMappingFactory",
        "org.allbinary.game.input.PlatformInputMappingFactory",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull), #("inputToGameKeyMapping", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("getPersistentInputMappingInstance_0", [], False, c1_m5__getpersistentinputmappinginstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

