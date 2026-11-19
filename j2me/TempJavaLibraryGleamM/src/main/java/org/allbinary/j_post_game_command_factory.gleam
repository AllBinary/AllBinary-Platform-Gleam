// Generated Code Do Not Modify
// package org.allbinary
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class PostGameCommandFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("PostGameCommandFactory", "instance", jr.new("PostGameCommandFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.throw(jr.new("RuntimeException", []))
    jr.JNull
}

fn c1_m3__addcommands(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_canvas] = jargs
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "PostGameCommandFactory",
        "org.allbinary.PostGameCommandFactory",
        "Object",
        [],
        False,
        [],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("addCommands_1", ["Canvas"], False, c1_m3__addcommands), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

