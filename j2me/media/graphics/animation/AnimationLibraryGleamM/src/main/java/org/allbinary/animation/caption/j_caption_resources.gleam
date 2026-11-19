// Generated Code Do Not Modify
// package org.allbinary.animation.caption
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CaptionResources

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CaptionResources",
        "org.allbinary.animation.caption.CaptionResources",
        "Object",
        [],
        False,
        [],
        [#("RESOURCE", jr.JStr("/character_message_bubbled_box.png"))],
        [
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

