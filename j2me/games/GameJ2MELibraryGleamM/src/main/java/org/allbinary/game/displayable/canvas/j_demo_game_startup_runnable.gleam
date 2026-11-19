// Generated Code Do Not Modify
// package org.allbinary.game.displayable.canvas
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class DemoGameStartupRunnable

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__run(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.try_catch(fn() {
            jr.call_inherited(this, "DemoGameStartupRunnable", "setRunning_1", [jr.JBool(True)])
            jr.call(jr.get_field(this, "demoCanvas"), "stopGameDemo_0", [])
            jr.call(jr.get_field(this, "demoCanvas"), "create_0", [])
            jr.call(jr.get_field(this, "demoCanvas"), "start_0", [])
            jr.call_inherited(this, "DemoGameStartupRunnable", "setRunning_1", [jr.JBool(False)])
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call_inherited(this, "DemoGameStartupRunnable", "setRunning_1", [jr.JBool(False)])
            let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(l_common_strings, "EXCEPTION"), this, jr.get_field(l_common_strings, "RUN"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_m6__gettype(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_static("DemoGameStartupRunnable", "TYPE"))
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_demo_canvas] = jargs
    jr.super_init("ABRunnable", this, [])
    c1_jfields(this)
        jr.set_field(this, "demoCanvas", l_demo_canvas)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "DemoGameStartupRunnable",
        "org.allbinary.game.displayable.canvas.DemoGameStartupRunnable",
        "ABRunnable",
        [],
        False,
        [#("logUtil", jr.JNull), #("demoCanvas", jr.JNull)],
        [#("TYPE", jr.as_i(jr.JInt(4)))],
        [
            jr.Method("run_0", [], False, c1_m4__run), 
            jr.Method("getType_0", [], False, c1_m6__gettype), 
            jr.Method("jinit_1", ["DemoCanvas"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

