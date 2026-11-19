// Generated Code Do Not Modify
// package org.allbinary.game.combat.damage
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AnimationDamageFloaters

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m8__add(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_damage] = jargs
    let l_damage = jr.as_i(l_damage)
        let l_i = jr.as_i(jr.call(jr.get_field(this, "circularIndexUtil"), "getIndex_0", []))
        jr.call(jr.aget(jr.get_field(this, "animationInterfaceArray"), l_i), "setFrame_1", [jr.JInt(0)])
        jr.call(jr.get_field(this, "circularIndexUtil"), "next_0", [])
    jr.JNull
}

fn c1_m9__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        jr.try_catch(fn() {
            let l_view_position = jr.call(jr.get_field(this, "layerInterface"), "getViewPosition_0", [])
            let l_x = jr.as_i(jr.call(l_view_position, "getX_0", []))
            let l_y = jr.as_i(jr.call(l_view_position, "getY_0", []))
            {
                let l_index = jr.cell(jr.as_i(jr.JInt(0)))
                jr.for_loop("", fn() { jr.lt(jr.get(l_index), jr.alen(jr.get_field(this, "animationInterfaceArray"))) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
                let l_animation_interface = jr.aget(jr.get_field(this, "animationInterfaceArray"), jr.get(l_index))
                case jr.truth(jr.lt(jr.call(l_animation_interface, "getFrame_0", []), jr.sub(jr.call(l_animation_interface, "getAnimationSize_0", []), jr.JInt(1)))) {
                    True -> {
                    let l_delta = jr.as_i(jr.mul(jr.call(l_animation_interface, "getFrame_0", []), jr.JInt(20)))
                    jr.call(l_animation_interface, "paintXY_3", [l_graphics, jr.add(l_x, jr.get_field(this, "dx")), jr.add(jr.sub(l_y, l_delta), jr.get_field(this, "dy"))])
                    jr.call(l_animation_interface, "nextFrame_0", [])
                    Nil
                }
                    False -> Nil
                }
                Nil
            })
                Nil
            }
            Nil
        }, [#(["Exception"], fn(l_e) { {
            let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
            let l_canvas_strings = jr.call_static("CanvasStrings", "getInstance_0", [])
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(l_common_strings, "EXCEPTION"), this, jr.get_field(l_canvas_strings, "PAINT"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_jinit7(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_interface, l_animation_interface_array, l_dx, l_dy] = jargs
    let l_dx = jr.as_i(l_dx)
    let l_dy = jr.as_i(l_dy)
    jr.super_init("DamageFloaters", this, [])
    c1_jfields(this)
        jr.set_field(this, "animationInterfaceArray", l_animation_interface_array)
        {
            let l_index = jr.cell(jr.as_i(jr.sub(jr.alen(jr.get_field(this, "animationInterfaceArray")), jr.JInt(1))))
            jr.for_loop("", fn() { jr.ge(jr.get(l_index), jr.JInt(0)) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, True) Nil }, fn() {
            jr.call(jr.aget(jr.get_field(this, "animationInterfaceArray"), jr.get(l_index)), "setFrame_1", [jr.sub(jr.call(jr.aget(jr.get_field(this, "animationInterfaceArray"), jr.get(l_index)), "getSize_0", []), jr.JInt(1))])
            Nil
        })
            Nil
        }
        jr.set_field(this, "layerInterface", l_layer_interface)
        jr.set_field(this, "circularIndexUtil", jr.call_static("CircularIndexUtil", "createInstance_1", [jr.alen(jr.get_field(this, "animationInterfaceArray"))]))
        jr.set_field(this, "dx", jr.as_i(l_dx))
        jr.set_field(this, "dy", jr.as_i(l_dy))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AnimationDamageFloaters",
        "org.allbinary.game.combat.damage.AnimationDamageFloaters",
        "DamageFloaters",
        [],
        False,
        [#("logUtil", jr.JNull), #("layerInterface", jr.JNull), #("animationInterfaceArray", jr.JNull), #("circularIndexUtil", jr.JNull), #("dx", jr.JInt(0)), #("dy", jr.JInt(0))],
        [],
        [
            jr.Method("add_1", ["int"], False, c1_m8__add), 
            jr.Method("paint_1", ["Graphics"], False, c1_m9__paint), 
            jr.Method("jinit_4", ["AllBinaryLayer", "IndexedAnimationArr", "int", "int"], False, c1_jinit7)],
        c1_jfields,
        c1_jclinit,
    )
}

