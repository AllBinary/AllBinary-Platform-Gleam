// Generated Code Do Not Modify
// package org.allbinary.graphics.draw
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class DrawVerticalStringUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "EMPTY_STRING", jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"))
    jr.set_field(this, "anchor", jr.as_i(jr.get_static("Anchor", "TOP_LEFT")))
    jr.set_field(this, "offsetXArray", jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_INT_ARRAY"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("DrawVerticalStringUtil", "instance", jr.new("DrawVerticalStringUtil", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("DrawVerticalStringUtil", "instance")
}

fn c1_m8__updatemeasurement(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_string] = jargs
        let l_open_g_l_feature_util = jr.call_static("OpenGLFeatureUtil", "getInstance_0", [])
        let l_font = jr.call(l_graphics, "getFont_0", [])
        jr.set_field(this, "charHeight", jr.as_i(jr.call(l_font, "getHeight_0", [])))
        jr.set_field(this, "offsetY", jr.as_i(jr.JInt(0)))
        case jr.truth(jr.call_static("J2MEUtil", "isHTML_0", [])) {
            True -> {
            jr.compound(fn() { jr.get_field(this, "charHeight") }, fn(jv) { jr.add(jv, jr.JInt(1)) }, fn(jv) { jr.set_field(this, "charHeight", jv) })
            Nil
        }
            False -> case jr.truth(jr.call(l_open_g_l_feature_util, "isAnyThreed_0", [])) {
            True -> {
            jr.compound(fn() { jr.get_field(this, "charHeight") }, fn(jv) { jr.add(jv, jr.JInt(2)) }, fn(jv) { jr.set_field(this, "charHeight", jv) })
            case jr.truth(jr.call_static("AndroidUtil", "isAndroid_0", [])) {
                True -> {
                Nil
            }
                False -> {
                jr.set_field(this, "offsetY", jr.as_i(jr.add(jr.JInt(2), jr.div(jr.mul(jr.get_field(this, "charHeight"), jr.JInt(2)), jr.JInt(3)))))
                Nil
            }
            }
            Nil
        }
            False -> Nil
        }
        }
        let l_size = jr.as_i(jr.call(l_string, "length_0", []))
        let l_a_char = jr.cell(jr.as_c(jr.JChar(0)))
        let l_offset_x_array = jr.new_array("I", 1, [l_size])
        {
            let l_index = jr.cell(jr.as_i(jr.sub(l_size, jr.JInt(1))))
            jr.for_loop("", fn() { jr.ge(jr.get(l_index), jr.JInt(0)) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, True) Nil }, fn() {
            jr.set(l_a_char, jr.as_c(jr.call(l_string, "charAt_1", [jr.get(l_index)])))
            case jr.truth(jr.call(l_open_g_l_feature_util, "isAnyThreed_0", [])) {
                True -> {
                jr.aset(l_offset_x_array, jr.get(l_index), jr.as_i(jr.div(jr.call(l_font, "charWidth_1", [jr.get(l_a_char)]), jr.JInt(2))))
                Nil
            }
                False -> Nil
            }
            Nil
        })
            Nil
        }
        jr.set_field(this, "offsetXArray", l_offset_x_array)
    jr.JNull
}

