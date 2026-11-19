// Generated Code Do Not Modify
// package org.apache.xmlrpc
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class XmlRpcClient

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__geturl(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "url")
}

fn c1_m4__setbasicauthentication(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_user, l_password] = jargs
    jr.JNull
}

fn c1_m5__execute(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_method, l_params] = jargs
    jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT")
}

fn c1_m6__executewithcrypt(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_method, l_params, l_crypt_interface] = jargs
    jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT")
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_url] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "url", jr.new("URL", [l_url]))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "XmlRpcClient",
        "org.apache.xmlrpc.XmlRpcClient",
        "Object",
        ["XmlRpcHandler"],
        False,
        [#("url", jr.JNull)],
        [],
        [
            jr.Method("getURL_0", [], False, c1_m3__geturl), 
            jr.Method("setBasicAuthentication_2", ["String", "String"], False, c1_m4__setbasicauthentication), 
            jr.Method("execute_2", ["String", "BasicArrayList"], False, c1_m5__execute), 
            jr.Method("executeWithCrypt_3", ["String", "BasicArrayList", "CryptInterface"], False, c1_m6__executewithcrypt), 
            jr.Method("jinit_1", ["String"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

