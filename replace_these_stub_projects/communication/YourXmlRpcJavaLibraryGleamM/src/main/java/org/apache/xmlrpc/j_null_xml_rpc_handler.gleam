// Generated Code Do Not Modify
// package org.apache.xmlrpc
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class NullXmlRpcHandler

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("NullXmlRpcHandler", "NULL_XML_RPC_HANDLER", jr.new("NullXmlRpcHandler", []))
    jr.JNull
}

fn c1_m2__execute(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_method, l_params] = jargs
    jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "NullXmlRpcHandler",
        "org.apache.xmlrpc.NullXmlRpcHandler",
        "Object",
        ["XmlRpcHandler"],
        False,
        [],
        [#("NULL_XML_RPC_HANDLER", jr.JNull)],
        [
            jr.Method("execute_2", ["String", "BasicArrayList"], False, c1_m2__execute), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

