// Generated Code Do Not Modify
// package org.allbinary.game.health
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class Health

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "healthListenerInterface", jr.get_static("NullHealthListener", "NULL_HEALTH_LISTENER"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("Health", "NULL_HEALTH", jr.new("Health", [jr.JInt(0)]))
    jr.JNull
}

fn c1_m7__heal(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_ahealth] = jargs
    let l_ahealth = jr.as_i(l_ahealth)
        let l_new_health = jr.as_i(jr.add(jr.call(this, "getHealth_0", []), l_ahealth))
        case jr.truth(jr.gt(l_new_health, jr.call(this, "getMaxHealth_0", []))) {
            True -> {
            jr.call(this, "setHealth_1", [jr.call(this, "getMaxHealth_0", [])])
            Nil
        }
            False -> {
            jr.call(this, "setHealth_1", [l_new_health])
            Nil
        }
        }
    jr.JNull
}

fn c1_m8__healmax(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(this, "setHealth_1", [jr.call(this, "getMaxHealth_0", [])])
    jr.JNull
}

fn c1_m9__isdamaged(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.method(fn() {
            case jr.truth(jr.ne(jr.call(this, "getHealth_0", []), jr.call(this, "getMaxHealth_0", []))) {
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

fn c1_m10__damage(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_ahealth] = jargs
    let l_ahealth = jr.as_i(l_ahealth)
    jr.method(fn() {
            case jr.truth(jr.lt(l_ahealth, jr.JInt(0))) {
            True -> {
            let l_string_buffer = jr.new("StringMaker", [])
            jr.call(l_string_buffer, "append_1", [jr.JStr("******* Trying to heal when damaging. Damage: ")])
            jr.call(l_string_buffer, "appendint_1", [l_ahealth])
            jr.call(l_string_buffer, "append_1", [jr.get_field(jr.call_static("CommonSeps", "getInstance_0", []), "SPACE")])
            jr.call(l_string_buffer, "append_1", [jr.call(this, "toString_0", [])])
            jr.call_static("ForcedLogUtil", "log_2", [jr.call(l_string_buffer, "toString_0", []), this])
            jr.ret(jr.JNull)
            Nil
        }
            False -> Nil
        }
            let l_health = jr.as_i(jr.sub(jr.call(this, "getHealth_0", []), l_ahealth))
            jr.call(this, "setHealth_1", [l_health])
        jr.JNull
    })
}

fn c1_m11__isalive(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.method(fn() {
            case jr.truth(jr.le(jr.call(this, "getHealth_0", []), jr.JInt(0))) {
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

fn c1_m12__getmaxhealth(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "maxHealth"))
}

fn c1_m13__setmaxhealth(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_max_health] = jargs
    let l_max_health = jr.as_i(l_max_health)
        jr.set_field(this, "maxHealth", jr.as_i(l_max_health))
    jr.JNull
}

fn c1_m14__sethealth(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_health] = jargs
    let l_health = jr.as_i(l_health)
        case jr.truth(jr.gt(l_health, jr.call(this, "getMaxHealth_0", []))) {
            True -> {
            jr.set_field(this, "health", jr.as_i(jr.call(this, "getMaxHealth_0", [])))
            Nil
        }
            False -> case jr.truth(jr.lt(l_health, jr.JInt(0))) {
            True -> {
            jr.set_field(this, "health", jr.as_i(jr.JInt(0)))
            Nil
        }
            False -> {
            jr.set_field(this, "health", jr.as_i(l_health))
            Nil
        }
        }
        }
        case jr.truth(jr.ne(jr.get_field(this, "healthListenerInterface"), jr.JNull)) {
            True -> {
            jr.call(jr.get_field(this, "healthListenerInterface"), "onHealthChange_0", [])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m15__gethealth(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "health"))
}

fn c1_m16__addlistener(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_health_graphic] = jargs
        jr.set_field(this, "healthListenerInterface", l_health_graphic)
    jr.JNull
}

fn c1_m19__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_string_buffer = jr.new("StringMaker", [])
        jr.call(l_string_buffer, "append_1", [jr.get_static("Health", "HEALTH_LABEL")])
        jr.call(l_string_buffer, "appendint_1", [jr.get_field(this, "health")])
        jr.call(l_string_buffer, "append_1", [jr.get_static("Health", "MAX_HEALTH_LABEL")])
        jr.call(l_string_buffer, "appendint_1", [jr.get_field(this, "maxHealth")])
    jr.call(l_string_buffer, "toString_0", [])
}

fn c1_jinit6(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_max_health] = jargs
    let l_max_health = jr.as_i(l_max_health)
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.call(this, "setMaxHealth_1", [l_max_health])
        jr.call(this, "setHealth_1", [l_max_health])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "Health",
        "org.allbinary.game.health.Health",
        "Object",
        ["HealthInterface"],
        False,
        [#("health", jr.JInt(0)), #("maxHealth", jr.JInt(0)), #("healthListenerInterface", jr.JNull)],
        [#("NULL_HEALTH", jr.JNull), #("NAME", jr.JStr("Health Resource")), #("HEALTH_LABEL", jr.JStr("Health: ")), #("MAX_HEALTH_LABEL", jr.JStr(" Max: "))],
        [
            jr.Method("heal_1", ["int"], False, c1_m7__heal), 
            jr.Method("healMax_0", [], False, c1_m8__healmax), 
            jr.Method("isDamaged_0", [], False, c1_m9__isdamaged), 
            jr.Method("damage_1", ["int"], False, c1_m10__damage), 
            jr.Method("isAlive_0", [], False, c1_m11__isalive), 
            jr.Method("getMaxHealth_0", [], False, c1_m12__getmaxhealth), 
            jr.Method("setMaxHealth_1", ["int"], False, c1_m13__setmaxhealth), 
            jr.Method("setHealth_1", ["int"], False, c1_m14__sethealth), 
            jr.Method("getHealth_0", [], False, c1_m15__gethealth), 
            jr.Method("addListener_1", ["HealthListenerInterface"], False, c1_m16__addlistener), 
            jr.Method("toString_0", [], False, c1_m19__tostring), 
            jr.Method("jinit_1", ["int"], False, c1_jinit6)],
        c1_jfields,
        c1_jclinit,
    )
}

