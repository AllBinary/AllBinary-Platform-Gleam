// Generated Code Do Not Modify
// package org.allbinary.globals
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AppUrlGlobals

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "path", jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("AppUrlGlobals", "NULL_APP_URL_GLOBALS", jr.new("AppUrlGlobals", []))
    jr.JNull
}

fn c1_m3__istestingmode(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JBool(False)
}

fn c1_m4__getwebapppath(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "path")
}

fn c1_m5__setwebapppath(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_path] = jargs
        jr.set_field(this, "path", l_path)
        case jr.truth(jr.not(case jr.truth(jr.call(jr.get_field(this, "path"), "endsWith_1", [jr.JStr("\\")])) { True -> jr.JBool(True) False -> jr.call(jr.get_field(this, "path"), "endsWith_1", [jr.JStr("/")]) })) {
            True -> {
            jr.set_field(this, "path", jr.concat(jr.get_field(this, "path"), jr.JStr("\\")))
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m6__gettesthtmlpath(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING")
}

fn c1_m7__getmainpath(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "path")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("UrlGlobalsInterface", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AppUrlGlobals",
        "org.allbinary.globals.AppUrlGlobals",
        "UrlGlobalsInterface",
        [],
        False,
        [#("path", jr.JNull)],
        [#("NULL_APP_URL_GLOBALS", jr.JNull)],
        [
            jr.Method("isTestingMode_0", [], False, c1_m3__istestingmode), 
            jr.Method("getWebappPath_0", [], False, c1_m4__getwebapppath), 
            jr.Method("setWebappPath_1", ["String"], False, c1_m5__setwebapppath), 
            jr.Method("getTestHtmlPath_0", [], False, c1_m6__gettesthtmlpath), 
            jr.Method("getMainPath_0", [], False, c1_m7__getmainpath), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

