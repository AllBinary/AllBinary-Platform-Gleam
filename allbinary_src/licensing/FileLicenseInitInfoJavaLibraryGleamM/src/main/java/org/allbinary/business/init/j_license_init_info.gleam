// Generated Code Do Not Modify
// package org.allbinary.business.init
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class LicenseInitInfo

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "id", jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"))
    jr.set_field(this, "serverVector", jr.new("BasicArrayListD", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__getlicenseid(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "id")
}

fn c1_m5__getserver(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_index] = jargs
    let l_index = jr.as_i(l_index)
    jr.aget(jr.get_field(jr.get_field(this, "serverVector"), "objectArray"), l_index)
}

fn c1_m6__getnumberofservers(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.call(jr.get_field(this, "serverVector"), "size_0", []))
}

fn c1_m7__setlicenseid(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_value] = jargs
        jr.set_field(this, "id", l_value)
    jr.JNull
}

fn c1_m8__clearservers(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.set_field(this, "serverVector", jr.new("BasicArrayListD", []))
    jr.JNull
}

fn c1_m9__setserver(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_value, l_index] = jargs
    let l_index = jr.as_i(l_index)
        jr.call(jr.get_field(this, "serverVector"), "addAt_2", [l_index, l_value])
    jr.JNull
}

fn c1_m10__addserver(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_value] = jargs
        jr.call(jr.get_field(this, "serverVector"), "add_1", [l_value])
    jr.JNull
}

fn c1_m11__getserverlist(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "serverVector")
}

fn c1_m12__setserverlist(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_servers] = jargs
        case jr.truth(jr.eq(jr.call_static("DebugFactory", "getInstance_0", []), jr.call_static("NoDebug", "getInstance_0", []))) {
            True -> {
            jr.set_field(this, "serverVector", l_servers)
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "LicenseInitInfo",
        "org.allbinary.business.init.LicenseInitInfo",
        "Object",
        [],
        False,
        [#("id", jr.JNull), #("serverVector", jr.JNull)],
        [],
        [
            jr.Method("getLicenseId_0", [], False, c1_m4__getlicenseid), 
            jr.Method("getServer_1", ["int"], False, c1_m5__getserver), 
            jr.Method("getNumberOfServers_0", [], False, c1_m6__getnumberofservers), 
            jr.Method("setLicenseId_1", ["String"], False, c1_m7__setlicenseid), 
            jr.Method("clearServers_0", [], False, c1_m8__clearservers), 
            jr.Method("setServer_2", ["String", "int"], False, c1_m9__setserver), 
            jr.Method("addServer_1", ["String"], False, c1_m10__addserver), 
            jr.Method("getServerList_0", [], False, c1_m11__getserverlist), 
            jr.Method("setServerList_1", ["BasicArrayList"], False, c1_m12__setserverlist), 
            jr.Method("jinit_0", [], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

