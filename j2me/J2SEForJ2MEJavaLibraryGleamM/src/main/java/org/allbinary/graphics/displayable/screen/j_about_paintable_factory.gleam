// Generated Code Do Not Modify
// package org.allbinary.graphics.displayable.screen
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AboutPaintableFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "paintableArray", jr.array_of("L", [jr.call_static("NullPaintable", "getInstance_0", [])]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("AboutPaintableFactory", "instance", jr.new("AboutPaintableFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("AboutPaintableFactory", "instance")
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
        let l__i_n_f_o = jr.array_of("L", [jr.JStr("Built with the"), jr.JStr("AllBinary Platform"), jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.JStr("Comments or Questions:"), jr.JStr("support@allbinary.com")])
        let l__d_e_v_e_l_o_p_e_r_s = jr.array_of("L", [jr.JStr("Developed By:"), jr.JStr("Travis Berthelot")])
        jr.set_field(this, "paintableArray", jr.call(jr.call_static("AboutPaintable", "getInstance_2", [l__i_n_f_o, l__d_e_v_e_l_o_p_e_r_s]), "getPaintableArrayInstance_0", []))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AboutPaintableFactory",
        "org.allbinary.graphics.displayable.screen.AboutPaintableFactory",
        "Object",
        [],
        False,
        [#("paintableArray", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

