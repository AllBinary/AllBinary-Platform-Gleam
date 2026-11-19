// Generated Code Do Not Modify
// package org.allbinary.input.motion.button
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class TouchButtonStrafeLeftResource

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("TouchButtonStrafeLeftResource", "instance", jr.new("TouchButtonStrafeLeftResource", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("TouchButtonStrafeLeftResource", "instance")
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.super_init("TouchButtonResource", this, [jr.JStr("/touch_button_strafe_left_arrow_64_by_64.png"), jr.JStr("/touch_button_strafe_left_arrow_hint_64_by_64.png")])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "TouchButtonStrafeLeftResource",
        "org.allbinary.input.motion.button.TouchButtonStrafeLeftResource",
        "TouchButtonResource",
        [],
        False,
        [],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

