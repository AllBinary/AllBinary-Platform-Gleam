// Generated Code Do Not Modify
// package org.allbinary.game.multiplayer.layer
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class MultiPlayerGameLayer

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__getmultiplayerbehavior(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("MultiplayerBehavior", "NULL_MULTIPLAYER_BEHAVIOR")
}

fn c1_m3__setpinginfo(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_show] = jargs
    jr.JNull
}

fn c1_m4__setfiring(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_firing] = jargs
    let l_firing = jr.as_s(l_firing)
    jr.JNull
}

fn c1_m5__getfiring(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_s(jr.JInt(0))
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_remote_info, l_group_interface, l_name, l_layer_info, l_view_position] = jargs
        jr.super_init("CollidableDestroyableDamageableLayer", this, [l_group_interface, l_name, l_layer_info, l_view_position])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "MultiPlayerGameLayer",
        "org.allbinary.game.multiplayer.layer.MultiPlayerGameLayer",
        "CollidableDestroyableDamageableLayer",
        ["MultiPlayerGameLayerInterface"],
        False,
        [],
        [],
        [
            jr.Method("getMultiplayerBehavior_0", [], False, c1_m2__getmultiplayerbehavior), 
            jr.Method("setPingInfo_1", ["boolean"], False, c1_m3__setpinginfo), 
            jr.Method("setFiring_1", ["short"], False, c1_m4__setfiring), 
            jr.Method("getFiring_0", [], False, c1_m5__getfiring), 
            jr.Method("jinit_5", ["RemoteInfo", "GroupArr", "String", "Rectangle", "ViewPositionBase"], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}

