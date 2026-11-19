// Generated Code Do Not Modify
// package org.allbinary.business.user.role
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BasicUserRoleFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "INACTIVITYTIMEOUT", jr.as_j(jr.JLong(360000000)))
    jr.set_field(this, "CUSTOMERTIMEOUT", jr.as_j(jr.JLong(360000000)))
    jr.set_field(this, "CUSTOMERMAXSESSIONTIME", jr.as_j(jr.JLong(360000000)))
    jr.set_field(this, "MAXSESSIONTIME", jr.as_j(jr.JLong(360000000)))
    jr.set_field(this, "INSTALLER", jr.new("BasicUserRole", [jr.JStr("Installer"), jr.JInt(16), jr.get_field(this, "MAXSESSIONTIME"), jr.get_field(this, "INACTIVITYTIMEOUT")]))
    jr.set_field(this, "ADMINISTRATOR", jr.new("BasicUserRole", [jr.JStr("Administrator"), jr.JInt(0), jr.get_field(this, "MAXSESSIONTIME"), jr.get_field(this, "INACTIVITYTIMEOUT")]))
    jr.set_field(this, "CUSTOMER", jr.new("BasicUserRole", [jr.JStr("CustomerUser"), jr.JStr("Customer User"), jr.JInt(1), jr.get_field(this, "CUSTOMERTIMEOUT"), jr.get_field(this, "CUSTOMERMAXSESSIONTIME")]))
    jr.set_field(this, "SUBSCRIBERCUSTOMER", jr.new("BasicUserRole", [jr.JStr("SubscriberUser"), jr.JStr("Subscriber User"), jr.JInt(2), jr.get_field(this, "CUSTOMERTIMEOUT"), jr.get_field(this, "CUSTOMERMAXSESSIONTIME")]))
    jr.set_field(this, "WHOLESALECUSTOMER", jr.new("BasicUserRole", [jr.JStr("WholesaleUser"), jr.JStr("Wholesale User"), jr.JInt(3), jr.get_field(this, "CUSTOMERTIMEOUT"), jr.get_field(this, "CUSTOMERMAXSESSIONTIME")]))
    jr.set_field(this, "STOREMANAGER", jr.new("BasicUserRole", [jr.JStr("StoreManager"), jr.JStr("Store Manager"), jr.JInt(4), jr.get_field(this, "MAXSESSIONTIME"), jr.get_field(this, "INACTIVITYTIMEOUT")]))
    jr.set_field(this, "PRODUCTMANAGER", jr.new("BasicUserRole", [jr.JStr("ProductManager"), jr.JStr("Product Manager"), jr.JInt(5), jr.get_field(this, "MAXSESSIONTIME"), jr.get_field(this, "INACTIVITYTIMEOUT")]))
    jr.set_field(this, "CUSTOMERMANAGER", jr.new("BasicUserRole", [jr.JStr("UserManager"), jr.JStr("User Manager"), jr.JInt(6), jr.get_field(this, "MAXSESSIONTIME"), jr.get_field(this, "INACTIVITYTIMEOUT")]))
    jr.set_field(this, "PAYMENTMANAGER", jr.new("BasicUserRole", [jr.JStr("PaymentManager"), jr.JStr("Payment Manager"), jr.JInt(7), jr.get_field(this, "MAXSESSIONTIME"), jr.get_field(this, "INACTIVITYTIMEOUT")]))
    jr.set_field(this, "ORDERMANAGER", jr.new("BasicUserRole", [jr.JStr("OrderManager"), jr.JStr("Order Manager"), jr.JInt(8), jr.get_field(this, "MAXSESSIONTIME"), jr.get_field(this, "INACTIVITYTIMEOUT")]))
    jr.set_field(this, "WEBMANAGER", jr.new("BasicUserRole", [jr.JStr("WebManager"), jr.JStr("Web Manager"), jr.JInt(9), jr.get_field(this, "MAXSESSIONTIME"), jr.get_field(this, "INACTIVITYTIMEOUT")]))
    jr.set_field(this, "REVIEWER", jr.new("BasicUserRole", [jr.JStr("Reviewer"), jr.JInt(10), jr.get_field(this, "MAXSESSIONTIME"), jr.get_field(this, "INACTIVITYTIMEOUT")]))
    jr.set_field(this, "SHIPPING", jr.new("BasicUserRole", [jr.JStr("Shipping"), jr.JInt(11), jr.get_field(this, "MAXSESSIONTIME"), jr.get_field(this, "INACTIVITYTIMEOUT")]))
    jr.set_field(this, "ADJUSTER", jr.new("BasicUserRole", [jr.JStr("Adjuster"), jr.JInt(12), jr.get_field(this, "MAXSESSIONTIME"), jr.get_field(this, "INACTIVITYTIMEOUT")]))
    jr.set_field(this, "WORKFLOWEDITOR", jr.new("BasicUserRole", [jr.JStr("WorkFlowEditor"), jr.JStr("WorkFlow Editor"), jr.JInt(13), jr.get_field(this, "MAXSESSIONTIME"), jr.get_field(this, "INACTIVITYTIMEOUT")]))
    jr.set_field(this, "WIZARD", jr.new("BasicUserRole", [jr.JStr("WizardUser"), jr.JStr("Wizard User"), jr.JInt(14), jr.get_field(this, "MAXSESSIONTIME"), jr.get_field(this, "INACTIVITYTIMEOUT")]))
    jr.set_field(this, "VIEWEDITOR", jr.new("BasicUserRole", [jr.JStr("ViewEditor"), jr.JStr("View Editor"), jr.JInt(15), jr.get_field(this, "MAXSESSIONTIME"), jr.get_field(this, "INACTIVITYTIMEOUT")]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("BasicUserRoleFactory", "instance", jr.new("BasicUserRoleFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("BasicUserRoleFactory", "instance")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "BasicUserRoleFactory",
        "org.allbinary.business.user.role.BasicUserRoleFactory",
        "Object",
        [],
        False,
        [#("INACTIVITYTIMEOUT", jr.JLong(0)), #("CUSTOMERTIMEOUT", jr.JLong(0)), #("CUSTOMERMAXSESSIONTIME", jr.JLong(0)), #("MAXSESSIONTIME", jr.JLong(0)), #("INSTALLER", jr.JNull), #("ADMINISTRATOR", jr.JNull), #("CUSTOMER", jr.JNull), #("SUBSCRIBERCUSTOMER", jr.JNull), #("WHOLESALECUSTOMER", jr.JNull), #("STOREMANAGER", jr.JNull), #("PRODUCTMANAGER", jr.JNull), #("CUSTOMERMANAGER", jr.JNull), #("PAYMENTMANAGER", jr.JNull), #("ORDERMANAGER", jr.JNull), #("WEBMANAGER", jr.JNull), #("REVIEWER", jr.JNull), #("SHIPPING", jr.JNull), #("ADJUSTER", jr.JNull), #("WORKFLOWEDITOR", jr.JNull), #("WIZARD", jr.JNull), #("VIEWEDITOR", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

