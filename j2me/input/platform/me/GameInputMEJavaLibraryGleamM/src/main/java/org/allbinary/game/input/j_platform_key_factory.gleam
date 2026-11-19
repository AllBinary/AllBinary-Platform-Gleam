// Generated Code Do Not Modify
// package org.allbinary.game.input
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class PlatformKeyFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("PlatformKeyFactory", "instance", jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.eq(jr.get_static("PlatformKeyFactory", "instance"), jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))) {
            True -> {
            jr.set_static("PlatformKeyFactory", "instance", jr.new("PlatformKeyFactory", []))
            Nil
        }
            False -> Nil
        }
    jr.get_static("PlatformKeyFactory", "instance")
}

fn c1_m3__getstring(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_key_code] = jargs
    let l_key_code = jr.as_i(l_key_code)
    jr.call_static("J2MEGameKey", "getString_1", [l_key_code])
}

fn c1_m4__issubmission(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_input] = jargs
    jr.call(jr.call_static("J2MEKeyFactory", "getInstance_0", []), "isSubmission_1", [l_input])
}

fn c1_m5__isdelete(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_input] = jargs
    jr.call(jr.call_static("J2MEKeyFactory", "getInstance_0", []), "isDelete_1", [l_input])
}

fn c1_m6__isbackspace(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_input] = jargs
    jr.call(jr.call_static("J2MEKeyFactory", "getInstance_0", []), "isBackSpace_1", [l_input])
}

fn c1_m7__isleft(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_input] = jargs
    jr.call(jr.call_static("J2MEKeyFactory", "getInstance_0", []), "isLeft_1", [l_input])
}

fn c1_m8__isright(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_input] = jargs
    jr.call(jr.call_static("J2MEKeyFactory", "getInstance_0", []), "isRight_1", [l_input])
}

fn c1_m9__isup(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_input] = jargs
    jr.call(jr.call_static("J2MEKeyFactory", "getInstance_0", []), "isUp_1", [l_input])
}

fn c1_m10__isdown(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_input] = jargs
    jr.call(jr.call_static("J2MEKeyFactory", "getInstance_0", []), "isDown_1", [l_input])
}

fn c1_m11__isenter(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_input] = jargs
    jr.call(jr.call_static("J2MEKeyFactory", "getInstance_0", []), "isEnter_1", [l_input])
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "PlatformKeyFactory",
        "org.allbinary.game.input.PlatformKeyFactory",
        "Object",
        [],
        False,
        [],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("getString_1", ["int"], False, c1_m3__getstring), 
            jr.Method("isSubmission_1", ["Input"], False, c1_m4__issubmission), 
            jr.Method("isDelete_1", ["Input"], False, c1_m5__isdelete), 
            jr.Method("isBackSpace_1", ["Input"], False, c1_m6__isbackspace), 
            jr.Method("isLeft_1", ["Input"], False, c1_m7__isleft), 
            jr.Method("isRight_1", ["Input"], False, c1_m8__isright), 
            jr.Method("isUp_1", ["Input"], False, c1_m9__isup), 
            jr.Method("isDown_1", ["Input"], False, c1_m10__isdown), 
            jr.Method("isEnter_1", ["Input"], False, c1_m11__isenter), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

