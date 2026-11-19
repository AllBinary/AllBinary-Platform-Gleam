// Generated Code Do Not Modify
// package org.allbinary.game.resource
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ResourceLoadingLevelFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "LOAD_EARLY", jr.new("ResourceLoadingLevel", [jr.JStr("Load Early"), jr.get_static("Integer", "MAX_VALUE")]))
    jr.set_field(this, "LOAD_TOUCH", jr.new("ResourceLoadingLevel", [jr.JStr("Load Touch"), jr.sub(jr.get_static("Integer", "MAX_VALUE"), jr.JInt(1))]))
    jr.set_field(this, "LOAD_GAME", jr.new("ResourceLoadingLevel", [jr.JStr("Load Game"), jr.sub(jr.get_static("Integer", "MAX_VALUE"), jr.JInt(2))]))
    jr.set_field(this, "LEVEL", jr.new("ResourceLoadingLevel", [jr.JStr("Level"), jr.sub(jr.get_static("Integer", "MAX_VALUE"), jr.JInt(99))]))
    jr.set_field(this, "MAX_LEVEL", jr.new("ResourceLoadingLevel", [jr.JStr("Max Level"), jr.sub(jr.get_static("Integer", "MAX_VALUE"), jr.JInt(100))]))
    jr.set_field(this, "LOAD_ALL", jr.new("ResourceLoadingLevel", [jr.JStr("Load All"), jr.JInt(-1)]))
    jr.set_field(this, "RESOURCE_LOADING_LEVEL_ARRAY", jr.array_of("L", [jr.get_field(this, "LOAD_ALL"), jr.get_field(this, "MAX_LEVEL"), jr.get_field(this, "LEVEL"), jr.get_field(this, "LOAD_GAME"), jr.get_field(this, "LOAD_TOUCH"), jr.get_field(this, "LOAD_EARLY")]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("ResourceLoadingLevelFactory", "instance", jr.new("ResourceLoadingLevelFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("ResourceLoadingLevelFactory", "instance")
}

fn c1_m10__getlevelstring(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_level] = jargs
    let l_level = jr.as_i(l_level)
    jr.method(fn() {
            {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), jr.alen(jr.get_field(this, "RESOURCE_LOADING_LEVEL_ARRAY"))) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            case jr.truth(jr.eq(l_level, jr.call(jr.aget(jr.get_field(this, "RESOURCE_LOADING_LEVEL_ARRAY"), jr.get(l_index)), "getLevel_0", []))) {
                True -> {
                jr.ret(jr.call(jr.aget(jr.get_field(this, "RESOURCE_LOADING_LEVEL_ARRAY"), jr.get(l_index)), "getName_0", []))
                Nil
            }
                False -> Nil
            }
            Nil
        })
            Nil
        }
            jr.ret(jr.call_static("Integer", "toString_1", [l_level]))
        jr.JNull
    })
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ResourceLoadingLevelFactory",
        "org.allbinary.game.resource.ResourceLoadingLevelFactory",
        "Object",
        [],
        False,
        [#("LOAD_EARLY", jr.JNull), #("LOAD_TOUCH", jr.JNull), #("LOAD_GAME", jr.JNull), #("LEVEL", jr.JNull), #("MAX_LEVEL", jr.JNull), #("LOAD_ALL", jr.JNull), #("RESOURCE_LOADING_LEVEL_ARRAY", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("getLevelString_1", ["int"], False, c1_m10__getlevelstring), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

