// Generated Code Do Not Modify
// package org.allbinary.midlet
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ExitRunnable

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "commonStrings", jr.call_static("CommonStrings", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m7__run(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.try_catch(fn() {
            jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.get_field(jr.get_field(this, "commonStrings"), "START_RUNNABLE"), this, jr.get_field(jr.get_field(this, "commonStrings"), "RUN")])
            jr.call(jr.get_field(this, "midlet"), "destroyAppInRunnable_2", [jr.JBool(False), jr.get_field(this, "isProgress")])
            jr.call(jr.get_field(this, "midlet"), "setDisplay_1", [jr.get_static("NullCanvas", "NULL_CANVAS")])
            jr.call(jr.get_field(this, "midlet"), "notifyDestroyed_0", [])
            jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.get_field(jr.get_field(this, "commonStrings"), "END_RUNNABLE"), this, jr.get_field(jr.get_field(this, "commonStrings"), "RUN")])
            jr.call(jr.get_field(this, "processor"), "process_0", [])
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(jr.get_field(this, "commonStrings"), "EXCEPTION"), this, jr.get_field(jr.get_field(this, "commonStrings"), "RUN"), l_e])
            jr.try_catch(fn() {
                jr.call(jr.get_field(this, "processor"), "process_0", [])
                Nil
            }, [#(["Exception"], fn(l_e2) { {
                jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(jr.get_field(this, "commonStrings"), "EXCEPTION"), this, jr.get_field(jr.get_field(this, "commonStrings"), "RUN"), l_e])
                Nil
            } })], fn() { Nil })
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_jinit6(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_midlet, l_processor, l_is_progress] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "midlet", l_midlet)
        jr.set_field(this, "isProgress", l_is_progress)
        jr.set_field(this, "processor", l_processor)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ExitRunnable",
        "org.allbinary.midlet.ExitRunnable",
        "Object",
        ["Runnable"],
        False,
        [#("logUtil", jr.JNull), #("commonStrings", jr.JNull), #("midlet", jr.JNull), #("processor", jr.JNull), #("isProgress", jr.JBool(False))],
        [],
        [
            jr.Method("run_0", [], False, c1_m7__run), 
            jr.Method("jinit_3", ["AllBinaryMidlet", "Processor", "boolean"], False, c1_jinit6)],
        c1_jfields,
        c1_jclinit,
    )
}

