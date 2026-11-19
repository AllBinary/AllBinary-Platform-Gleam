// Generated Code Do Not Modify
// package org.allbinary.game
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BasicGameInfoFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("BasicGameInfoFactory", "SINGLETON", jr.new("BasicGameInfoFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("BasicGameInfoFactory", "SINGLETON")
}

fn c1_m7__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_total] = jargs
    let l_total = jr.as_i(l_total)
        jr.set_field(this, "currentReleaseIndex", jr.as_i(jr.JInt(0)))
        jr.set_field(this, "currentDestroyIndex", jr.as_i(jr.JInt(0)))
        jr.set_field(this, "total", jr.as_i(l_total))
    jr.JNull
}

fn c1_m8__ispeaked(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.method(fn() {
            case jr.truth(jr.ge(jr.get_field(this, "currentDestroyIndex"), jr.get_field(this, "total"))) {
            True -> {
            jr.ret(jr.JBool(True))
            Nil
        }
            False -> {
            jr.ret(jr.JBool(False))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_m9__howmanyleft(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.sub(jr.get_field(this, "total"), jr.get_field(this, "currentDestroyIndex")))
}

fn c1_jinit6(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "BasicGameInfoFactory",
        "org.allbinary.game.BasicGameInfoFactory",
        "Object",
        [],
        False,
        [#("currentReleaseIndex", jr.JInt(0)), #("currentDestroyIndex", jr.JInt(0)), #("total", jr.JInt(0))],
        [#("SINGLETON", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("init_1", ["int"], False, c1_m7__init), 
            jr.Method("isPeaked_0", [], False, c1_m8__ispeaked), 
            jr.Method("howManyLeft_0", [], False, c1_m9__howmanyleft), 
            jr.Method("jinit_0", [], False, c1_jinit6)],
        c1_jfields,
        c1_jclinit,
    )
}

