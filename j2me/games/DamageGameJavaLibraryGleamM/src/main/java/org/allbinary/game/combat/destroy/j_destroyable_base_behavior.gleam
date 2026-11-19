// Generated Code Do Not Modify
// package org.allbinary.game.combat.destroy
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class DestroyableBaseBehavior

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("DestroyableBaseBehavior", "instance", jr.new("DestroyableBaseBehavior", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("DestroyableBaseBehavior", "instance")
}

fn c1_m3__getname(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call(jr.call_inherited(this, "DestroyableBaseBehavior", "getClass_0", []), "getName_0", [])
}

fn c1_m4__isdestroyed(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.throw(jr.new("Exception", [jr.get_field(jr.call_static("CommonStrings", "getInstance_0", []), "NOT_IMPLEMENTED")]))
    jr.JNull
}

fn c1_m5__setdestroyed(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_destroyed] = jargs
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "DestroyableBaseBehavior",
        "org.allbinary.game.combat.destroy.DestroyableBaseBehavior",
        "Object",
        ["DestroyableInterface"],
        False,
        [],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("getName_0", [], False, c1_m3__getname), 
            jr.Method("isDestroyed_0", [], False, c1_m4__isdestroyed), 
            jr.Method("setDestroyed_1", ["boolean"], False, c1_m5__setdestroyed), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

