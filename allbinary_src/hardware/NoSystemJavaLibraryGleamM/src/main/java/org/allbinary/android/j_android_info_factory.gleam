// Generated Code Do Not Modify
// package org.allbinary.android
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AndroidInfoFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "version", jr.as_i(jr.JInt(8)))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("AndroidInfoFactory", "instance", jr.new("AndroidInfoFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("AndroidInfoFactory", "instance")
}

fn c1_m4__getversion(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "version"))
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AndroidInfoFactory",
        "org.allbinary.android.AndroidInfoFactory",
        "Object",
        [],
        False,
        [#("version", jr.JInt(0))],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("getVersion_0", [], False, c1_m4__getversion), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

