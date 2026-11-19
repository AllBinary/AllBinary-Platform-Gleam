// Generated Code Do Not Modify
// package org.allbinary.game.displayable
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AlwaysRepaintBehavior

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "NAME_AlwaysRepaintBehavior", jr.JStr("AlwaysRepaintBehavior"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("AlwaysRepaintBehavior", "instanceC", jr.new("AlwaysRepaintBehavior", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("AlwaysRepaintBehavior", "instanceC")
}

fn c1_m4__repaint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_canvas] = jargs
        let l_features = jr.call_static("Features", "getInstance_0", [])
        let l_open_g_l_feature_factory = jr.call_static("OpenGLFeatureFactory", "getInstance_0", [])
        case jr.truth(jr.call(l_features, "isFeature_1", [jr.get_field(l_open_g_l_feature_factory, "OPENGL")])) {
            True -> {
            jr.call(jr.call_static("DisplayInfoSingleton", "getInstance_0", []), "process_0", [])
            Nil
        }
            False -> {
            let l_thread = jr.new("Thread", [jr.new("RepaintRunnable", [l_canvas]), jr.get_field(this, "NAME_AlwaysRepaintBehavior")])
            jr.call(l_thread, "start_0", [])
            Nil
        }
        }
    jr.JNull
}

fn c1_m5__onchangerepaint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_canvas] = jargs
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("RepaintBehavior", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AlwaysRepaintBehavior",
        "org.allbinary.game.displayable.AlwaysRepaintBehavior",
        "RepaintBehavior",
        [],
        False,
        [#("NAME_AlwaysRepaintBehavior", jr.JNull)],
        [#("instanceC", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("repaint_1", ["Canvas"], False, c1_m4__repaint), 
            jr.Method("onChangeRepaint_1", ["Canvas"], False, c1_m5__onchangerepaint), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

