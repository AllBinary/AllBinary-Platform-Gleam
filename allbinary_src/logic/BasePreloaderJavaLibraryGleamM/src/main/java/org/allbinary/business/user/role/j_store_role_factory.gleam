// Generated Code Do Not Modify
// package org.allbinary.business.user.role
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class StoreRoleFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "roles", jr.new("BasicArrayListD", []))
    jr.set_field(this, "subscriberRoles", jr.new("BasicArrayListD", []))
    jr.set_field(this, "wholesaleRoles", jr.new("BasicArrayListD", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("StoreRoleFactory", "instance", jr.new("StoreRoleFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("StoreRoleFactory", "instance")
}

fn c1_m7__getroles(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "roles")
}

fn c1_m8__getsubscriberroles(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "subscriberRoles")
}

fn c1_m9__getwholesaleroles(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "wholesaleRoles")
}

fn c1_jinit6(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
        let l_basic_user_role_factory = jr.call_static("BasicUserRoleFactory", "getInstance_0", [])
        jr.call(jr.get_field(this, "roles"), "add_1", [jr.get_field(l_basic_user_role_factory, "CUSTOMER")])
        jr.call(jr.get_field(this, "roles"), "add_1", [jr.get_field(l_basic_user_role_factory, "SUBSCRIBERCUSTOMER")])
        jr.call(jr.get_field(this, "roles"), "add_1", [jr.get_field(l_basic_user_role_factory, "WHOLESALECUSTOMER")])
        jr.call(jr.get_field(this, "subscriberRoles"), "add_1", [jr.get_field(l_basic_user_role_factory, "SUBSCRIBERCUSTOMER")])
        jr.call(jr.get_field(this, "wholesaleRoles"), "add_1", [jr.get_field(l_basic_user_role_factory, "WHOLESALECUSTOMER")])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "StoreRoleFactory",
        "org.allbinary.business.user.role.StoreRoleFactory",
        "Object",
        [],
        False,
        [#("roles", jr.JNull), #("subscriberRoles", jr.JNull), #("wholesaleRoles", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("getRoles_0", [], False, c1_m7__getroles), 
            jr.Method("getSubscriberRoles_0", [], False, c1_m8__getsubscriberroles), 
            jr.Method("getWholesaleRoles_0", [], False, c1_m9__getwholesaleroles), 
            jr.Method("jinit_0", [], False, c1_jinit6)],
        c1_jfields,
        c1_jclinit,
    )
}

