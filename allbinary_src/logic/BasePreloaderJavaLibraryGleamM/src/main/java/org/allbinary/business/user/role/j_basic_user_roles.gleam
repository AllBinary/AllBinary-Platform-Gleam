// Generated Code Do Not Modify
// package org.allbinary.business.user.role
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BasicUserRoles

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "roleVector", jr.new("BasicArrayListD", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("BasicUserRoles", "instance", jr.new("BasicUserRoles", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("BasicUserRoles", "instance")
}

fn c1_m4__getrole(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_role] = jargs
    jr.method(fn() {
            let l_role_vector = jr.call(this, "getAll_0", [])
            let l_size = jr.as_i(jr.call(l_role_vector, "size_0", []))
            {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            let l_user_role = jr.call(l_role_vector, "get_1", [jr.get(l_index)])
            case jr.truth(jr.eq(jr.call(l_role, "compareTo_1", [jr.call(l_user_role, "toString_0", [])]), jr.JInt(0))) {
                True -> {
                jr.ret(l_user_role)
                Nil
            }
                False -> Nil
            }
            Nil
        })
            Nil
        }
            jr.throw(jr.new("Exception", [jr.JStr("Unable to get role - Unknown Role")]))
        jr.JNull
    })
}

fn c1_m5__getall(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "roleVector")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "BasicUserRoles",
        "org.allbinary.business.user.role.BasicUserRoles",
        "Object",
        [],
        False,
        [#("roleVector", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("getRole_1", ["String"], False, c1_m4__getrole), 
            jr.Method("getAll_0", [], False, c1_m5__getall), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

