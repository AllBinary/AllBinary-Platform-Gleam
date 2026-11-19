// Generated Code Do Not Modify
// package org.allbinary.canvas
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CustomGameMenuUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__add(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_canvas] = jargs
        let l_game_commands_factory = jr.call_static("GameCommandsFactory", "getInstance_0", [])
        case jr.truth(jr.call_static("AppletUtil", "isAppletLoader_1", [l_canvas])) {
            True -> {
            Nil
        }
            False -> case jr.truth(jr.call_static("J2MEUtil", "isHTML_0", [])) {
            True -> {
            Nil
        }
            False -> {
            jr.call(l_canvas, "addCommand_1", [jr.get_field(l_game_commands_factory, "EXIT_COMMAND")])
            Nil
        }
        }
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
        "CustomGameMenuUtil",
        "org.allbinary.canvas.CustomGameMenuUtil",
        "Object",
        [],
        False,
        [],
        [],
        [
            jr.Method("add_1", ["MyCanvas"], True, c1_m1__add), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

