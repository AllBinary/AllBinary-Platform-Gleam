// Generated Code Do Not Modify
// package org.allbinary.game.displayable.canvas
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CommandRunnable

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "commonStrings", jr.call_static("CommonStrings", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m6__run(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.try_catch(fn() {
            jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.get_field(jr.get_field(this, "commonStrings"), "START_RUNNABLE"), this, jr.get_field(jr.get_field(this, "commonStrings"), "RUN")])
            let l_canvas = jr.call(jr.get_field(this, "commandFormInputProcessor"), "getCanvas_0", [])
            let l_command_listener = jr.call(l_canvas, "getCustomCommandListener_0", [])
            jr.call(l_command_listener, "commandAction_2", [jr.get_field(this, "command"), l_canvas])
            jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.get_field(jr.get_field(this, "commonStrings"), "END_RUNNABLE"), this, jr.get_field(jr.get_field(this, "commonStrings"), "RUN")])
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(jr.get_field(this, "commonStrings"), "EXCEPTION"), this, jr.get_field(jr.get_field(this, "commonStrings"), "RUN"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_jinit5(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_command_form_input_processor, l_command] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "commandFormInputProcessor", l_command_form_input_processor)
        jr.set_field(this, "command", l_command)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CommandRunnable",
        "org.allbinary.game.displayable.canvas.CommandRunnable",
        "Object",
        ["Runnable"],
        False,
        [#("logUtil", jr.JNull), #("commonStrings", jr.JNull), #("commandFormInputProcessor", jr.JNull), #("command", jr.JNull)],
        [],
        [
            jr.Method("run_0", [], False, c1_m6__run), 
            jr.Method("jinit_2", ["CommandFormInputProcessor", "Command"], False, c1_jinit5)],
        c1_jfields,
        c1_jclinit,
    )
}

