// Generated Code Do Not Modify
// package org.allbinary.logic.system.loader
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class WebappClassLoaderInfo

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("WebappClassLoaderInfo", "classLoader", jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))
    jr.JNull
}

fn c1_m3__setloader(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_class_loader] = jargs
        jr.set_static("WebappClassLoaderInfo", "classLoader", l_class_loader)
    jr.JNull
}

fn c1_m4__getloader(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("WebappClassLoaderInfo", "classLoader")
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "WebappClassLoaderInfo",
        "org.allbinary.logic.system.loader.WebappClassLoaderInfo",
        "Object",
        [],
        False,
        [],
        [#("classLoader", jr.JNull)],
        [
            jr.Method("setLoader_1", ["ClassLoader"], True, c1_m3__setloader), 
            jr.Method("getLoader_0", [], True, c1_m4__getloader), 
            jr.Method("jinit_0", [], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

