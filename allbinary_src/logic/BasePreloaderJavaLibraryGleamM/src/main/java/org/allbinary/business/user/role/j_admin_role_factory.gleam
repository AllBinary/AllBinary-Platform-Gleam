// Generated Code Do Not Modify
// package org.allbinary.business.user.role
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AdminRoleFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "adminRoles", jr.new("BasicArrayListD", []))
    jr.set_field(this, "storeAdminRoles", jr.new("BasicArrayListD", []))
    jr.set_field(this, "storeManagementRoles", jr.new("BasicArrayListD", []))
    jr.set_field(this, "productManagementRoles", jr.new("BasicArrayListD", []))
    jr.set_field(this, "reviewManagementRoles", jr.new("BasicArrayListD", []))
    jr.set_field(this, "customerManagementRoles", jr.new("BasicArrayListD", []))
    jr.set_field(this, "workflowManagementRoles", jr.new("BasicArrayListD", []))
    jr.set_field(this, "orderManagementRoles", jr.new("BasicArrayListD", []))
    jr.set_field(this, "adjusterManagementRoles", jr.new("BasicArrayListD", []))
    jr.set_field(this, "shippingManagementRoles", jr.new("BasicArrayListD", []))
    jr.set_field(this, "webManagementRoles", jr.new("BasicArrayListD", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("AdminRoleFactory", "instance", jr.new("AdminRoleFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("AdminRoleFactory", "instance")
}

fn c1_m15__getproductmanagementroles(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "productManagementRoles")
}

fn c1_m16__getadminroles(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "adminRoles")
}

fn c1_m17__getstoreadminroles(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "storeAdminRoles")
}

fn c1_m18__getstoremanagementroles(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "storeManagementRoles")
}

fn c1_m19__getreviewmanagementroles(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "reviewManagementRoles")
}

fn c1_m20__getcustomermanagementroles(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "customerManagementRoles")
}

fn c1_m21__getworkflowmanagementroles(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "workflowManagementRoles")
}

fn c1_m22__getwebmanagementroles(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "webManagementRoles")
}

fn c1_m23__getshippingmanagementroles(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "shippingManagementRoles")
}

fn c1_m24__getadjustermanagementroles(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "adjusterManagementRoles")
}

fn c1_m25__getordermanagementroles(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "orderManagementRoles")
}

