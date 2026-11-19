// Generated Code Do Not Modify
// package org.allbinary.graphics.color
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BasicColorCacheFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "hashtable", jr.call(jr.call_static("StdUtil", "getInstance_0", []), "createHashtable_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("BasicColorCacheFactory", "instance", jr.new("BasicColorCacheFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("BasicColorCacheFactory", "instance")
}

fn c1_m5__add(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_basic_default_color] = jargs
        jr.call(jr.get_field(this, "hashtable"), "put_2", [jr.new("Integer", [jr.call(l_basic_default_color, "intValue_0", [])]), l_basic_default_color])
    jr.JNull
}

fn c1_m6__getandorcreate(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_integer] = jargs
        let l_basic_color = jr.cell(jr.call(jr.get_field(this, "hashtable"), "get_1", [l_integer]))
        case jr.truth(jr.eq(jr.get(l_basic_color), jr.JNull)) {
            True -> {
            jr.set(l_basic_color, jr.call(jr.call_static("BasicColorFactory", "getInstance_0", []), "createInstance_1", [jr.call(l_integer, "intValue_0", [])]))
            jr.call(jr.get_field(this, "hashtable"), "put_2", [l_integer, jr.get(l_basic_color)])
            Nil
        }
            False -> Nil
        }
    jr.get(l_basic_color)
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "BasicColorCacheFactory",
        "org.allbinary.graphics.color.BasicColorCacheFactory",
        "Object",
        [],
        False,
        [#("hashtable", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("add_1", ["BasicColor"], False, c1_m5__add), 
            jr.Method("getAndOrCreate_1", ["Integer"], False, c1_m6__getandorcreate), 
            jr.Method("jinit_0", [], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}

