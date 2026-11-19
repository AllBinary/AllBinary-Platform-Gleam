// Generated Code Do Not Modify
// package org.allbinary.globals
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class URLGLOBALS

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("URLGLOBALS", "urlGlobalsInterface", jr.get_static("AppUrlGlobals", "NULL_APP_URL_GLOBALS"))
    jr.JNull
}

fn c1_m2__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_url_globals_interface] = jargs
        jr.set_static("URLGLOBALS", "urlGlobalsInterface", l_url_globals_interface)
    jr.JNull
}

fn c1_m3__istestingmode(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call(jr.get_static("URLGLOBALS", "urlGlobalsInterface"), "isTestingMode_0", [])
}

fn c1_m4__getwebapppath(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call(jr.get_static("URLGLOBALS", "urlGlobalsInterface"), "getWebappPath_0", [])
}

fn c1_m5__gettesthtmlpath(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call(jr.get_static("URLGLOBALS", "urlGlobalsInterface"), "getTestHtmlPath_0", [])
}

fn c1_m6__getmainpath(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call(jr.get_static("URLGLOBALS", "urlGlobalsInterface"), "getMainPath_0", [])
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "URLGLOBALS",
        "org.allbinary.globals.URLGLOBALS",
        "Object",
        [],
        False,
        [],
        [#("urlGlobalsInterface", jr.JNull)],
        [
            jr.Method("init_1", ["UrlGlobalsInterface"], True, c1_m2__init), 
            jr.Method("isTestingMode_0", [], True, c1_m3__istestingmode), 
            jr.Method("getWebappPath_0", [], True, c1_m4__getwebapppath), 
            jr.Method("getTestHtmlPath_0", [], True, c1_m5__gettesthtmlpath), 
            jr.Method("getMainPath_0", [], True, c1_m6__getmainpath), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

