// Generated Code Do Not Modify
// package org.allbinary
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class DisposalUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("DisposalUtil", "instance", jr.new("DisposalUtil", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("DisposalUtil", "instance")
}

fn c1_m3__disposeimage(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image] = jargs
    jr.JNull
}

fn c1_m4__disposeresource(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_resource] = jargs
        case jr.truth(jr.not(jr.call(l_resource, "isDisposed_0", []))) {
            True -> {
            jr.call(l_resource, "dispose_0", [])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "DisposalUtil",
        "org.allbinary.DisposalUtil",
        "Object",
        [],
        False,
        [],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("disposeImage_1", ["Image"], False, c1_m3__disposeimage), 
            jr.Method("disposeResource_1", ["Resource"], False, c1_m4__disposeresource), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

