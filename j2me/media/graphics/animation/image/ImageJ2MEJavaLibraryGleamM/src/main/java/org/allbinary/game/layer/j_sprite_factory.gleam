// Generated Code Do Not Modify
// package org.allbinary.game.layer
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class SpriteFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("SpriteFactory", "instance", jr.new("SpriteFactory", []))
    jr.JNull
}

fn c1_m3__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("SpriteFactory", "instance")
}

fn c1_m4__createsprite(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image, l_frame_width, l_frame_height] = jargs
    let l_frame_width = jr.as_i(l_frame_width)
    let l_frame_height = jr.as_i(l_frame_height)
    jr.new("Sprite", [l_image, l_frame_width, l_frame_height])
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "SpriteFactory",
        "org.allbinary.game.layer.SpriteFactory",
        "Object",
        ["SpriteFactoryInterface"],
        False,
        [#("logUtil", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m3__getinstance), 
            jr.Method("createSprite_3", ["Image", "int", "int"], False, c1_m4__createsprite), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