fn c1_m9__paintverticle(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_string, l_x, l_y, l_anchor] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    let l_anchor = jr.as_i(l_anchor)
        let l_size = jr.as_i(jr.call(l_string, "length_0", []))
        let l_a_char = jr.cell(jr.as_c(jr.JChar(0)))
        {
            let l_index = jr.cell(jr.as_i(jr.sub(l_size, jr.JInt(1))))
            jr.for_loop("", fn() { jr.ge(jr.get(l_index), jr.JInt(0)) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, True) Nil }, fn() {
            jr.set(l_a_char, jr.as_c(jr.call(l_string, "charAt_1", [jr.get(l_index)])))
            jr.call(l_graphics, "drawChar_4", [jr.get(l_a_char), jr.add(l_x, jr.aget(jr.get_field(this, "offsetXArray"), jr.get(l_index))), jr.add(jr.add(l_y, jr.mul(jr.get_field(this, "charHeight"), jr.get(l_index))), jr.get_field(this, "offsetY")), l_anchor])
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_m10__drawcenterstring(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_string, l_offset, l_length, l_x, l_y] = jargs
    let l_offset = jr.as_i(l_offset)
    let l_length = jr.as_i(l_length)
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
        let l_width = jr.as_i(jr.shr(jr.call(jr.call(l_graphics, "getFont_0", []), "substringWidth_3", [l_string, l_offset, l_length]), jr.JInt(1)))
        jr.try_catch(fn() {
            jr.call(l_graphics, "drawSubstring_6", [l_string, l_offset, l_length, jr.sub(l_x, l_width), l_y, jr.get_field(this, "anchor")])
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call_static("PreLogUtil", "put_3", [jr.call(jr.call(jr.call(jr.call(jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.JStr("Exception: stringLength: ")]), "appendint_1", [jr.call(l_string, "length_0", [])]), "append_1", [jr.JStr(" offset: ")]), "appendint_1", [l_offset]), "append_1", [jr.JStr(" currentLength: ")]), "appendint_1", [l_length]), "toString_0", []), this, jr.JStr("drawCenterString")])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_m11__drawcenterstrings(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_string_array, l_max_width, l_x, l_y] = jargs
    let l_max_width = jr.as_i(l_max_width)
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
        let l_extra_lines = jr.cell(jr.as_i(jr.JInt(0)))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), jr.alen(l_string_array)) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            let l_string = jr.aget(l_string_array, jr.get(l_index))
            case jr.truth(jr.ne(l_string, jr.get_field(this, "EMPTY_STRING"))) {
                True -> {
                let l_width = jr.as_i(jr.call(jr.call(l_graphics, "getFont_0", []), "stringWidth_1", [l_string]))
                let l_min_total_lines = jr.cell(jr.as_i(jr.JInt(1)))
                case jr.truth(jr.gt(l_width, l_max_width)) {
                    True -> {
                    jr.set(l_min_total_lines, jr.as_i(jr.add(jr.div(l_width, l_max_width), jr.JInt(1))))
                    Nil
                }
                    False -> Nil
                }
                let l_line_portion = jr.as_i(jr.div(jr.call(l_string, "length_0", []), jr.get(l_min_total_lines)))
                let l_offset = jr.cell(jr.as_i(jr.JInt(0)))
                let l_current_length = jr.cell(jr.as_i(l_line_portion))
                let l_size = jr.as_i(jr.call(l_string, "length_0", []))
                jr.while_loop("", fn() { jr.lt(jr.get(l_offset), l_size) }, fn() {
                    case jr.truth(jr.gt(jr.add(jr.get(l_offset), jr.get(l_current_length)), l_size)) {
                        True -> {
                        jr.set(l_current_length, jr.as_i(jr.sub(l_size, jr.get(l_offset))))
                        Nil
                    }
                        False -> Nil
                    }
                    case jr.truth(jr.ne(jr.add(jr.get(l_offset), jr.get(l_current_length)), l_size)) {
                        True -> {
                        jr.while_loop("", fn() { case jr.truth(jr.gt(jr.get(l_current_length), jr.JInt(0))) { True -> jr.ne(jr.call(jr.aget(l_string_array, jr.get(l_index)), "charAt_1", [jr.add(jr.get(l_offset), jr.get(l_current_length))]), jr.JChar(32)) False -> jr.JBool(False) } }, fn() {
                            jr.incr(fn() { jr.get(l_current_length) }, fn(jv) { jr.set(l_current_length, jv) }, -1, True)
                            Nil
                        })
                        case jr.truth(jr.le(jr.get(l_current_length), jr.JInt(4))) {
                            True -> {
                            jr.set(l_current_length, jr.as_i(l_line_portion))
                            Nil
                        }
                            False -> Nil
                        }
                        Nil
                    }
                        False -> Nil
                    }
                    jr.call(this, "drawCenterString_6", [l_graphics, l_string, jr.get(l_offset), jr.get(l_current_length), l_x, jr.add(l_y, jr.mul(jr.add(jr.get(l_index), jr.incr(fn() { jr.get(l_extra_lines) }, fn(jv) { jr.set(l_extra_lines, jv) }, 1, True)), jr.get_field(this, "charHeight")))])
                    jr.set(l_offset, jr.as_i(jr.add(jr.get(l_offset), jr.get(l_current_length))))
                    jr.set(l_current_length, jr.as_i(l_line_portion))
                    Nil
                })
                jr.incr(fn() { jr.get(l_extra_lines) }, fn(jv) { jr.set(l_extra_lines, jv) }, -1, True)
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

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "DrawVerticalStringUtil",
        "org.allbinary.graphics.draw.DrawVerticalStringUtil",
        "Object",
        [],
        False,
        [#("EMPTY_STRING", jr.JNull), #("anchor", jr.JInt(0)), #("charHeight", jr.JInt(0)), #("offsetY", jr.JInt(0)), #("offsetXArray", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("updateMeasurement_2", ["Graphics", "String"], False, c1_m8__updatemeasurement), 
            jr.Method("paintVerticle_5", ["Graphics", "String", "int", "int", "int"], False, c1_m9__paintverticle), 
            jr.Method("drawCenterString_6", ["Graphics", "String", "int", "int", "int", "int"], False, c1_m10__drawcenterstring), 
            jr.Method("drawCenterStrings_5", ["Graphics", "StringArr", "int", "int", "int"], False, c1_m11__drawcenterstrings), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

