// Generated Code Do Not Modify
// package javax.microedition.lcdui
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class NullImage

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("NullImage", "NULL_IMAGE_ARRAY", jr.new_array("L", 1, [jr.JInt(0)]))
    jr.set_static("NullImage", "NULL_IMAGE", jr.new("Image", []))
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "NullImage",
        "javax.microedition.lcdui.NullImage",
        "Object",
        [],
        False,
        [],
        [#("NULL_IMAGE_ARRAY", jr.JNull), #("NULL_IMAGE", jr.JNull)],
        [
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

