// Generated Code Do Not Modify
// package org.allbinary.game.displayable.canvas
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class FormUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("FormUtil", "instance", jr.new("FormUtil", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("FormUtil", "instance")
}

fn c1_m3__createformrectangle(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_display_info = jr.call_static("DisplayInfoSingleton", "getInstance_0", [])
        let l_point_factory = jr.call_static("PointFactory", "getInstance_0", [])
        let l_rectangle = jr.new("Rectangle", [jr.call(l_point_factory, "createXY_2", [jr.JInt(30), jr.JInt(10)]), jr.sub(jr.call(l_display_info, "getLastWidth_0", []), jr.JInt(30)), jr.sub(jr.call(l_display_info, "getLastHeight_0", []), jr.JInt(35))])
    l_rectangle
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "FormUtil",
        "org.allbinary.game.displayable.canvas.FormUtil",
        "Object",
        [],
        False,
        [],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("createFormRectangle_0", [], False, c1_m3__createformrectangle), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

