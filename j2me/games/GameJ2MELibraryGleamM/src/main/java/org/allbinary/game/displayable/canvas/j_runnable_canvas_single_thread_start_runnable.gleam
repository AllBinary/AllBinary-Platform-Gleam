// Generated Code Do Not Modify
// package org.allbinary.game.displayable.canvas
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class RunnableCanvasSingleThreadStartRunnable

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__run(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.try_catch(fn() {
            jr.call(jr.get_field(this, "runnableCanvas"), "run_0", [])
            Nil
        }, [#(["Exception"], fn(l_e) { {
            let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(l_common_strings, "EXCEPTION"), this, jr.get_field(l_common_strings, "RUN"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_m5__processloopsleep(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "runnableCanvas"), "processLoopSleep_0", [])
    jr.JNull
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_demo_canvas] = jargs
    jr.super_init("GameRunnable", this, [])
    c1_jfields(this)
        jr.set_field(this, "runnableCanvas", l_demo_canvas)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "RunnableCanvasSingleThreadStartRunnable",
        "org.allbinary.game.displayable.canvas.RunnableCanvasSingleThreadStartRunnable",
        "GameRunnable",
        [],
        False,
        [#("logUtil", jr.JNull), #("runnableCanvas", jr.JNull)],
        [],
        [
            jr.Method("run_0", [], False, c1_m4__run), 
            jr.Method("processLoopSleep_0", [], False, c1_m5__processloopsleep), 
            jr.Method("jinit_1", ["RunnableCanvas"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

