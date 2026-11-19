// Generated Code Do Not Modify
// package org.allbinary.animation.image.sprite
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class SpriteIndexedAnimation

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m5__getanimationsize(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.call(this, "getSize_0", []))
}

fn c1_m6__setbasiccolorp(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_basic_color] = jargs
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), jr.alen(jr.get_field(this, "basicColorArray"))) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            case jr.truth(jr.eq(l_basic_color, jr.aget(jr.get_field(this, "basicColorArray"), jr.get(l_index)))) {
                True -> {
                jr.call(this, "setFrame_1", [jr.get(l_index)])
                jr.brk("")
                Nil
            }
                False -> Nil
            }
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_m7__getbasiccolorp(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.method(fn() {
            case jr.truth(jr.lt(jr.alen(jr.get_field(this, "basicColorArray")), jr.call(this, "getFrame_0", []))) {
            True -> {
            jr.ret(jr.aget(jr.get_field(this, "basicColorArray"), jr.call(this, "getFrame_0", [])))
            Nil
        }
            False -> {
            jr.ret(jr.get_field(jr.call_static("BasicColorFactory", "getInstance_0", []), "WHITE"))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_m8__paintframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_frame, l_x, l_y] = jargs
    let l_frame = jr.as_i(l_frame)
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
        jr.call(this, "setFrame_1", [l_frame])
        jr.call(jr.get_field(this, "sprite"), "setPosition_2", [l_x, l_y])
        jr.call(jr.get_field(this, "sprite"), "paint_1", [l_graphics])
    jr.JNull
}

fn c1_m9__paintxy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_x, l_y] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
        jr.call(jr.get_field(this, "sprite"), "setPosition_2", [l_x, l_y])
        jr.call(jr.get_field(this, "sprite"), "paint_1", [l_graphics])
    jr.JNull
}

fn c1_m10__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        jr.call(jr.get_field(this, "sprite"), "paint_1", [l_graphics])
    jr.JNull
}

fn c1_m11__nextframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "sprite"), "nextFrame_0", [])
    jr.JNull
}

fn c1_m12__previousframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "sprite"), "prevFrame_0", [])
    jr.JNull
}

fn c1_m13__getsize(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.call(jr.get_field(this, "sprite"), "getRawFrameCount_0", []))
}

fn c1_m14__setframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_frame] = jargs
    let l_frame = jr.as_i(l_frame)
        jr.call(jr.get_field(this, "sprite"), "setFrame_1", [l_frame])
    jr.JNull
}

fn c1_m15__getframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.call(jr.get_field(this, "sprite"), "getFrame_0", []))
}

fn c1_m16__islastframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.method(fn() {
            case jr.truth(jr.eq(jr.call(jr.get_field(this, "sprite"), "getFrame_0", []), jr.sub(jr.call(this, "getSize_0", []), jr.JInt(1)))) {
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

fn c1_m17__getlastframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.call(this, "getSize_0", []))
}

fn c1_m18__setsequence(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_sequence] = jargs
    jr.JNull
}

fn c1_m19__getsequence(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call_static("PrimitiveIntUtil", "getArrayInstance_0", [])
}

fn c1_m20__close(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m21__finalize(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_sprite, l_image, l_basic_color_array, l_animation_behavior] = jargs
        jr.super_init("IndexedAnimation", this, [l_animation_behavior])
        c1_jfields(this)
        jr.set_field(this, "sprite", l_sprite)
        jr.set_field(this, "image", l_image)
        jr.set_field(this, "basicColorArray", l_basic_color_array)
        case jr.truth(case jr.truth(jr.ne(jr.alen(jr.get_field(this, "basicColorArray")), jr.JInt(0))) { True -> jr.ne(jr.call(this, "getSize_0", []), jr.alen(jr.get_field(this, "basicColorArray"))) False -> jr.JBool(False) }) {
            True -> {
            jr.throw(jr.new("Exception", [jr.call(jr.call(jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(jr.call_static("CommonLabels", "getInstance_0", []), "TOTAL_LABEL")]), "appendint_1", [jr.call(this, "getSize_0", [])]), "append_1", [jr.JStr("!=")]), "appendint_1", [jr.alen(jr.get_field(this, "basicColorArray"))]), "toString_0", [])]))
            Nil
        }
            False -> Nil
        }
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "SpriteIndexedAnimation",
        "org.allbinary.animation.image.sprite.SpriteIndexedAnimation",
        "IndexedAnimation",
        ["ColorCompositeInterface"],
        False,
        [#("sprite", jr.JNull), #("image", jr.JNull), #("basicColorArray", jr.JNull)],
        [],
        [
            jr.Method("getAnimationSize_0", [], False, c1_m5__getanimationsize), 
            jr.Method("setBasicColorP_1", ["BasicColor"], False, c1_m6__setbasiccolorp), 
            jr.Method("getBasicColorP_0", [], False, c1_m7__getbasiccolorp), 
            jr.Method("paintFrame_4", ["Graphics", "int", "int", "int"], False, c1_m8__paintframe), 
            jr.Method("paintXY_3", ["Graphics", "int", "int"], False, c1_m9__paintxy), 
            jr.Method("paint_1", ["Graphics"], False, c1_m10__paint), 
            jr.Method("nextFrame_0", [], False, c1_m11__nextframe), 
            jr.Method("previousFrame_0", [], False, c1_m12__previousframe), 
            jr.Method("getSize_0", [], False, c1_m13__getsize), 
            jr.Method("setFrame_1", ["int"], False, c1_m14__setframe), 
            jr.Method("getFrame_0", [], False, c1_m15__getframe), 
            jr.Method("isLastFrame_0", [], False, c1_m16__islastframe), 
            jr.Method("getLastFrame_0", [], False, c1_m17__getlastframe), 
            jr.Method("setSequence_1", ["intArr"], False, c1_m18__setsequence), 
            jr.Method("getSequence_0", [], False, c1_m19__getsequence), 
            jr.Method("close_0", [], False, c1_m20__close), 
            jr.Method("finalize_0", [], False, c1_m21__finalize), 
            jr.Method("jinit_4", ["Sprite", "Image", "BasicColorArr", "AnimationBehavior"], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}

