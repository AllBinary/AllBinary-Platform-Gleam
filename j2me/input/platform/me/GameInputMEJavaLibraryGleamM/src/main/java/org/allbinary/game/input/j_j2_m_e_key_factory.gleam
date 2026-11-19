// Generated Code Do Not Modify
// package org.allbinary.game.input
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class J2MEKeyFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "gameKeyFactory", jr.call_static("GameKeyFactory", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("J2MEKeyFactory", "instance", jr.new("J2MEKeyFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("J2MEKeyFactory", "instance")
}

fn c1_m5__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_game_key_array = jr.array_of("L", [jr.get_field(jr.get_field(this, "gameKeyFactory"), "DOWN"), jr.get_field(jr.get_field(this, "gameKeyFactory"), "FIRE"), jr.get_field(jr.get_field(this, "gameKeyFactory"), "GAME_A"), jr.get_field(jr.get_field(this, "gameKeyFactory"), "GAME_B"), jr.get_field(jr.get_field(this, "gameKeyFactory"), "GAME_C"), jr.get_field(jr.get_field(this, "gameKeyFactory"), "GAME_D"), jr.get_field(jr.get_field(this, "gameKeyFactory"), "KEY_NUM0"), jr.get_field(jr.get_field(this, "gameKeyFactory"), "KEY_NUM1"), jr.get_field(jr.get_field(this, "gameKeyFactory"), "KEY_NUM2"), jr.get_field(jr.get_field(this, "gameKeyFactory"), "KEY_NUM3"), jr.get_field(jr.get_field(this, "gameKeyFactory"), "KEY_NUM4"), jr.get_field(jr.get_field(this, "gameKeyFactory"), "KEY_NUM5"), jr.get_field(jr.get_field(this, "gameKeyFactory"), "KEY_NUM6"), jr.get_field(jr.get_field(this, "gameKeyFactory"), "KEY_NUM7"), jr.get_field(jr.get_field(this, "gameKeyFactory"), "KEY_NUM8"), jr.get_field(jr.get_field(this, "gameKeyFactory"), "KEY_NUM9"), jr.get_field(jr.get_field(this, "gameKeyFactory"), "KEY_POUND"), jr.get_field(jr.get_field(this, "gameKeyFactory"), "KEY_STAR"), jr.get_field(jr.get_field(this, "gameKeyFactory"), "LEFT"), jr.get_field(jr.get_field(this, "gameKeyFactory"), "LEVEL_DOWN"), jr.get_field(jr.get_field(this, "gameKeyFactory"), "LEVEL_UP"), jr.get_field(jr.get_field(this, "gameKeyFactory"), "NONE"), jr.get_field(jr.get_field(this, "gameKeyFactory"), "RIGHT"), jr.get_field(jr.get_field(this, "gameKeyFactory"), "UP")])
        let l_input_factory = jr.call_static("InputFactory", "getInstance_0", [])
        {
            let l_index = jr.cell(jr.as_i(jr.alen(l_game_key_array)))
            jr.for_loop("", fn() { jr.ge(jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, False), jr.JInt(0)) }, fn() { Nil }, fn() {
            jr.call(l_input_factory, "add_2", [jr.call(jr.aget(l_game_key_array, jr.get(l_index)), "getId_0", []), jr.aget(l_game_key_array, jr.get(l_index))])
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_m6__issubmission(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_input] = jargs
    jr.method(fn() {
            case jr.truth(jr.eq(l_input, jr.get_field(jr.get_field(this, "gameKeyFactory"), "FIRE"))) {
            True -> {
            jr.ret(jr.JBool(True))
            Nil
        }
            False -> Nil
        }
            jr.ret(jr.JBool(False))
        jr.JNull
    })
}

fn c1_m7__isdelete(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_input] = jargs
    jr.method(fn() {
            case jr.truth(jr.eq(l_input, jr.get_field(jr.get_field(this, "gameKeyFactory"), "GAME_D"))) {
            True -> {
            jr.ret(jr.JBool(True))
            Nil
        }
            False -> Nil
        }
            jr.ret(jr.JBool(False))
        jr.JNull
    })
}

fn c1_m8__isbackspace(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_input] = jargs
    jr.JBool(False)
}

fn c1_m9__isup(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_input] = jargs
    jr.method(fn() {
            case jr.truth(jr.eq(l_input, jr.get_field(jr.get_field(this, "gameKeyFactory"), "UP"))) {
            True -> {
            jr.ret(jr.JBool(True))
            Nil
        }
            False -> Nil
        }
            jr.ret(jr.JBool(False))
        jr.JNull
    })
}

fn c1_m10__isdown(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_input] = jargs
    jr.method(fn() {
            case jr.truth(jr.eq(l_input, jr.get_field(jr.get_field(this, "gameKeyFactory"), "DOWN"))) {
            True -> {
            jr.ret(jr.JBool(True))
            Nil
        }
            False -> Nil
        }
            jr.ret(jr.JBool(False))
        jr.JNull
    })
}

fn c1_m11__isleft(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_input] = jargs
    jr.method(fn() {
            case jr.truth(jr.eq(l_input, jr.get_field(jr.get_field(this, "gameKeyFactory"), "LEFT"))) {
            True -> {
            jr.ret(jr.JBool(True))
            Nil
        }
            False -> Nil
        }
            jr.ret(jr.JBool(False))
        jr.JNull
    })
}

fn c1_m12__isright(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_input] = jargs
    jr.method(fn() {
            case jr.truth(jr.eq(l_input, jr.get_field(jr.get_field(this, "gameKeyFactory"), "RIGHT"))) {
            True -> {
            jr.ret(jr.JBool(True))
            Nil
        }
            False -> Nil
        }
            jr.ret(jr.JBool(False))
        jr.JNull
    })
}

fn c1_m13__isenter(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_input] = jargs
    jr.method(fn() {
            case jr.truth(jr.eq(l_input, jr.get_field(jr.get_field(this, "gameKeyFactory"), "FIRE"))) {
            True -> {
            jr.ret(jr.JBool(True))
            Nil
        }
            False -> Nil
        }
            jr.ret(jr.JBool(False))
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
        "J2MEKeyFactory",
        "org.allbinary.game.input.J2MEKeyFactory",
        "Object",
        [],
        False,
        [#("gameKeyFactory", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("init_0", [], False, c1_m5__init), 
            jr.Method("isSubmission_1", ["Input"], False, c1_m6__issubmission), 
            jr.Method("isDelete_1", ["Input"], False, c1_m7__isdelete), 
            jr.Method("isBackSpace_1", ["Input"], False, c1_m8__isbackspace), 
            jr.Method("isUp_1", ["Input"], False, c1_m9__isup), 
            jr.Method("isDown_1", ["Input"], False, c1_m10__isdown), 
            jr.Method("isLeft_1", ["Input"], False, c1_m11__isleft), 
            jr.Method("isRight_1", ["Input"], False, c1_m12__isright), 
            jr.Method("isEnter_1", ["Input"], False, c1_m13__isenter), 
            jr.Method("jinit_0", [], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

