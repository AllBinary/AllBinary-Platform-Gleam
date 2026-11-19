// Generated Code Do Not Modify
// package org.allbinary.game.layer.resources
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GameGraphicsResourceUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "SPRITE", jr.JStr("_sprite"))
    jr.set_field(this, "QUARTER", jr.JStr("_quarter"))
    jr.set_field(this, "name", jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("GameGraphicsResourceUtil", "instance", jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.eq(jr.get_static("GameGraphicsResourceUtil", "instance"), jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))) {
            True -> {
            jr.set_static("GameGraphicsResourceUtil", "instance", jr.new("GameGraphicsResourceUtil", []))
            Nil
        }
            False -> Nil
        }
    jr.get_static("GameGraphicsResourceUtil", "instance")
}

fn c1_m8__getstring(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_graphics_feature_factory = jr.call_static("GraphicsFeatureFactory", "getInstance_0", [])
        let l_graphics_feature = jr.cell(jr.get_field(l_graphics_feature_factory, "NONE"))
        let l_features = jr.call_static("Features", "getInstance_0", [])
        case jr.truth(jr.call(l_features, "isFeature_1", [jr.get_field(l_graphics_feature_factory, "IMAGE_TO_ARRAY_GRAPHICS")])) {
            True -> {
            jr.set(l_graphics_feature, jr.get_field(l_graphics_feature_factory, "IMAGE_TO_ARRAY_GRAPHICS"))
            Nil
        }
            False -> case jr.truth(jr.call(l_features, "isFeature_1", [jr.get_field(l_graphics_feature_factory, "SPRITE_FULL_GRAPHICS")])) {
            True -> {
            jr.set(l_graphics_feature, jr.get_field(l_graphics_feature_factory, "SPRITE_FULL_GRAPHICS"))
            Nil
        }
            False -> case jr.truth(jr.call(l_features, "isFeature_1", [jr.get_field(l_graphics_feature_factory, "SPRITE_QUARTER_ROTATION_GRAPHICS")])) {
            True -> {
            jr.set(l_graphics_feature, jr.get_field(l_graphics_feature_factory, "SPRITE_QUARTER_ROTATION_GRAPHICS"))
            Nil
        }
            False -> case jr.truth(jr.call(l_features, "isFeature_1", [jr.get_field(l_graphics_feature_factory, "IMAGE_ROTATION_ON_THE_FLY")])) {
            True -> {
            jr.set(l_graphics_feature, jr.get_field(l_graphics_feature_factory, "IMAGE_ROTATION_ON_THE_FLY"))
            Nil
        }
            False -> Nil
        }
        }
        }
        }
    jr.call(this, "getStringForFeature_1", [jr.get(l_graphics_feature)])
}

fn c1_m9__getstringforfeature(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics_feature] = jargs
        let l_string_buffer = jr.new("StringMaker", [])
        let l_graphics_feature_factory = jr.call_static("GraphicsFeatureFactory", "getInstance_0", [])
        jr.call(l_string_buffer, "delete_2", [jr.JInt(0), jr.call(l_string_buffer, "length_0", [])])
        let l_features = jr.call_static("Features", "getInstance_0", [])
        case jr.truth(jr.call(l_features, "isFeature_1", [jr.get_field(l_graphics_feature_factory, "VECTOR_GRAPHICS")])) {
            True -> {
            Nil
        }
            False -> case jr.truth(jr.call(l_features, "isFeature_1", [jr.get_field(l_graphics_feature_factory, "IMAGE_GRAPHICS")])) {
            True -> {
            case jr.truth(case jr.truth(jr.eq(l_graphics_feature, jr.get_field(l_graphics_feature_factory, "IMAGE_TO_ARRAY_GRAPHICS"))) { True -> jr.JBool(True) False -> jr.eq(l_graphics_feature, jr.get_field(l_graphics_feature_factory, "IMAGE_ROTATION_ON_THE_FLY")) }) {
                True -> {
                Nil
            }
                False -> case jr.truth(jr.eq(l_graphics_feature, jr.get_field(l_graphics_feature_factory, "SPRITE_FULL_GRAPHICS"))) {
                True -> {
                jr.call(l_string_buffer, "append_1", [jr.get_field(this, "SPRITE")])
                Nil
            }
                False -> case jr.truth(jr.eq(l_graphics_feature, jr.get_field(l_graphics_feature_factory, "SPRITE_QUARTER_ROTATION_GRAPHICS"))) {
                True -> {
                jr.call(l_string_buffer, "append_1", [jr.get_field(this, "QUARTER")])
                jr.call(l_string_buffer, "append_1", [jr.get_field(this, "SPRITE")])
                Nil
            }
                False -> {
                jr.throw(jr.new("Exception", [jr.JStr("None/Unknown Sub Image Resource Type Specified")]))
                Nil
            }
            }
            }
            }
            Nil
        }
            False -> case jr.truth(jr.call(jr.call_static("OpenGLFeatureUtil", "getInstance_0", []), "isAnyThreed_0", [])) {
            True -> {
            jr.call(l_string_buffer, "append_1", [jr.get_field(jr.call_static("CanvasStrings", "getInstance_0", []), "OBJ_MODEL")])
            Nil
        }
            False -> {
            jr.throw(jr.new("Exception", [jr.JStr("None/Unknown Main Image Resource Type Specified")]))
            Nil
        }
        }
        }
        }
    jr.call(l_string_buffer, "toString_0", [])
}

fn c1_m10__getname(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "name")
}

fn c1_jinit7(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.try_catch(fn() {
            jr.set_field(this, "name", jr.call(this, "getString_0", []))
            Nil
        }, [#(["Exception"], fn(l_e) { {
            let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(l_common_strings, "EXCEPTION"), this, jr.get_field(l_common_strings, "CONSTRUCTOR"), l_e])
            Nil
        } })], fn() { Nil })
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GameGraphicsResourceUtil",
        "org.allbinary.game.layer.resources.GameGraphicsResourceUtil",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull), #("SPRITE", jr.JNull), #("QUARTER", jr.JNull), #("name", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("getString_0", [], False, c1_m8__getstring), 
            jr.Method("getStringForFeature_1", ["GraphicsFeature"], False, c1_m9__getstringforfeature), 
            jr.Method("getName_0", [], False, c1_m10__getname), 
            jr.Method("jinit_0", [], False, c1_jinit7)],
        c1_jfields,
        c1_jclinit,
    )
}

