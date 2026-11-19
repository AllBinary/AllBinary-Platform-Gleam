// Generated Code Do Not Modify
// package org.allbinary.business.user.role
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BasicUserRole

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m8__getroleid(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "m_int_RoleId"))
}

fn c1_m9__getrole(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "role")
}

fn c1_m10__getsessiontimeout(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_j(jr.get_field(this, "sessionTimeout"))
}

fn c1_m11__getsessioninactivitytimeout(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_j(jr.get_field(this, "sessionInactivityTimeout"))
}

fn c1_m12__equals(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_basic_user_role] = jargs
    jr.method(fn() {
            case jr.truth(jr.eq(jr.call(this, "getRoleId_0", []), jr.call(l_basic_user_role, "getRoleId_0", []))) {
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

fn c1_m13__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call(this, "getRole_0", [])
}

fn c1_jinit6(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_a_role, l_a__int___role_id, l_a_session_timeout, l_a_session_inactivity_timeout] = jargs
    let l_a__int___role_id = jr.as_i(l_a__int___role_id)
    let l_a_session_timeout = jr.as_j(l_a_session_timeout)
    let l_a_session_inactivity_timeout = jr.as_j(l_a_session_inactivity_timeout)
        jr.this_init("BasicUserRole", this, [l_a_role, l_a_role, l_a__int___role_id, l_a_session_timeout, l_a_session_inactivity_timeout])
    this
}

fn c1_jinit7(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_a_role, l_a_display_value, l_a__int___role_id, l_a_session_timeout, l_a_session_inactivity_timeout] = jargs
    let l_a__int___role_id = jr.as_i(l_a__int___role_id)
    let l_a_session_timeout = jr.as_j(l_a_session_timeout)
    let l_a_session_inactivity_timeout = jr.as_j(l_a_session_inactivity_timeout)
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "m_int_RoleId", jr.as_i(l_a__int___role_id))
        jr.set_field(this, "role", l_a_role)
        jr.set_field(this, "displayValue", l_a_display_value)
        jr.set_field(this, "sessionTimeout", jr.as_j(l_a_session_timeout))
        jr.set_field(this, "sessionInactivityTimeout", jr.as_j(l_a_session_inactivity_timeout))
        jr.call(jr.get_field(jr.call_static("BasicUserRoles", "getInstance_0", []), "roleVector"), "add_1", [this])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "BasicUserRole",
        "org.allbinary.business.user.role.BasicUserRole",
        "Object",
        ["Serializable"],
        False,
        [#("m_int_RoleId", jr.JInt(0)), #("role", jr.JNull), #("displayValue", jr.JNull), #("sessionTimeout", jr.JLong(0)), #("sessionInactivityTimeout", jr.JLong(0))],
        [],
        [
            jr.Method("getRoleId_0", [], False, c1_m8__getroleid), 
            jr.Method("getRole_0", [], False, c1_m9__getrole), 
            jr.Method("getSessionTimeout_0", [], False, c1_m10__getsessiontimeout), 
            jr.Method("getSessionInactivityTimeout_0", [], False, c1_m11__getsessioninactivitytimeout), 
            jr.Method("equals_1", ["BasicUserRole"], False, c1_m12__equals), 
            jr.Method("toString_0", [], False, c1_m13__tostring), 
            jr.Method("jinit_4", ["String", "int", "long", "long"], False, c1_jinit6), 
            jr.Method("jinit_5", ["String", "String", "int", "long", "long"], False, c1_jinit7)],
        c1_jfields,
        c1_jclinit,
    )
}

