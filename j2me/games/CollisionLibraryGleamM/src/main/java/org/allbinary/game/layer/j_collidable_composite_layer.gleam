// Generated Code Do Not Modify
// package org.allbinary.game.layer
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CollidableCompositeLayer

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "collidableInferface", jr.call(jr.call_static("CollidableNeverCollideBehaviorFactory", "getInstance_0", []), "createBehavior_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("CollidableCompositeLayer", "NULL_COLLIDABLE_COMPOSITE_LAYER", jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))
    jr.JNull
}

fn c1_m2__getnullinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.eq(jr.get_static("CollidableCompositeLayer", "NULL_COLLIDABLE_COMPOSITE_LAYER"), jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))) {
            True -> {
            jr.set_static("CollidableCompositeLayer", "NULL_COLLIDABLE_COMPOSITE_LAYER", jr.new("CollidableCompositeLayer", [jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.get_static("RectangleFactory", "SINGLETON"), jr.get_static("ViewPositionBase", "NULL_VIEW_POSITION"), jr.call_static("CollidableNeverCollideBehaviorFactory", "getInstance_0", [])]))
            Nil
        }
            False -> Nil
        }
    jr.get_static("CollidableCompositeLayer", "NULL_COLLIDABLE_COMPOSITE_LAYER")
}

fn c1_m5__getartificialintelligenceinterface(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call_static("ForcedLogUtil", "log_2", [jr.get_field(jr.get_inherited(this, "CollidableCompositeLayer", "commonStrings"), "NOT_IMPLEMENTED"), this])
    jr.call_static("ArtificialIntelligence", "getInstance_0", [])
}

fn c1_m6__getcollidableinferface(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "collidableInferface")
}

fn c1_m7__setcollidableinferface(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_collidable_inferface] = jargs
        jr.set_field(this, "collidableInferface", l_collidable_inferface)
    jr.JNull
}

fn c1_m8__implmentscollidableinterface(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JBool(True)
}

fn c1_m9__tostringappend(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_string_buffer] = jargs
        let l_common_seps = jr.call_static("CommonSeps", "getInstance_0", [])
        jr.call_super("AllBinaryGameLayer", this, "toStringAppend_1", [l_string_buffer])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_common_seps, "NEW_LINE")])
        jr.call(l_string_buffer, "append_1", [jr.call(jr.call(this, "getCollidableInferface_0", []), "toString_0", [])])
    jr.JNull
}

fn c1_m10__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_string_buffer = jr.new("StringMaker", [])
        jr.call(this, "toStringAppend_1", [l_string_buffer])
    jr.call(l_string_buffer, "toString_0", [])
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_name, l_layer_info, l_view_position, l_collidable_base_behavior_factory] = jargs
        jr.super_init("AllBinaryGameLayer", this, [l_name, l_layer_info, l_view_position])
        c1_jfields(this)
        case jr.truth(jr.ne(l_collidable_base_behavior_factory, jr.call_static("CollidableNeverCollideBehaviorFactory", "getInstance_0", []))) {
            True -> {
            jr.call(this, "setCollidableInferface_1", [jr.call(l_collidable_base_behavior_factory, "createBehavior_0", [])])
            Nil
        }
            False -> Nil
        }
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CollidableCompositeLayer",
        "org.allbinary.game.layer.CollidableCompositeLayer",
        "AllBinaryGameLayer",
        ["CollidableInterfaceCompositeInterface"],
        False,
        [#("collidableInferface", jr.JNull)],
        [#("NULL_COLLIDABLE_COMPOSITE_LAYER", jr.JNull)],
        [
            jr.Method("getNullInstance_0", [], True, c1_m2__getnullinstance), 
            jr.Method("getArtificialIntelligenceInterface_0", [], False, c1_m5__getartificialintelligenceinterface), 
            jr.Method("getCollidableInferface_0", [], False, c1_m6__getcollidableinferface), 
            jr.Method("setCollidableInferface_1", ["CollidableBaseBehavior"], False, c1_m7__setcollidableinferface), 
            jr.Method("implmentsCollidableInterface_0", [], False, c1_m8__implmentscollidableinterface), 
            jr.Method("toStringAppend_1", ["StringMaker"], False, c1_m9__tostringappend), 
            jr.Method("toString_0", [], False, c1_m10__tostring), 
            jr.Method("jinit_4", ["String", "Rectangle", "ViewPositionBase", "CollidableBaseBehaviorFactory"], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}

