// Generated Code Do Not Modify
// package org.allbinary.logic.io.path
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AbFilePath

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_a_path] = jargs
        jr.super_init("AbPath", this, [jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING")])
        c1_jfields(this)
        let l_path_data = jr.call_static("AbPathData", "getInstance_0", [])
        let l_ab_path_util = jr.call_static("PathUtil", "getInstance_0", [])
        jr.set_inherited(this, "AbFilePath", "schema", jr.call_inherited(this, "AbFilePath", "getSchema_1", [l_a_path]))
        jr.call_inherited(this, "AbFilePath", "setName_1", [jr.call(l_path_data, "getNameFromPath_1", [l_a_path])])
        jr.call_inherited(this, "AbFilePath", "setPath_1", [jr.call(l_ab_path_util, "adjust_1", [jr.call_inherited(this, "AbFilePath", "getPathFromPath_1", [jr.call(jr.call(l_ab_path_util, "removeNameFromPath_1", [l_a_path]), "toString_0", [])])])])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AbFilePath",
        "org.allbinary.logic.io.path.AbFilePath",
        "AbPath",
        [],
        False,
        [],
        [],
        [
            jr.Method("jinit_1", ["String"], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}

