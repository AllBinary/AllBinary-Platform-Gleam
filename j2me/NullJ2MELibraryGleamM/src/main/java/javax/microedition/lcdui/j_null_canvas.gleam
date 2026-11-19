// Generated Code Do Not Modify
// package javax.microedition.lcdui
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class NullCanvas

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("NullCanvas", "NULL_CANVAS", jr.new("NullCanvas", []))
    jr.JNull
}

fn c1_m3__setfullscreenmode(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_mode] = jargs
    jr.JNull
}

fn c1_m4__sizechanged(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_w, l_h] = jargs
    let l_w = jr.as_i(l_w)
    let l_h = jr.as_i(l_h)
    jr.JNull
}

fn c1_m5__getcommandstack(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.throw(jr.new("RuntimeException", []))
    jr.JNull
}

fn c1_m6__iscommand(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_command] = jargs
        jr.throw(jr.new("RuntimeException", []))
    jr.JNull
}

fn c1_m7__addcommand(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_command] = jargs
    jr.JNull
}

fn c1_m8__removecommand(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_command] = jargs
    jr.JNull
}

fn c1_m9__removeallcommands(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m10__setcommandlistener(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_l] = jargs
    jr.JNull
}

fn c1_m11__getcustomcommandlistener(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.throw(jr.new("RuntimeException", []))
    jr.JNull
}

fn c1_m12__ispaused(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.throw(jr.new("RuntimeException", []))
    jr.JNull
}

fn c1_m13__removepausecommand(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m14__pause(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m15__unpause(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m16__process(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m17__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
    jr.JNull
}

fn c1_m18__destroy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m19__setpaused(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_is_paused] = jargs
        jr.throw(jr.new("RuntimeException", []))
    jr.JNull
}

fn c1_m20__pointerdragged(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_x, l_y] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    jr.JNull
}

fn c1_m21__pointerpressed(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_x, l_y] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    jr.JNull
}

fn c1_m22__pointerreleased(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_x, l_y] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    jr.JNull
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Canvas", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "NullCanvas",
        "javax.microedition.lcdui.NullCanvas",
        "Canvas",
        [],
        False,
        [],
        [#("NULL_CANVAS", jr.JNull)],
        [
            jr.Method("setFullScreenMode_1", ["boolean"], False, c1_m3__setfullscreenmode), 
            jr.Method("sizeChanged_2", ["int", "int"], False, c1_m4__sizechanged), 
            jr.Method("getCommandStack_0", [], False, c1_m5__getcommandstack), 
            jr.Method("isCommand_1", ["Command"], False, c1_m6__iscommand), 
            jr.Method("addCommand_1", ["Command"], False, c1_m7__addcommand), 
            jr.Method("removeCommand_1", ["Command"], False, c1_m8__removecommand), 
            jr.Method("removeAllCommands_0", [], False, c1_m9__removeallcommands), 
            jr.Method("setCommandListener_1", ["CommandListener"], False, c1_m10__setcommandlistener), 
            jr.Method("getCustomCommandListener_0", [], False, c1_m11__getcustomcommandlistener), 
            jr.Method("isPaused_0", [], False, c1_m12__ispaused), 
            jr.Method("removePauseCommand_0", [], False, c1_m13__removepausecommand), 
            jr.Method("pause_0", [], False, c1_m14__pause), 
            jr.Method("unPause_0", [], False, c1_m15__unpause), 
            jr.Method("process_0", [], False, c1_m16__process), 
            jr.Method("paint_1", ["Graphics"], False, c1_m17__paint), 
            jr.Method("destroy_0", [], False, c1_m18__destroy), 
            jr.Method("setPaused_1", ["boolean"], False, c1_m19__setpaused), 
            jr.Method("pointerDragged_2", ["int", "int"], False, c1_m20__pointerdragged), 
            jr.Method("pointerPressed_2", ["int", "int"], False, c1_m21__pointerpressed), 
            jr.Method("pointerReleased_2", ["int", "int"], False, c1_m22__pointerreleased), 
            jr.Method("jinit_0", [], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

