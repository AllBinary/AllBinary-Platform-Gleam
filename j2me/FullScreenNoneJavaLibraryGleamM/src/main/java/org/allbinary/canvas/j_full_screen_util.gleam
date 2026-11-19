// Generated Code Do Not Modify
// package org.allbinary.canvas
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class FullScreenUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("FullScreenUtil", "instance", jr.new("FullScreenUtil", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("FullScreenUtil", "instance")
}

fn c1_m3__initonrun(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_full_screen_interface, l_command_listener] = jargs
        case jr.truth(jr.ne(l_command_listener, jr.JNull)) {
            True -> {
            jr.call(this, "init_1", [l_full_screen_interface])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m4__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_full_screen_interface] = jargs
    jr.JNull
}

fn c1_m5__isscreenchange(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_is_full_screen] = jargs
    jr.method(fn() {
            let l_main_feature_factory = jr.call_static("MainFeatureFactory", "getInstance_0", [])
            let l_features = jr.call_static("Features", "getInstance_0", [])
            case jr.truth(jr.ne(jr.call(l_features, "isFeature_1", [jr.get_field(l_main_feature_factory, "FULL_SCREEN")]), l_is_full_screen)) {
            True -> {
            jr.ret(jr.JBool(True))
            Nil
        }
            False -> Nil
        }
            jr.ret(jr.JBool(False))
        jr.JNull
    })
}

fn c1_m6__isscreenchangecanvas(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_full_screen_interface] = jargs
    jr.call(this, "isScreenChange_1", [jr.JBool(False)])
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "FullScreenUtil",
        "org.allbinary.canvas.FullScreenUtil",
        "Object",
        [],
        False,
        [],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("initOnRun_2", ["Canvas", "CommandListener"], False, c1_m3__initonrun), 
            jr.Method("init_1", ["Canvas"], False, c1_m4__init), 
            jr.Method("isScreenChange_1", ["boolean"], False, c1_m5__isscreenchange), 
            jr.Method("isScreenChangeCanvas_1", ["Canvas"], False, c1_m6__isscreenchangecanvas), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

