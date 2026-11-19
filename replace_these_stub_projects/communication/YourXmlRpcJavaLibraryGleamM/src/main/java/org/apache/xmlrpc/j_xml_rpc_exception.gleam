// Generated Code Do Not Modify
// package org.apache.xmlrpc
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class XmlRpcException

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_code, l_message] = jargs
    let l_code = jr.as_i(l_code)
        jr.super_init("Exception", this, [l_message])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "XmlRpcException",
        "org.apache.xmlrpc.XmlRpcException",
        "Exception",
        [],
        False,
        [],
        [],
        [
            jr.Method("jinit_2", ["int", "String"], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}

