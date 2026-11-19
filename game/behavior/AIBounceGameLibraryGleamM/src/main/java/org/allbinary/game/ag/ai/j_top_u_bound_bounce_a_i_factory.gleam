// Generated Code Do Not Modify
// package org.allbinary.game.ag.ai
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class TopUBoundBounceAIFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_hashtable, l_owner_layer_interface, l_game_input] = jargs
        let l_velocity_interface_composite_interface = l_owner_layer_interface
        let l_velocity_interface = jr.call(l_velocity_interface_composite_interface, "getVelocityProperties_0", [])
        let l_max_distance_per_tick = jr.as_i(jr.shr(jr.call(l_velocity_interface, "getMaxForwardVelocity_0", []), jr.call(jr.call(l_velocity_interface, "getVelocityXBasicDecimalP_0", []), "getScaledFactor_0", [])))
        let l_half_width = jr.as_i(jr.add(jr.add(jr.mul(jr.call(l_owner_layer_interface, "getWidth_0", []), jr.JInt(2)), l_max_distance_per_tick), jr.JInt(1)))
        let l_half_height = jr.as_i(jr.add(jr.add(jr.mul(jr.call(l_owner_layer_interface, "getHeight_0", []), jr.JInt(2)), l_max_distance_per_tick), jr.JInt(1)))
        let l_point = jr.call(jr.call_static("PointFactory", "getInstance_0", []), "createXY_2", [l_half_width, jr.add(l_half_height, jr.JInt(60))])
        let l_display_info = jr.call_static("DisplayInfoSingleton", "getInstance_0", [])
        let l_rectangle = jr.new("Rectangle", [l_point, jr.sub(jr.sub(jr.call(l_display_info, "getLastWidth_0", []), l_half_width), jr.call(l_point, "getX_0", [])), jr.sub(jr.sub(jr.call(l_display_info, "getLastHeight_0", []), l_half_height), jr.call(l_point, "getY_0", []))])
    jr.new("BoundBounceAI", [l_owner_layer_interface, l_game_input, jr.new("TopULayerBounds", [l_rectangle]), jr.new("ReverseVelocityBoundsVisitor", [l_owner_layer_interface])])
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "TopUBoundBounceAIFactory",
        "org.allbinary.game.ag.ai.TopUBoundBounceAIFactory",
        "Object",
        ["ArtificialIntelligenceInterfaceFactoryInterface"],
        False,
        [],
        [],
        [
            jr.Method("getInstance_3", ["ABHashtable", "AllBinaryLayer", "GameInput"], False, c1_m1__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

