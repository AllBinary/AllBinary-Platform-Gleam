// Generated Code Do Not Modify
// package org.allbinary.game.part
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CountedLayersHudPaintable

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "displayInfoSingleton", jr.call_static("DisplayInfoSingleton", "getInstance_0", []))
    jr.set_field(this, "myFontProcessor", jr.new("UpdateMyFontProcessor", [this]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m11__updatemeasurement(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        let l_font = jr.call(l_graphics, "getFont_0", [])
        jr.set_field(this, "height", jr.as_i(jr.call(l_font, "getHeight_0", [])))
        case jr.truth(jr.gt(jr.get_field(this, "dropSize"), jr.call(l_font, "getHeight_0", []))) {
            True -> {
            jr.set_field(this, "height", jr.as_i(jr.get_field(this, "dropSize")))
            Nil
        }
            False -> Nil
        }
        case jr.truth(jr.eq(jr.get_static("CountedLayersHudPaintable", "XXStringWidth"), jr.JInt(0))) {
            True -> {
            let l__x_x_string = jr.JStr("XX")
            jr.set_static("CountedLayersHudPaintable", "XXStringWidth", jr.as_i(jr.call(l_font, "stringWidth_1", [l__x_x_string])))
            Nil
        }
            False -> Nil
        }
        jr.set_field(this, "myFontProcessor", jr.call_static("MyFontProcessor", "getInstance_0", []))
    jr.JNull
}

fn c1_m12__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        jr.call(jr.get_field(this, "myFontProcessor"), "process_1", [l_graphics])
        let l_last_width = jr.as_i(jr.call(jr.get_field(this, "displayInfoSingleton"), "getLastWidth_0", []))
        let l_width_edge = jr.as_i(jr.sub(l_last_width, jr.get_field(this, "dropSize")))
        let l_size = jr.as_i(jr.alen(jr.get_field(this, "partInterfaceArray")))
        let l_count = jr.cell(jr.as_i(jr.JInt(0)))
        let l_y = jr.cell(jr.as_i(jr.JInt(0)))
        let l_counted_layer_interface_factory = jr.cell(jr.JNull)
        let l_picked_up_layer_interface_factory_interface = jr.cell(jr.JNull)
        let l_layer_interface = jr.cell(jr.JNull)
        let l_char_array = jr.cell(jr.JNull)
        {
            let l_index = jr.cell(jr.as_i(jr.get_field(this, "startIndex")))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.set(l_counted_layer_interface_factory, jr.aget(jr.get_field(this, "partInterfaceArray"), jr.get(l_index)))
            case jr.truth(jr.gt(jr.call(jr.get(l_counted_layer_interface_factory), "getTotal_0", []), jr.JInt(0))) {
                True -> {
                jr.set(l_picked_up_layer_interface_factory_interface, jr.call(jr.get(l_counted_layer_interface_factory), "getCountedPickedUpLayerInterfaceFactory_0", []))
                jr.set(l_layer_interface, jr.call(jr.get(l_picked_up_layer_interface_factory_interface), "getIconLayer_0", []))
                jr.set(l_y, jr.as_i(jr.add(jr.JInt(40), jr.mul(jr.get(l_count), jr.get_field(this, "height")))))
                jr.call(jr.get(l_layer_interface), "setPosition_3", [l_width_edge, jr.get(l_y), jr.call(jr.get(l_layer_interface), "getZP_0", [])])
                jr.call(jr.get(l_layer_interface), "paint_1", [l_graphics])
                jr.call(l_graphics, "setColor_1", [jr.get_field(this, "countedTotalStringColor")])
                jr.call(jr.get(l_counted_layer_interface_factory), "paint_1", [l_graphics])
                jr.set(l_char_array, jr.call(jr.get(l_counted_layer_interface_factory), "getTotalString_0", []))
                jr.call(l_graphics, "drawChars_6", [jr.get(l_char_array), jr.JInt(0), jr.alen(jr.get(l_char_array)), jr.sub(l_width_edge, jr.call(jr.get(l_counted_layer_interface_factory), "getXOffset_0", [])), jr.get(l_y), jr.JInt(0)])
                jr.incr(fn() { jr.get(l_count) }, fn(jv) { jr.set(l_count, jv) }, 1, True)
                Nil
            }
                False -> Nil
            }
            Nil
        })
            Nil
        }
        case jr.truth(jr.gt(jr.get(l_count), jr.JInt(0))) {
            True -> {
            jr.call(l_graphics, "setColor_1", [jr.get_field(this, "countedPartsBorder")])
            jr.call(l_graphics, "drawRect_4", [jr.sub(l_last_width, jr.add(jr.get_static("CountedLayersHudPaintable", "XXStringWidth"), jr.get_field(this, "dropSize"))), jr.JInt(40), jr.add(jr.get_static("CountedLayersHudPaintable", "XXStringWidth"), jr.get_field(this, "dropSize")), jr.add(jr.mul(jr.get(l_count), jr.get_field(this, "height")), jr.JInt(3))])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m13__paintthreed(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
    jr.JNull
}

fn c1_jinit10(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_part_interface_array, l_drop_size, l_start_index, l_counted_total_string_color, l_counted_parts_border] = jargs
    let l_drop_size = jr.as_i(l_drop_size)
    let l_start_index = jr.as_i(l_start_index)
    let l_counted_total_string_color = jr.as_i(l_counted_total_string_color)
    let l_counted_parts_border = jr.as_i(l_counted_parts_border)
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "partInterfaceArray", l_part_interface_array)
        jr.set_field(this, "startIndex", jr.as_i(l_start_index))
        jr.set_field(this, "countedTotalStringColor", jr.as_i(l_counted_total_string_color))
        jr.set_field(this, "countedPartsBorder", jr.as_i(l_counted_parts_border))
        jr.set_field(this, "dropSize", jr.as_i(l_drop_size))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CountedLayersHudPaintable",
        "org.allbinary.game.part.CountedLayersHudPaintable",
        "Object",
        ["PaintableInterface", "UpdateMyFontInterface"],
        False,
        [#("displayInfoSingleton", jr.JNull), #("partInterfaceArray", jr.JNull), #("countedTotalStringColor", jr.JInt(0)), #("countedPartsBorder", jr.JInt(0)), #("startIndex", jr.JInt(0)), #("dropSize", jr.JInt(0)), #("myFontProcessor", jr.JNull), #("height", jr.JInt(0))],
        [#("XXStringWidth", jr.as_i(jr.JInt(0)))],
        [
            jr.Method("updateMeasurement_1", ["Graphics"], False, c1_m11__updatemeasurement), 
            jr.Method("paint_1", ["Graphics"], False, c1_m12__paint), 
            jr.Method("paintThreed_1", ["Graphics"], False, c1_m13__paintthreed), 
            jr.Method("jinit_5", ["PartInterfaceArr", "int", "int", "int", "int"], False, c1_jinit10)],
        c1_jfields,
        c1_jclinit,
    )
}

