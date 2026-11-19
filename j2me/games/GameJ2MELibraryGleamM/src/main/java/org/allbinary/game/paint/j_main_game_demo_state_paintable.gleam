// Generated Code Do Not Modify
// package org.allbinary.game.paint
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class MainGameDemoStatePaintable

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        jr.call(jr.get_field(this, "menuPaintableInterface"), "paint_1", [l_graphics])
        jr.call(jr.get_field(this, "ownershipPaintableInterface"), "paint_1", [l_graphics])
    jr.JNull
}

fn c1_m5__getownershippaintableinterface(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "ownershipPaintableInterface")
}

fn c1_m6__getmenupaintableinterface(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "menuPaintableInterface")
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_ownership_paintable_interface, l_menu_paintable_interface] = jargs
    jr.super_init("Paintable", this, [])
    c1_jfields(this)
        jr.set_field(this, "ownershipPaintableInterface", l_ownership_paintable_interface)
        jr.set_field(this, "menuPaintableInterface", l_menu_paintable_interface)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "MainGameDemoStatePaintable",
        "org.allbinary.game.paint.MainGameDemoStatePaintable",
        "Paintable",
        [],
        False,
        [#("ownershipPaintableInterface", jr.JNull), #("menuPaintableInterface", jr.JNull)],
        [],
        [
            jr.Method("paint_1", ["Graphics"], False, c1_m4__paint), 
            jr.Method("getOwnershipPaintableInterface_0", [], False, c1_m5__getownershippaintableinterface), 
            jr.Method("getMenuPaintableInterface_0", [], False, c1_m6__getmenupaintableinterface), 
            jr.Method("jinit_2", ["Paintable", "Paintable"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

