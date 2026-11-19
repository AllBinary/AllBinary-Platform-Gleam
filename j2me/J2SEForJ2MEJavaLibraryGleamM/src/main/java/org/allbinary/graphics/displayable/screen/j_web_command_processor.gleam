// Generated Code Do Not Modify
// package org.allbinary.graphics.displayable.screen
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class WebCommandProcessor

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "aboutCommandProcessor", jr.call_static("AboutCommandProcessor", "getInstance_0", []))
    jr.set_field(this, "list", jr.new("BasicArrayListD", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("WebCommandProcessor", "instance", jr.new("WebCommandProcessor", []))
    jr.JNull
}

fn c1_m3__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("WebCommandProcessor", "instance")
}

fn c1_m6__process(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_midlet_command_listener, l_command, l_canvas] = jargs
        jr.try_catch(fn() {
            case jr.truth(case jr.truth(jr.call_static("Desktop", "isDesktopSupported_0", [])) { True -> jr.call(jr.call_static("Desktop", "getDesktop_0", []), "isSupported_1", [jr.get_field(jr.get_static("Desktop", "Action"), "BROWSE")]) False -> jr.JBool(False) }) {
                True -> {
                jr.call(jr.call_static("Desktop", "getDesktop_0", []), "browse_1", [jr.new("URI", [jr.call(jr.get_field(this, "list"), "removeAt_1", [jr.JInt(0)])])])
                Nil
            }
                False -> Nil
            }
            Nil
        }, [#(["Exception"], fn(l_e) { {
            let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(l_common_strings, "EXCEPTION"), this, jr.get_field(l_common_strings, "PROCESS"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "WebCommandProcessor",
        "org.allbinary.graphics.displayable.screen.WebCommandProcessor",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull), #("aboutCommandProcessor", jr.JNull), #("list", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m3__getinstance), 
            jr.Method("process_3", ["CommandListener", "Command", "Canvas"], False, c1_m6__process), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

