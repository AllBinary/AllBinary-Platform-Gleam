// Generated Code Do Not Modify
// package org.allbinary.game.collision
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CollidableNeverCollideBehaviorFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "instance", jr.new("CollidableNeverCollideBehavior", [jr.JBool(False)]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("CollidableNeverCollideBehaviorFactory", "instanceC", jr.new("CollidableNeverCollideBehaviorFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("CollidableNeverCollideBehaviorFactory", "instanceC")
}

fn c1_m4__createbehavior(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "instance")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("CollidableBaseBehaviorFactory", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CollidableNeverCollideBehaviorFactory",
        "org.allbinary.game.collision.CollidableNeverCollideBehaviorFactory",
        "CollidableBaseBehaviorFactory",
        [],
        False,
        [#("instance", jr.JNull)],
        [#("instanceC", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("createBehavior_0", [], False, c1_m4__createbehavior), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

