// Generated Code Do Not Modify
// package org.allbinary.game.displayable.canvas
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class NullAllBinaryGameCanvas

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("NullAllBinaryGameCanvas", "NULL_ALLBINARY_GAME_CANVAS", jr.new("NullAllBinaryGameCanvas", []))
    jr.JNull
}

fn c1_m2__getlayermanager(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.throw(jr.new("RuntimeException", []))
    jr.JNull
}

fn c1_m3__addcommand(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_cmd] = jargs
        jr.throw(jr.new("RuntimeException", []))
    jr.JNull
}

fn c1_m4__getheight(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.throw(jr.new("RuntimeException", []))
    jr.JNull
}

fn c1_m5__getwidth(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.throw(jr.new("RuntimeException", []))
    jr.JNull
}

fn c1_m6__removecommand(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_cmd] = jargs
        jr.throw(jr.new("RuntimeException", []))
    jr.JNull
}

fn c1_m7__setcommandlistener(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_l] = jargs
        jr.throw(jr.new("RuntimeException", []))
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "NullAllBinaryGameCanvas",
        "org.allbinary.game.displayable.canvas.NullAllBinaryGameCanvas",
        "Object",
        ["AllBinaryGameCanvasInterface"],
        False,
        [],
        [#("NULL_ALLBINARY_GAME_CANVAS", jr.JNull)],
        [
            jr.Method("getLayerManager_0", [], False, c1_m2__getlayermanager), 
            jr.Method("addCommand_1", ["Command"], False, c1_m3__addcommand), 
            jr.Method("getHeight_0", [], False, c1_m4__getheight), 
            jr.Method("getWidth_0", [], False, c1_m5__getwidth), 
            jr.Method("removeCommand_1", ["Command"], False, c1_m6__removecommand), 
            jr.Method("setCommandListener_1", ["CommandListener"], False, c1_m7__setcommandlistener), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

