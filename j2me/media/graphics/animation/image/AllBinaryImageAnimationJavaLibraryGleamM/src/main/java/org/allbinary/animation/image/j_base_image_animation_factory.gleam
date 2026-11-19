// Generated Code Do Not Modify
// package org.allbinary.animation.image
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BaseImageAnimationFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "animationFactoryImageScaleUtil", jr.call_static("AnimationFactoryImageScaleUtil", "getInstance_0", []))
    jr.set_field(this, "scaleProperties", jr.get_static("ScaleProperties", "instance"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__createfactorybase(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image, l_sequence_array, l_width, l_height, l_animation_behavior_factory] = jargs
    let l_width = jr.as_i(l_width)
    let l_height = jr.as_i(l_height)
    jr.new("BaseImageAnimationFactory", [l_image, l_sequence_array, l_width, l_height, jr.JInt(0), jr.JInt(0), l_animation_behavior_factory])
}

fn c1_m9__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_instance_id] = jargs
    let l_instance_id = jr.as_i(l_instance_id)
    jr.call(jr.call_static("NullAnimationFactory", "getFactoryInstance_0", []), "getInstance_1", [l_instance_id])
}

fn c1_m10__getimage(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "image")
}

fn c1_m11__getsequencearray(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "sequenceArray")
}

fn c1_m12__setinitialscale(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_scale_properties] = jargs
        jr.set_field(this, "scaleProperties", l_scale_properties)
        case jr.truth(jr.get_field(jr.get_field(this, "scaleProperties"), "shouldScale")) {
            True -> {
            jr.set_field(jr.get_field(this, "scaleProperties"), "scaleWidth", jr.as_i(jr.to_i(jr.mul(jr.to_f(jr.get_field(jr.get_field(this, "animationFactoryInitializationVisitor"), "width")), jr.get_field(jr.get_field(this, "scaleProperties"), "scaleX")))))
            jr.set_field(jr.get_field(this, "scaleProperties"), "scaleHeight", jr.as_i(jr.to_i(jr.mul(jr.to_f(jr.get_field(jr.get_field(this, "animationFactoryInitializationVisitor"), "height")), jr.get_field(jr.get_field(this, "scaleProperties"), "scaleY")))))
            Nil
        }
            False -> {
            Nil
        }
        }
    jr.JNull
}

fn c1_m13__getanimationfactoryinitializationvisitorp(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "animationFactoryInitializationVisitor")
}

fn c1_m14__getscalepropertiesp(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "scaleProperties")
}

fn c1_m15__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_common_seps = jr.call_static("CommonSeps", "getInstance_0", [])
        let l_common_labels = jr.call_static("CommonLabels", "getInstance_0", [])
        let l_string_buffer = jr.new("StringMaker", [])
        jr.call(l_string_buffer, "append_1", [jr.call_super("Object", this, "toString_0", [])])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_common_labels, "HEIGHT_LABEL")])
        jr.call(l_string_buffer, "appendint_1", [jr.call(jr.get_field(this, "image"), "getHeight_0", [])])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_common_seps, "SPACE")])
        jr.call(l_string_buffer, "append_1", [jr.call(jr.get_field(this, "animationFactoryInitializationVisitor"), "toString_0", [])])
    jr.call(l_string_buffer, "toString_0", [])
}

fn c1_jinit8(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image, l_sequence_array, l_width, l_height, l_dx, l_dy, l_animation_behavior_factory] = jargs
    let l_width = jr.as_i(l_width)
    let l_height = jr.as_i(l_height)
    let l_dx = jr.as_i(l_dx)
    let l_dy = jr.as_i(l_dy)
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "animationFactoryInitializationVisitor", jr.new("AnimationFactoryInitializationVisitor", []))
        jr.set_field(this, "image", l_image)
        jr.set_field(jr.get_field(this, "animationFactoryInitializationVisitor"), "width", jr.as_i(l_width))
        jr.set_field(jr.get_field(this, "animationFactoryInitializationVisitor"), "height", jr.as_i(l_height))
        jr.set_field(this, "animationBehaviorFactory", l_animation_behavior_factory)
        jr.set_field(this, "sequenceArray", l_sequence_array)
        jr.set_field(jr.get_field(this, "animationFactoryInitializationVisitor"), "dx", jr.as_i(l_dx))
        jr.set_field(jr.get_field(this, "animationFactoryInitializationVisitor"), "dy", jr.as_i(l_dy))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "BaseImageAnimationFactory",
        "org.allbinary.animation.image.BaseImageAnimationFactory",
        "Object",
        ["AnimationInterfaceFactoryInterface"],
        False,
        [#("animationFactoryImageScaleUtil", jr.JNull), #("image", jr.JNull), #("animationBehaviorFactory", jr.JNull), #("sequenceArray", jr.JNull), #("animationFactoryInitializationVisitor", jr.JNull), #("scaleProperties", jr.JNull)],
        [],
        [
            jr.Method("createFactoryBase_5", ["Image", "intArr", "int", "int", "AnimationBehaviorFactory"], True, c1_m1__createfactorybase), 
            jr.Method("getInstance_1", ["int"], False, c1_m9__getinstance), 
            jr.Method("getImage_0", [], False, c1_m10__getimage), 
            jr.Method("getSequenceArray_0", [], False, c1_m11__getsequencearray), 
            jr.Method("setInitialScale_1", ["ScaleProperties"], False, c1_m12__setinitialscale), 
            jr.Method("getAnimationFactoryInitializationVisitorP_0", [], False, c1_m13__getanimationfactoryinitializationvisitorp), 
            jr.Method("getScalePropertiesP_0", [], False, c1_m14__getscalepropertiesp), 
            jr.Method("toString_0", [], False, c1_m15__tostring), 
            jr.Method("jinit_7", ["Image", "intArr", "int", "int", "int", "int", "AnimationBehaviorFactory"], False, c1_jinit8)],
        c1_jfields,
        c1_jclinit,
    )
}

