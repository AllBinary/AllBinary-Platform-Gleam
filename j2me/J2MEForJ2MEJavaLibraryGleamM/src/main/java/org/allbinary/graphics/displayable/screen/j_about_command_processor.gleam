// Generated Code Do Not Modify
// package org.allbinary.graphics.displayable.screen
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AboutCommandProcessor

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("AboutCommandProcessor", "instance", jr.new("AboutCommandProcessor", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("AboutCommandProcessor", "instance")
}

fn c1_m3__process(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_midlet_command_listener, l_command, l_canvas] = jargs
        jr.call(l_midlet_command_listener, "commandAction_2", [l_command, l_canvas])
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AboutCommandProcessor",
        "org.allbinary.graphics.displayable.screen.AboutCommandProcessor",
        "Object",
        [],
        False,
        [],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("process_3", ["CommandListener", "Command", "Canvas"], False, c1_m3__process), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