fn c1_jinit14(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
        let l_basic_user_role_factory = jr.call_static("BasicUserRoleFactory", "getInstance_0", [])
        jr.call(jr.get_field(this, "adminRoles"), "add_1", [jr.get_field(l_basic_user_role_factory, "ADMINISTRATOR")])
        jr.call(jr.get_field(this, "storeAdminRoles"), "add_1", [jr.get_field(l_basic_user_role_factory, "ADMINISTRATOR")])
        jr.call(jr.get_field(this, "storeAdminRoles"), "add_1", [jr.get_field(l_basic_user_role_factory, "STOREMANAGER")])
        jr.call(jr.get_field(this, "storeManagementRoles"), "add_1", [jr.get_field(l_basic_user_role_factory, "ADMINISTRATOR")])
        jr.call(jr.get_field(this, "storeManagementRoles"), "add_1", [jr.get_field(l_basic_user_role_factory, "STOREMANAGER")])
        jr.call(jr.get_field(this, "storeManagementRoles"), "add_1", [jr.get_field(l_basic_user_role_factory, "CUSTOMERMANAGER")])
        jr.call(jr.get_field(this, "storeManagementRoles"), "add_1", [jr.get_field(l_basic_user_role_factory, "ADJUSTER")])
        jr.call(jr.get_field(this, "storeManagementRoles"), "add_1", [jr.get_field(l_basic_user_role_factory, "PRODUCTMANAGER")])
        jr.call(jr.get_field(this, "storeManagementRoles"), "add_1", [jr.get_field(l_basic_user_role_factory, "REVIEWER")])
        jr.call(jr.get_field(this, "storeManagementRoles"), "add_1", [jr.get_field(l_basic_user_role_factory, "SHIPPING")])
        jr.call(jr.get_field(this, "productManagementRoles"), "add_1", [jr.get_field(l_basic_user_role_factory, "ADMINISTRATOR")])
        jr.call(jr.get_field(this, "productManagementRoles"), "add_1", [jr.get_field(l_basic_user_role_factory, "STOREMANAGER")])
        jr.call(jr.get_field(this, "productManagementRoles"), "add_1", [jr.get_field(l_basic_user_role_factory, "PRODUCTMANAGER")])
        jr.call(jr.get_field(this, "reviewManagementRoles"), "add_1", [jr.get_field(l_basic_user_role_factory, "ADMINISTRATOR")])
        jr.call(jr.get_field(this, "reviewManagementRoles"), "add_1", [jr.get_field(l_basic_user_role_factory, "STOREMANAGER")])
        jr.call(jr.get_field(this, "reviewManagementRoles"), "add_1", [jr.get_field(l_basic_user_role_factory, "REVIEWER")])
        jr.call(jr.get_field(this, "customerManagementRoles"), "add_1", [jr.get_field(l_basic_user_role_factory, "ADMINISTRATOR")])
        jr.call(jr.get_field(this, "customerManagementRoles"), "add_1", [jr.get_field(l_basic_user_role_factory, "STOREMANAGER")])
        jr.call(jr.get_field(this, "customerManagementRoles"), "add_1", [jr.get_field(l_basic_user_role_factory, "CUSTOMERMANAGER")])
        jr.call(jr.get_field(this, "workflowManagementRoles"), "add_1", [jr.get_field(l_basic_user_role_factory, "ADMINISTRATOR")])
        jr.call(jr.get_field(this, "workflowManagementRoles"), "add_1", [jr.get_field(l_basic_user_role_factory, "STOREMANAGER")])
        jr.call(jr.get_field(this, "workflowManagementRoles"), "add_1", [jr.get_field(l_basic_user_role_factory, "WORKFLOWEDITOR")])
        jr.call(jr.get_field(this, "orderManagementRoles"), "add_1", [jr.get_field(l_basic_user_role_factory, "ADMINISTRATOR")])
        jr.call(jr.get_field(this, "orderManagementRoles"), "add_1", [jr.get_field(l_basic_user_role_factory, "STOREMANAGER")])
        jr.call(jr.get_field(this, "adjusterManagementRoles"), "add_1", [jr.get_field(l_basic_user_role_factory, "ADMINISTRATOR")])
        jr.call(jr.get_field(this, "adjusterManagementRoles"), "add_1", [jr.get_field(l_basic_user_role_factory, "STOREMANAGER")])
        jr.call(jr.get_field(this, "adjusterManagementRoles"), "add_1", [jr.get_field(l_basic_user_role_factory, "ADJUSTER")])
        jr.call(jr.get_field(this, "shippingManagementRoles"), "add_1", [jr.get_field(l_basic_user_role_factory, "ADMINISTRATOR")])
        jr.call(jr.get_field(this, "shippingManagementRoles"), "add_1", [jr.get_field(l_basic_user_role_factory, "STOREMANAGER")])
        jr.call(jr.get_field(this, "shippingManagementRoles"), "add_1", [jr.get_field(l_basic_user_role_factory, "SHIPPING")])
        jr.call(jr.get_field(this, "webManagementRoles"), "add_1", [jr.get_field(l_basic_user_role_factory, "ADMINISTRATOR")])
        jr.call(jr.get_field(this, "webManagementRoles"), "add_1", [jr.get_field(l_basic_user_role_factory, "STOREMANAGER")])
        jr.call(jr.get_field(this, "webManagementRoles"), "add_1", [jr.get_field(l_basic_user_role_factory, "WEBMANAGER")])
        jr.call(jr.get_field(this, "webManagementRoles"), "add_1", [jr.get_field(l_basic_user_role_factory, "WORKFLOWEDITOR")])
        jr.call(jr.get_field(this, "webManagementRoles"), "add_1", [jr.get_field(l_basic_user_role_factory, "VIEWEDITOR")])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AdminRoleFactory",
        "org.allbinary.business.user.role.AdminRoleFactory",
        "Object",
        [],
        False,
        [#("adminRoles", jr.JNull), #("storeAdminRoles", jr.JNull), #("storeManagementRoles", jr.JNull), #("productManagementRoles", jr.JNull), #("reviewManagementRoles", jr.JNull), #("customerManagementRoles", jr.JNull), #("workflowManagementRoles", jr.JNull), #("orderManagementRoles", jr.JNull), #("adjusterManagementRoles", jr.JNull), #("shippingManagementRoles", jr.JNull), #("webManagementRoles", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("getProductManagementRoles_0", [], False, c1_m15__getproductmanagementroles), 
            jr.Method("getAdminRoles_0", [], False, c1_m16__getadminroles), 
            jr.Method("getStoreAdminRoles_0", [], False, c1_m17__getstoreadminroles), 
            jr.Method("getStoreManagementRoles_0", [], False, c1_m18__getstoremanagementroles), 
            jr.Method("getReviewManagementRoles_0", [], False, c1_m19__getreviewmanagementroles), 
            jr.Method("getCustomerManagementRoles_0", [], False, c1_m20__getcustomermanagementroles), 
            jr.Method("getWorkflowManagementRoles_0", [], False, c1_m21__getworkflowmanagementroles), 
            jr.Method("getWebManagementRoles_0", [], False, c1_m22__getwebmanagementroles), 
            jr.Method("getShippingManagementRoles_0", [], False, c1_m23__getshippingmanagementroles), 
            jr.Method("getAdjusterManagementRoles_0", [], False, c1_m24__getadjustermanagementroles), 
            jr.Method("getOrderManagementRoles_0", [], False, c1_m25__getordermanagementroles), 
            jr.Method("jinit_0", [], False, c1_jinit14)],
        c1_jfields,
        c1_jclinit,
    )
}

