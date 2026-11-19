// Generated Code Do Not Modify
// package org.allbinary.globals
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class UrlGlobalsInterface

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__getmainpath(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING")
}

fn c1_m2__gettesthtmlpath(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING")
}

fn c1_m3__getwebapppath(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING")
}

fn c1_m4__istestingmode(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JBool(False)
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "UrlGlobalsInterface",
        "org.allbinary.globals.UrlGlobalsInterface",
        "Object",
        [],
        False,
        [],
        [],
        [
            jr.Method("getMainPath_0", [], False, c1_m1__getmainpath), 
            jr.Method("getTestHtmlPath_0", [], False, c1_m2__gettesthtmlpath), 
            jr.Method("getWebappPath_0", [], False, c1_m3__getwebapppath), 
            jr.Method("isTestingMode_0", [], False, c1_m4__istestingmode), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

