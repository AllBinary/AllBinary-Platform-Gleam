// Generated Code Do Not Modify
// package org.allbinary.game.configuration.feature
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GraphicsFeatureFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "NONE", jr.new("GraphicsFeature", [jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "NULL_STRING")]))
    jr.set_field(this, "TRANSPARENT_IMAGE_CREATION", jr.new("GraphicsFeature", [jr.JStr("Transparent Image Creation")]))
    jr.set_field(this, "IMAGE_GRAPHICS", jr.new("GraphicsFeature", [jr.JStr("Image Graphics")]))
    jr.set_field(this, "IMAGE_ROTATION_ON_THE_FLY", jr.new("GraphicsFeature", [jr.JStr("Image Rotated On The Fly")]))
    jr.set_field(this, "IMAGE_TO_ARRAY_GRAPHICS", jr.new("GraphicsFeature", [jr.JStr("Image To Array Graphics")]))
    jr.set_field(this, "SPRITE_QUARTER_ROTATION_GRAPHICS", jr.new("GraphicsFeature", [jr.JStr("Sprite Quarter Rotation Graphics")]))
    jr.set_field(this, "SPRITE_FULL_GRAPHICS", jr.new("GraphicsFeature", [jr.JStr("Sprite Full Rotation Graphics")]))
    jr.set_field(this, "VECTOR_GRAPHICS", jr.new("GraphicsFeature", [jr.JStr("BasicArrayList Graphics")]))
    jr.set_field(this, "VECTOR_TO_IMAGE_GRAPHICS", jr.new("GraphicsFeature", [jr.JStr("BasicArrayList To Image Graphics")]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("GraphicsFeatureFactory", "instance", jr.new("GraphicsFeatureFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("GraphicsFeatureFactory", "instance")
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GraphicsFeatureFactory",
        "org.allbinary.game.configuration.feature.GraphicsFeatureFactory",
        "Object",
        [],
        False,
        [#("NONE", jr.JNull), #("TRANSPARENT_IMAGE_CREATION", jr.JNull), #("IMAGE_GRAPHICS", jr.JNull), #("IMAGE_ROTATION_ON_THE_FLY", jr.JNull), #("IMAGE_TO_ARRAY_GRAPHICS", jr.JNull), #("SPRITE_QUARTER_ROTATION_GRAPHICS", jr.JNull), #("SPRITE_FULL_GRAPHICS", jr.JNull), #("VECTOR_GRAPHICS", jr.JNull), #("VECTOR_TO_IMAGE_GRAPHICS", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

