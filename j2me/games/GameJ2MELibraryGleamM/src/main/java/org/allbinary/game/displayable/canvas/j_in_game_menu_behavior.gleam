// Generated Code Do Not Modify
// package org.allbinary.game.displayable.canvas
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class InGameMenuBehavior

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("InGameMenuBehavior", "instanceC", jr.new("InGameMenuBehavior", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("InGameMenuBehavior", "instanceC")
}

fn c1_m3__ondisplaychangeevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_all_binary_game_canvas, l_display_change_event] = jargs
        jr.call(l_all_binary_game_canvas, "updateMenuFromEvent_1", [l_display_change_event])
    jr.JNull
}

fn c1_m4__initspecialpaint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_all_binary_game_canvas] = jargs
        jr.call(l_all_binary_game_canvas, "setNonBotPaintableP_1", [jr.new("GameCanvasNonBotPaintable", [l_all_binary_game_canvas])])
    jr.JNull
}

fn c1_m5__initmenu(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_all_binary_game_canvas] = jargs
        jr.call(l_all_binary_game_canvas, "initMenu2_0", [])
    jr.JNull
}

fn c1_m6__updatemenu(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_all_binary_game_canvas] = jargs
        jr.call(l_all_binary_game_canvas, "initMenu2_0", [])
    jr.JNull
}

fn c1_m7__popupmenu(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_all_binary_game_canvas] = jargs
        jr.call(l_all_binary_game_canvas, "popupMenu2_0", [])
    jr.JNull
}

fn c1_m8__closemenu(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_all_binary_game_canvas] = jargs
        jr.call(l_all_binary_game_canvas, "closeMenu2_0", [])
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("BaseMenuBehavior", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "InGameMenuBehavior",
        "org.allbinary.game.displayable.canvas.InGameMenuBehavior",
        "BaseMenuBehavior",
        [],
        False,
        [],
        [#("instanceC", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("onDisplayChangeEvent_2", ["AllBinaryGameCanvas", "DisplayChangeEvent"], False, c1_m3__ondisplaychangeevent), 
            jr.Method("initSpecialPaint_1", ["AllBinaryGameCanvas"], False, c1_m4__initspecialpaint), 
            jr.Method("initMenu_1", ["AllBinaryGameCanvas"], False, c1_m5__initmenu), 
            jr.Method("updateMenu_1", ["AllBinaryGameCanvas"], False, c1_m6__updatemenu), 
            jr.Method("popupMenu_1", ["AllBinaryGameCanvas"], False, c1_m7__popupmenu), 
            jr.Method("closeMenu_1", ["AllBinaryGameCanvas"], False, c1_m8__closemenu), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

