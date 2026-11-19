// Generated Code Do Not Modify
// package org.allbinary.game.displayable
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class RepaintRunnable

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__run(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.try_catch(fn() {
            jr.call(jr.get_field(this, "canvas"), "repaint_0", [])
            jr.call(jr.call_static("DisplayInfoSingleton", "getInstance_0", []), "process_0", [])
            Nil
        }, [#(["Exception"], fn(l_e) { {
            let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
            let l_log_util = jr.call_static("LogUtil", "getInstance_0", [])
            jr.call(l_log_util, "put_4", [jr.get_field(l_common_strings, "EXCEPTION"), this, jr.get_field(l_common_strings, "RUN"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_canvas] = jargs
    jr.super_init("ARunnable", this, [])
    c1_jfields(this)
        jr.set_field(this, "canvas", l_canvas)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "RepaintRunnable",
        "org.allbinary.game.displayable.RepaintRunnable",
        "ARunnable",
        [],
        False,
        [#("canvas", jr.JNull)],
        [],
        [
            jr.Method("run_0", [], False, c1_m3__run), 
            jr.Method("jinit_1", ["Canvas"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

