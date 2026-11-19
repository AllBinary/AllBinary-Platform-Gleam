// Generated Code Do Not Modify
// package org.allbinary.game.ag.life
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class Life

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("Life", "NO_LIFE", jr.call_static("Life", "createLife_0", []))
    jr.JNull
}

fn c1_m1__createlife(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.method(fn() {
            jr.try_catch(fn() {
            jr.ret(jr.new("Life", [jr.to_s(jr.JInt(0)), jr.to_s(jr.JInt(0))]))
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.throw(jr.new("RuntimeException", []))
            Nil
        } })], fn() { Nil })
        jr.JNull
    })
}

fn c1_m7__get(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_s(jr.get_field(this, "lives"))
}

fn c1_m8__set(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_lives] = jargs
    let l_lives = jr.as_s(l_lives)
        jr.set_field(this, "lives", jr.as_s(l_lives))
    jr.JNull
}

fn c1_m9__reset(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.set_field(this, "lives", jr.as_s(jr.get_field(this, "startLives")))
    jr.JNull
}

fn c1_m10__add(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_lives] = jargs
    let l_lives = jr.as_s(l_lives)
        case jr.truth(jr.not(jr.call(this, "reachedLimit_0", []))) {
            True -> {
            case jr.truth(jr.le(jr.add(jr.get_field(this, "lives"), l_lives), jr.to_i(jr.call(this, "getMaxlives_0", [])))) {
                True -> {
                jr.set_field(this, "lives", jr.as_s(jr.to_s(jr.add(jr.get_field(this, "lives"), l_lives))))
                Nil
            }
                False -> {
                jr.set_field(this, "lives", jr.as_s(jr.call(this, "getMaxlives_0", [])))
                Nil
            }
            }
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m11__isalive(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.method(fn() {
            case jr.truth(jr.le(jr.to_i(jr.get_field(this, "lives")), jr.JInt(0))) {
            True -> {
            jr.ret(jr.JBool(False))
            Nil
        }
            False -> {
            jr.ret(jr.JBool(True))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_m12__getmaxlives(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_s(jr.get_field(this, "maxlives"))
}

fn c1_m13__reachedlimit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.method(fn() {
            case jr.truth(case jr.truth(jr.gt(jr.get_field(this, "lives"), jr.get_field(this, "maxlives"))) { True -> jr.JBool(True) False -> jr.lt(jr.to_i(jr.get_field(this, "lives")), jr.JInt(0)) }) {
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

fn c1_m14__deaths(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_lives] = jargs
    let l_lives = jr.as_s(l_lives)
        case jr.truth(jr.not(jr.call(this, "reachedLimit_0", []))) {
            True -> {
            case jr.truth(jr.ge(jr.sub(jr.get_field(this, "lives"), l_lives), jr.JInt(0))) {
                True -> {
                jr.set_field(this, "lives", jr.as_s(jr.to_s(jr.sub(jr.get_field(this, "lives"), l_lives))))
                Nil
            }
                False -> {
                jr.set_field(this, "lives", jr.as_s(jr.JInt(0)))
                Nil
            }
            }
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m15__getstartlives(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_s(jr.get_field(this, "startLives"))
}

fn c1_m16__setstartlives(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_start_lives] = jargs
    let l_start_lives = jr.as_s(l_start_lives)
        jr.set_field(this, "startLives", jr.as_s(l_start_lives))
    jr.JNull
}

fn c1_jinit6(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_lives, l_maxlives] = jargs
    let l_lives = jr.as_s(l_lives)
    let l_maxlives = jr.as_s(l_maxlives)
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "maxlives", jr.as_s(l_maxlives))
        case jr.truth(jr.gt(l_lives, jr.get_field(this, "maxlives"))) {
            True -> {
            jr.throw(jr.new("Exception", [jr.JStr("To Many Lives")]))
            Nil
        }
            False -> Nil
        }
        jr.set_field(this, "lives", jr.as_s(l_lives))
        jr.set_field(this, "startLives", jr.as_s(l_lives))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "Life",
        "org.allbinary.game.ag.life.Life",
        "Object",
        ["LifeInterface"],
        False,
        [#("lives", jr.JShort(0)), #("startLives", jr.JShort(0)), #("maxlives", jr.JShort(0))],
        [#("NO_LIFE", jr.JNull)],
        [
            jr.Method("createLife_0", [], True, c1_m1__createlife), 
            jr.Method("get_0", [], False, c1_m7__get), 
            jr.Method("set_1", ["short"], False, c1_m8__set), 
            jr.Method("reset_0", [], False, c1_m9__reset), 
            jr.Method("add_1", ["short"], False, c1_m10__add), 
            jr.Method("isAlive_0", [], False, c1_m11__isalive), 
            jr.Method("getMaxlives_0", [], False, c1_m12__getmaxlives), 
            jr.Method("reachedLimit_0", [], False, c1_m13__reachedlimit), 
            jr.Method("deaths_1", ["short"], False, c1_m14__deaths), 
            jr.Method("getStartLives_0", [], False, c1_m15__getstartlives), 
            jr.Method("setStartLives_1", ["short"], False, c1_m16__setstartlives), 
            jr.Method("jinit_2", ["short", "short"], False, c1_jinit6)],
        c1_jfields,
        c1_jclinit,
    )
}

