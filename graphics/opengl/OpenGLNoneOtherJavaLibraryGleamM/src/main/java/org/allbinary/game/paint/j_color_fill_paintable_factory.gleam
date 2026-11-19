// Generated Code Do Not Modify
// package org.allbinary.game.paint
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ColorFillPaintableFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("ColorFillPaintableFactory", "instance", jr.new("ColorFillPaintableFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("ColorFillPaintableFactory", "instance")
}

fn c1_m3__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_basic_color, l_for_threed_canvas] = jargs
    jr.method(fn() {
            let l_operating_system = jr.call(jr.call_static("OperatingSystemFactory", "getInstance_0", []), "getOperatingSystemInstance_0", [])
            case jr.truth(jr.call(l_operating_system, "isOverScan_0", [])) {
            True -> {
            jr.ret(jr.new("OverScanColorFillPaintable", [l_basic_color]))
            Nil
        }
            False -> {
            jr.ret(jr.new("ColorFillPaintable", [l_basic_color]))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ColorFillPaintableFactory",
        "org.allbinary.game.paint.ColorFillPaintableFactory",
        "Object",
        [],
        False,
        [],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("getInstance_2", ["BasicColor", "boolean"], False, c1_m3__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

