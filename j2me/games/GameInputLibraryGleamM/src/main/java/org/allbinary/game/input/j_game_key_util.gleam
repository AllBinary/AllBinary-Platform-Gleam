// Generated Code Do Not Modify
// package org.allbinary.game.input
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GameKeyUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("GameKeyUtil", "instance", jr.new("GameKeyUtil", []))
    jr.JNull
}

fn c1_m2__isdirectionkey(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_key] = jargs
    let l_key = jr.as_i(l_key)
    jr.method(fn() {
            case jr.truth(case jr.truth(case jr.truth(case jr.truth(jr.eq(l_key, jr.get_static("Canvas", "UP"))) { True -> jr.JBool(True) False -> jr.eq(l_key, jr.get_static("Canvas", "DOWN")) }) { True -> jr.JBool(True) False -> jr.eq(l_key, jr.get_static("Canvas", "LEFT")) }) { True -> jr.JBool(True) False -> jr.eq(l_key, jr.get_static("Canvas", "RIGHT")) }) {
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

fn c1_m3__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("GameKeyUtil", "instance")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GameKeyUtil",
        "org.allbinary.game.input.GameKeyUtil",
        "Object",
        [],
        False,
        [],
        [#("instance", jr.JNull)],
        [
            jr.Method("isDirectionKey_1", ["int"], False, c1_m2__isdirectionkey), 
            jr.Method("getInstance_0", [], True, c1_m3__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

