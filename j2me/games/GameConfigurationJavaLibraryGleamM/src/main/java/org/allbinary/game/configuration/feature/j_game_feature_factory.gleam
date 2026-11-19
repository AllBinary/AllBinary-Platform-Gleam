// Generated Code Do Not Modify
// package org.allbinary.game.configuration.feature
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GameFeatureFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "SOUND", jr.new("GameFeature", [jr.JStr("Sound")]))
    jr.set_field(this, "MUSIC", jr.new("GameFeature", [jr.JStr("Music")]))
    jr.set_field(this, "SCREEN_SHAKE", jr.new("Feature", [jr.JStr("Screen Shake")]))
    jr.set_field(this, "POST_IMAGE_LOADING_MODIFICATION", jr.new("Feature", [jr.JStr("Post Image Loading Modification (Scaling, Rotation, or Other)")]))
    jr.set_field(this, "HEALTH_BARS", jr.new("GameFeature", [jr.JStr("Health Bars")]))
    jr.set_field(this, "DAMAGE_FLOATERS", jr.new("GameFeature", [jr.JStr("Damage Floaters")]))
    jr.set_field(this, "GAME_INPUT_LAYER_PROCESSOR", jr.new("GameFeature", [jr.JStr("Game Input Layer Processor")]))
    jr.set_field(this, "ARTIFICIAL_INTELLEGENCE_PROCESSOR", jr.new("GameFeature", [jr.JStr("Artificial Intelligence Layer Processor")]))
    jr.set_field(this, "COLLIDABLE_INTERFACE_LAYER_PROCESSOR", jr.new("GameFeature", [jr.JStr("Collidable Interface Layer Processor")]))
    jr.set_field(this, "TICKABLE_LAYER_PROCESSOR", jr.new("GameFeature", [jr.JStr("Tickable Layer Processor")]))
    jr.set_field(this, "CHEATING", jr.new("GameFeature", [jr.JStr("Cheating")]))
    jr.set_field(this, "DROPPED_ITEMS", jr.new("GameFeature", [jr.JStr("Drops")]))
    jr.set_field(this, "DROPPED_ITEMS_FROM_DEATH", jr.new("GameFeature", [jr.JStr("Drops from Dead")]))
    jr.set_field(this, "TEST_DESTROYED_LAYER_PROCESSOR", jr.new("GameFeature", [jr.JStr("Destroyed Layer Processor")]))
    jr.set_field(this, "COLLISIONS_WITH_SOURCE", jr.new("GameFeature", [jr.JStr("Allow Collisions With Source")]))
    jr.set_field(this, "COLLISIONS_FORCED_TWO_DIMENSIONAL", jr.new("GameFeature", [jr.JStr("Collisions Forced Two Dimensional")]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("GameFeatureFactory", "instance", jr.new("GameFeatureFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("GameFeatureFactory", "instance")
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GameFeatureFactory",
        "org.allbinary.game.configuration.feature.GameFeatureFactory",
        "Object",
        [],
        False,
        [#("SOUND", jr.JNull), #("MUSIC", jr.JNull), #("SCREEN_SHAKE", jr.JNull), #("POST_IMAGE_LOADING_MODIFICATION", jr.JNull), #("HEALTH_BARS", jr.JNull), #("DAMAGE_FLOATERS", jr.JNull), #("GAME_INPUT_LAYER_PROCESSOR", jr.JNull), #("ARTIFICIAL_INTELLEGENCE_PROCESSOR", jr.JNull), #("COLLIDABLE_INTERFACE_LAYER_PROCESSOR", jr.JNull), #("TICKABLE_LAYER_PROCESSOR", jr.JNull), #("CHEATING", jr.JNull), #("DROPPED_ITEMS", jr.JNull), #("DROPPED_ITEMS_FROM_DEATH", jr.JNull), #("TEST_DESTROYED_LAYER_PROCESSOR", jr.JNull), #("COLLISIONS_WITH_SOURCE", jr.JNull), #("COLLISIONS_FORCED_TWO_DIMENSIONAL", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

