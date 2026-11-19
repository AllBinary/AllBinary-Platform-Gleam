// Generated Code Do Not Modify
// package org.allbinary.logic.util.cache
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BasicArrayListResetablePool

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__clear(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m3__remove(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_key] = jargs
    jr.method(fn() {
            let l_size = jr.as_i(jr.call(jr.get_inherited(this, "BasicArrayListResetablePool", "buffers"), "size_0", []))
            case jr.truth(jr.gt(l_size, jr.JInt(0))) {
            True -> {
            jr.ret(jr.call(jr.get_inherited(this, "BasicArrayListResetablePool", "buffers"), "removeAt_1", [jr.sub(l_size, jr.JInt(1))]))
            Nil
        }
            False -> {
            jr.ret(jr.call(jr.get_inherited(this, "BasicArrayListResetablePool", "cacheableInterfaceFactoryInterface"), "getInstance_1", [l_key]))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_cacheable_interface_factory_interface] = jargs
        jr.super_init("AbstractArrayListPool", this, [l_cacheable_interface_factory_interface])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "BasicArrayListResetablePool",
        "org.allbinary.logic.util.cache.BasicArrayListResetablePool",
        "AbstractArrayListPool",
        [],
        False,
        [],
        [],
        [
            jr.Method("clear_0", [], False, c1_m2__clear), 
            jr.Method("remove_1", ["Object"], False, c1_m3__remove), 
            jr.Method("jinit_1", ["CacheableInterfaceFactoryInterface"], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}

