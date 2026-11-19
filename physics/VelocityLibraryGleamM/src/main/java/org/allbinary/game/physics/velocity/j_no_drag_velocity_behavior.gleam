// Generated Code Do Not Modify
// package org.allbinary.game.physics.velocity
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class NoDragVelocityBehavior

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("NoDragVelocityBehavior", "instance", jr.new("NoDragVelocityBehavior", []))
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("VelocityBehaviorBase", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "NoDragVelocityBehavior",
        "org.allbinary.game.physics.velocity.NoDragVelocityBehavior",
        "VelocityBehaviorBase",
        [],
        False,
        [],
        [#("instance", jr.JNull)],
        [
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

