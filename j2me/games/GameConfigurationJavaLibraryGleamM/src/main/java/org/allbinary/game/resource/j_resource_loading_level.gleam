// Generated Code Do Not Modify
// package org.allbinary.game.resource
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ResourceLoadingLevel

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__getlevel(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "level"))
}

fn c1_m5__getname(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "name")
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_name, l_level] = jargs
    let l_level = jr.as_i(l_level)
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "name", l_name)
        jr.set_field(this, "level", jr.as_i(l_level))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ResourceLoadingLevel",
        "org.allbinary.game.resource.ResourceLoadingLevel",
        "Object",
        [],
        False,
        [#("name", jr.JNull), #("level", jr.JInt(0))],
        [],
        [
            jr.Method("getLevel_0", [], False, c1_m4__getlevel), 
            jr.Method("getName_0", [], False, c1_m5__getname), 
            jr.Method("jinit_2", ["String", "int"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

