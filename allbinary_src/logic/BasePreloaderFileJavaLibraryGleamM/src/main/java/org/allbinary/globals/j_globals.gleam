// Generated Code Do Not Modify
// package org.allbinary.globals
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class Globals

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("Globals", "instance", jr.new("Globals", []))
    jr.JNull
}

fn c1_m3__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("Globals", "instance")
}

fn c1_m5__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_class_loader, l_path_string] = jargs
        let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
        let l_app_url_globals = jr.new("AppUrlGlobals", [])
        jr.call(l_app_url_globals, "setWebappPath_1", [l_path_string])
        jr.call_static("URLGLOBALS", "init_1", [l_app_url_globals])
        jr.call_static("WebappClassLoaderInfo", "setLoader_1", [l_class_loader])
        let l_string_buffer = jr.new("StringMaker", [])
        jr.call(l_string_buffer, "append_1", [jr.JStr("Setting Up AllBinary System Configuration Args: ")])
        jr.call(l_string_buffer, "append_1", [l_path_string])
        jr.call(l_string_buffer, "append_1", [jr.JStr(" ClassLoader: ")])
        jr.call(l_string_buffer, "append_1", [jr.call(jr.call(l_class_loader, "getClass_0", []), "getName_0", [])])
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(l_string_buffer, "toString_0", []), this, jr.get_field(l_common_strings, "INIT")])
        let l_string_validation_util = jr.call_static("StringValidationUtil", "getInstance_0", [])
        case jr.truth(jr.call(l_string_validation_util, "isEmpty_1", [l_path_string])) {
            True -> {
            jr.call(l_string_buffer, "delete_2", [jr.JInt(0), jr.call(l_string_buffer, "length_0", [])])
            jr.call(l_string_buffer, "append_1", [jr.JStr("No Path Provided. Using Process Path: ")])
            jr.call(l_string_buffer, "append_1", [l_path_string])
            jr.call(l_string_buffer, "append_1", [jr.get_field(jr.call_static("CommonSeps", "getInstance_0", []), "SPACE")])
            jr.call(l_string_buffer, "append_1", [jr.get_field(jr.call_static("CommonSeps", "getInstance_0", []), "EQUALS")])
            jr.call(l_string_buffer, "append_1", [jr.get_field(jr.call_static("CommonSeps", "getInstance_0", []), "SPACE")])
            jr.call(l_string_buffer, "append_1", [jr.call_static("URLGLOBALS", "getWebappPath_0", [])])
            jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(l_string_buffer, "toString_0", []), this, jr.get_field(l_common_strings, "INIT")])
            Nil
        }
            False -> Nil
        }
        jr.call(l_string_buffer, "delete_2", [jr.JInt(0), jr.call(l_string_buffer, "length_0", [])])
        jr.call(l_string_buffer, "append_1", [jr.JStr("Webapp Path Set To: ")])
        jr.call(l_string_buffer, "append_1", [jr.call_static("URLGLOBALS", "getWebappPath_0", [])])
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(l_string_buffer, "toString_0", []), this, jr.get_field(l_common_strings, "INIT")])
    jr.JNull
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "Globals",
        "org.allbinary.globals.Globals",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m3__getinstance), 
            jr.Method("init_2", ["ClassLoader", "String"], False, c1_m5__init), 
            jr.Method("jinit_0", [], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}

