// Generated Code Do Not Modify
// package org.allbinary.animation.caption
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CaptionIndexedAnimation

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m12__nextframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.call(jr.get_field(this, "timeDelayHelper"), "isTime_1", [jr.get_field(jr.call_static("GameTickTimeDelayHelperFactory", "getInstance_0", []), "startTime")])) {
            True -> {
            jr.call(jr.get_field(this, "movieIndexedAnimationInterface"), "nextFrame_0", [])
            Nil
        }
            False -> Nil
        }
        case jr.truth(jr.call(this, "isLastFrame_0", [])) {
            True -> {
            jr.call(jr.call_static("AnimationEventHandler", "getInstance_0", []), "fireEvent_1", [jr.get_field(this, "END_EVENT")])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m13__islastframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.method(fn() {
            case jr.truth(jr.eq(jr.call(jr.get_field(this, "movieIndexedAnimationInterface"), "getFrame_0", []), jr.sub(jr.call(this, "getSize_0", []), jr.JInt(1)))) {
            True -> {
            jr.ret(jr.JBool(True))
            Nil
        }
            False -> {
            jr.ret(jr.JBool(False))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_m14__previousframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "movieIndexedAnimationInterface"), "previousFrame_0", [])
    jr.JNull
}

fn c1_m15__setframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_index] = jargs
    let l_index = jr.as_i(l_index)
        jr.call(jr.get_field(this, "movieIndexedAnimationInterface"), "setFrame_1", [l_index])
    jr.JNull
}

fn c1_m16__getframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.call(jr.get_field(this, "movieIndexedAnimationInterface"), "getFrame_0", []))
}

fn c1_m17__getsize(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.call(jr.get_field(this, "movieIndexedAnimationInterface"), "getSize_0", []))
}

fn c1_m18__setsequence(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_sequence] = jargs
    jr.JNull
}

fn c1_m19__getsequence(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call_static("PrimitiveIntUtil", "getArrayInstance_0", [])
}

fn c1_m20__paintxy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_x, l_y] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
        jr.call(jr.get_field(this, "animationInterface"), "paintXY_3", [l_graphics, jr.add(l_x, jr.get_field(this, "captionDx")), jr.add(l_y, jr.get_field(this, "captionDy"))])
        jr.call(jr.get_field(this, "movieIndexedAnimationInterface"), "paintXY_3", [l_graphics, jr.add(jr.add(l_x, jr.get_field(this, "captionDx")), jr.get_field(this, "dx")), jr.add(jr.add(l_y, jr.get_field(this, "captionDy")), jr.get_field(this, "dy"))])
    jr.JNull
}

fn c1_m21__paintthreedxyz(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_x, l_y, l_z] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    let l_z = jr.as_i(l_z)
        jr.call(jr.get_field(this, "animationInterface"), "paintThreedXYZ_4", [l_graphics, jr.add(l_x, jr.get_field(this, "captionDx")), jr.add(l_y, jr.get_field(this, "captionDy")), l_z])
        jr.call(jr.get_field(this, "movieIndexedAnimationInterface"), "paintThreedXYZ_4", [l_graphics, jr.add(jr.add(l_x, jr.get_field(this, "captionDx")), jr.get_field(this, "dx")), jr.add(jr.add(l_y, jr.get_field(this, "captionDy")), jr.get_field(this, "dy")), l_z])
    jr.JNull
}

fn c1_jinit11(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_animation_interface, l_movie_indexed_animation_interface, l_player, l_caption_dx, l_caption_dy, l_dx, l_dy, l_time, l_animation_behavior] = jargs
    let l_caption_dx = jr.as_i(l_caption_dx)
    let l_caption_dy = jr.as_i(l_caption_dy)
    let l_dx = jr.as_i(l_dx)
    let l_dy = jr.as_i(l_dy)
    let l_time = jr.as_i(l_time)
        jr.super_init("IndexedAnimation", this, [l_animation_behavior])
        c1_jfields(this)
        jr.set_field(this, "animationInterface", l_animation_interface)
        jr.set_field(this, "movieIndexedAnimationInterface", l_movie_indexed_animation_interface)
        jr.set_field(this, "captionDx", jr.as_i(l_caption_dx))
        jr.set_field(this, "captionDy", jr.as_i(l_caption_dy))
        jr.set_field(this, "dx", jr.as_i(l_dx))
        jr.set_field(this, "dy", jr.as_i(l_dy))
        jr.set_field(this, "time", jr.as_i(l_time))
        jr.set_field(this, "END_EVENT", jr.new("AllBinaryEventObject", [this]))
        let l_time_per_frame = jr.as_i(jr.div(jr.get_field(this, "time"), jr.call(this, "getSize_0", [])))
        jr.set_field(this, "timeDelayHelper", jr.new("TimeDelayHelper", [l_time_per_frame]))
        jr.set_field(this, "player", l_player)
        jr.call(jr.get_field(this, "player"), "start_0", [])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CaptionIndexedAnimation",
        "org.allbinary.animation.caption.CaptionIndexedAnimation",
        "IndexedAnimation",
        [],
        False,
        [#("animationInterface", jr.JNull), #("movieIndexedAnimationInterface", jr.JNull), #("captionDx", jr.JInt(0)), #("captionDy", jr.JInt(0)), #("dx", jr.JInt(0)), #("dy", jr.JInt(0)), #("time", jr.JInt(0)), #("END_EVENT", jr.JNull), #("timeDelayHelper", jr.JNull), #("player", jr.JNull)],
        [],
        [
            jr.Method("nextFrame_0", [], False, c1_m12__nextframe), 
            jr.Method("isLastFrame_0", [], False, c1_m13__islastframe), 
            jr.Method("previousFrame_0", [], False, c1_m14__previousframe), 
            jr.Method("setFrame_1", ["int"], False, c1_m15__setframe), 
            jr.Method("getFrame_0", [], False, c1_m16__getframe), 
            jr.Method("getSize_0", [], False, c1_m17__getsize), 
            jr.Method("setSequence_1", ["intArr"], False, c1_m18__setsequence), 
            jr.Method("getSequence_0", [], False, c1_m19__getsequence), 
            jr.Method("paintXY_3", ["Graphics", "int", "int"], False, c1_m20__paintxy), 
            jr.Method("paintThreedXYZ_4", ["Graphics", "int", "int", "int"], False, c1_m21__paintthreedxyz), 
            jr.Method("jinit_9", ["Animation", "IndexedAnimation", "Player", "int", "int", "int", "int", "int", "AnimationBehavior"], False, c1_jinit11)],
        c1_jfields,
        c1_jclinit,
    )
}

