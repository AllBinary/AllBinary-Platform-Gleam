// Generated Code Do Not Modify
// package org.allbinary.game.resource
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class FeaturedResourceFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "list", jr.new("BasicArrayListD", []))
    jr.set_field(this, "commonStrings", jr.call_static("CommonStrings", "getInstance_0", []))
    jr.set_field(this, "ANIMATION_FEATURES", jr.JStr("Animation Features: Vector: "))
    jr.set_field(this, "IMAGE_LABEL", jr.JStr(" Image: "))
    jr.set_field(this, "IMAGE_GRAPHICS_ARRAY", jr.JStr("Image Array: "))
    jr.set_field(this, "IMAGE_GRAPHICS_ROTATION", jr.JStr("Image Rotate: "))
    jr.set_field(this, "SPRITE_QUARTER", jr.JStr(" Sprite Quarter: "))
    jr.set_field(this, "SPRITE_FULL", jr.JStr(" Sprite Full: "))
    jr.set_field(this, "IS_LOADING_LEVEL_LABEL", jr.JStr(" isLoadingLevel "))
    jr.set_field(this, "IS_FEATURE", jr.JStr(" isFeature: "))
    jr.set_field(this, "GAME_FEATURE_CONTROLLED", jr.JStr("GameFeatureControlledInterface: "))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m14__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_level] = jargs
    let l_level = jr.as_i(l_level)
        let l_size = jr.as_i(jr.call(jr.get_field(this, "list"), "size_0", []))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            let l_feature_interface = jr.aget(jr.get_field(jr.get_field(this, "list"), "objectArray"), jr.get(l_index))
            let l_is_loading_level = jr.call(l_feature_interface, "isLoadingLevel_1", [l_level])
            let l_is_feature = jr.call(l_feature_interface, "isFeature_0", [])
            jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.call(jr.call(jr.call(jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(this, "GAME_FEATURE_CONTROLLED")]), "append_1", [jr.call(l_feature_interface, "toString_0", [])]), "append_1", [jr.get_field(this, "IS_LOADING_LEVEL_LABEL")]), "append_1", [jr.call(jr.call_static("ResourceLoadingLevelFactory", "getInstance_0", []), "getLevelString_1", [l_level])]), "append_1", [jr.get_field(jr.call_static("CommonSeps", "getInstance_0", []), "COLON_SEP")]), "appendboolean_1", [l_is_loading_level]), "append_1", [jr.get_field(this, "IS_FEATURE")]), "appendboolean_1", [l_is_feature]), "toString_0", []), this, jr.get_field(jr.get_field(this, "commonStrings"), "INIT")])
            case jr.truth(case jr.truth(l_is_loading_level) { True -> l_is_feature False -> jr.JBool(False) }) {
                True -> {
                jr.call(l_feature_interface, "init_1", [l_level])
                Nil
            }
                False -> Nil
            }
            Nil
        })
            Nil
        }
        let l_features = jr.call_static("Features", "getInstance_0", [])
        let l_graphics_feature_factory = jr.call_static("GraphicsFeatureFactory", "getInstance_0", [])
        let l_string_buffer = jr.new("StringMaker", [])
        jr.call(l_string_buffer, "append_1", [jr.get_field(this, "ANIMATION_FEATURES")])
        jr.call(l_string_buffer, "appendboolean_1", [jr.call(l_features, "isFeature_1", [jr.get_field(l_graphics_feature_factory, "VECTOR_GRAPHICS")])])
        jr.call(l_string_buffer, "append_1", [jr.get_field(this, "IMAGE_LABEL")])
        jr.call(l_string_buffer, "appendboolean_1", [jr.call(l_features, "isFeature_1", [jr.get_field(l_graphics_feature_factory, "IMAGE_GRAPHICS")])])
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(l_string_buffer, "toString_0", []), this, jr.get_field(jr.get_field(this, "commonStrings"), "INIT")])
        case jr.truth(jr.call(l_features, "isFeature_1", [jr.get_field(l_graphics_feature_factory, "IMAGE_GRAPHICS")])) {
            True -> {
            jr.call(l_string_buffer, "delete_2", [jr.JInt(0), jr.call(l_string_buffer, "length_0", [])])
            jr.call(l_string_buffer, "append_1", [jr.get_field(this, "IMAGE_GRAPHICS_ARRAY")])
            jr.call(l_string_buffer, "appendboolean_1", [jr.call(l_features, "isFeature_1", [jr.get_field(l_graphics_feature_factory, "IMAGE_TO_ARRAY_GRAPHICS")])])
            jr.call(l_string_buffer, "append_1", [jr.get_field(this, "IMAGE_GRAPHICS_ROTATION")])
            jr.call(l_string_buffer, "appendboolean_1", [jr.call(l_features, "isFeature_1", [jr.get_field(l_graphics_feature_factory, "IMAGE_TO_ARRAY_GRAPHICS")])])
            jr.call(l_string_buffer, "append_1", [jr.get_field(this, "SPRITE_QUARTER")])
            jr.call(l_string_buffer, "appendboolean_1", [jr.call(l_features, "isFeature_1", [jr.get_field(l_graphics_feature_factory, "SPRITE_QUARTER_ROTATION_GRAPHICS")])])
            jr.call(l_string_buffer, "append_1", [jr.get_field(this, "SPRITE_FULL")])
            jr.call(l_string_buffer, "appendboolean_1", [jr.call(l_features, "isFeature_1", [jr.get_field(l_graphics_feature_factory, "SPRITE_FULL_GRAPHICS")])])
            jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(l_string_buffer, "toString_0", []), this, jr.get_field(jr.get_field(this, "commonStrings"), "INIT")])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m15__clear(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "list"), "clear_0", [])
    jr.JNull
}

fn c1_m16__add(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_feature_interface] = jargs
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(jr.call_static("CommonLabels", "getInstance_0", []), "START_LABEL")]), "append_1", [jr.call(jr.call_static("StringUtil", "getInstance_0", []), "toString_1", [l_feature_interface])]), "toString_0", []), this, jr.get_field(jr.get_field(this, "commonStrings"), "ADD")])
        jr.call(jr.get_field(this, "list"), "add_1", [l_feature_interface])
    jr.JNull
}

fn c1_m17__getlist(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "list")
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "FeaturedResourceFactory",
        "org.allbinary.game.resource.FeaturedResourceFactory",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull), #("list", jr.JNull), #("commonStrings", jr.JNull), #("ANIMATION_FEATURES", jr.JNull), #("IMAGE_LABEL", jr.JNull), #("IMAGE_GRAPHICS_ARRAY", jr.JNull), #("IMAGE_GRAPHICS_ROTATION", jr.JNull), #("SPRITE_QUARTER", jr.JNull), #("SPRITE_FULL", jr.JNull), #("IS_LOADING_LEVEL_LABEL", jr.JNull), #("IS_FEATURE", jr.JNull), #("GAME_FEATURE_CONTROLLED", jr.JNull)],
        [],
        [
            jr.Method("init_1", ["int"], False, c1_m14__init), 
            jr.Method("clear_0", [], False, c1_m15__clear), 
            jr.Method("add_1", ["GameFeatureControlledInterface"], False, c1_m16__add), 
            jr.Method("getList_0", [], False, c1_m17__getlist), 
            jr.Method("jinit_0", [], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

