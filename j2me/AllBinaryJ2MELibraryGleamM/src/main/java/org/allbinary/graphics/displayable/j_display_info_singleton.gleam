// Generated Code Do Not Modify
// package org.allbinary.graphics.displayable
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class DisplayInfoSingleton

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "commonLabels", jr.call_static("CommonLabels", "getInstance_0", []))
    jr.set_field(this, "commonSeps", jr.call_static("CommonSeps", "getInstance_0", []))
    jr.set_field(this, "commonStrings", jr.call_static("CommonStrings", "getInstance_0", []))
    jr.set_field(this, "ORIENTATION", jr.JStr("ORIENTATION"))
    jr.set_field(this, "ADJUSTING_FOR_SCALING_IN_PORTRAIT", jr.JStr("Adjusting for Scaling in portrait display ratio: "))
    jr.set_field(this, "ADJUSTING_FOR_SCALING_IN_LANDSCAPE", jr.JStr("Adjusting for Scaling in landscape display ratio: "))
    jr.set_field(this, "last", jr.new_array("I", 1, [jr.JInt(4)]))
    jr.set_field(this, "lastHalf", jr.new_array("I", 1, [jr.JInt(4)]))
    jr.set_field(this, "full", jr.new_array("I", 1, [jr.JInt(4)]))
    jr.set_field(this, "WIDTH", jr.as_i(jr.JInt(0)))
    jr.set_field(this, "HEIGHT", jr.as_i(jr.JInt(1)))
    jr.set_field(this, "CUSTOM_WIDTH", jr.as_i(jr.JInt(2)))
    jr.set_field(this, "CUSTOM_HEIGHT", jr.as_i(jr.JInt(3)))
    jr.set_field(this, "scalableListener", jr.new("BaseScalable", []))
    jr.set_field(this, "ratio", jr.as_f(jr.JFloat(1.0)))
    jr.set_field(this, "SET_LAST_SIZE_METHOD_NAME", jr.JStr("setLastSize"))
    jr.set_field(this, "FULL_WIDTH", jr.JStr(" FullWidth: "))
    jr.set_field(this, "FULL_HEIGHT", jr.JStr(" FullHeight: "))
    jr.set_field(this, "LAST_WIDTH", jr.JStr("LastWidth: "))
    jr.set_field(this, "LAST_HEIGHT", jr.JStr(" LastHeight: "))
    jr.set_field(this, "PORTRAIT", jr.JStr("Portrait"))
    jr.set_field(this, "LANDSCAPE", jr.JStr("Landscape"))
    jr.set_field(this, "displayChangeEvent", jr.new("DisplayChangeEvent", [this]))
    jr.set_field(this, "FIRE_METHOD_NAME", jr.JStr("fire"))
    jr.set_field(this, "REASON", jr.JStr("reason: "))
    jr.set_field(this, "UPDATE_FROM_ORIENTATION_CHANGE", jr.JStr("Updating from Orientation Change "))
    jr.set_field(this, "list", jr.new("BasicArrayListD", []))
    jr.set_field(this, "DISPLAY_INFO", jr.JStr("Display Info: "))
    jr.set_field(this, "FULL", jr.JStr("full"))
    jr.set_field(this, "LAST", jr.JStr("last"))
    jr.set_field(this, "LAST_HALF", jr.JStr("lastHalf"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("DisplayInfoSingleton", "SINGLETON", jr.new("DisplayInfoSingleton", []))
    jr.JNull
}

fn c1_m3__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("DisplayInfoSingleton", "SINGLETON")
}

fn c1_m26__getlasthalf(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "lastHalf")
}

fn c1_m27__getlast(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "last")
}

fn c1_m28__getfull(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "full")
}

fn c1_m29__getscalelargestto(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_f(jr.get_field(this, "scaleLargestTo"))
}

fn c1_m30__setscalelargestto(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_scale_largest_to] = jargs
    let l_scale_largest_to = jr.as_i(l_scale_largest_to)
        jr.set_field(this, "scaleLargestTo", jr.as_f(jr.to_f(l_scale_largest_to)))
    jr.JNull
}

fn c1_m38__setlastsize(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_a_last_width, l_a_last_height, l_reason] = jargs
    let l_a_last_width = jr.as_i(l_a_last_width)
    let l_a_last_height = jr.as_i(l_a_last_height)
        case jr.truth(case jr.truth(jr.ne(jr.aget(jr.get_field(this, "full"), jr.get_field(this, "WIDTH")), l_a_last_width)) { True -> jr.JBool(True) False -> jr.ne(jr.aget(jr.get_field(this, "full"), jr.get_field(this, "HEIGHT")), l_a_last_height) }) {
            True -> {
            jr.call(this, "setLastSizeForce_3", [l_a_last_width, l_a_last_height, l_reason])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m39__setlastsizeforce(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_a_last_width, l_a_last_height, l_reason] = jargs
    let l_a_last_width = jr.cell(jr.as_i(l_a_last_width))
    let l_a_last_height = jr.cell(jr.as_i(l_a_last_height))
        let l_string_maker = jr.new("StringMaker", [])
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(jr.call(jr.call(l_string_maker, "append_1", [jr.get_field(jr.call_static("CommonLabels", "getInstance_0", []), "START_LABEL")]), "append_1", [l_reason]), "toString_0", []), this, jr.get_field(this, "SET_LAST_SIZE_METHOD_NAME")])
        let l_a_full_width = jr.as_i(jr.get(l_a_last_width))
        let l_a_full_height = jr.as_i(jr.get(l_a_last_height))
        jr.call(l_string_maker, "delete_2", [jr.JInt(0), jr.call(l_string_maker, "length_0", [])])
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.call(jr.call(jr.call(l_string_maker, "append_1", [jr.get_field(this, "FULL_WIDTH")]), "appendint_1", [l_a_full_width]), "append_1", [jr.get_field(this, "FULL_HEIGHT")]), "appendint_1", [l_a_full_height]), "append_1", [jr.call(this, "toString_0", [])]), "toString_0", []), this, jr.get_field(this, "SET_LAST_SIZE_METHOD_NAME")])
        let l_operating_system_interface = jr.call(jr.call_static("OperatingSystemFactory", "getInstance_0", []), "getOperatingSystemInstance_0", [])
        case jr.truth(jr.call(l_operating_system_interface, "isOverScan_0", [])) {
            True -> {
            jr.set(l_a_last_width, jr.as_i(jr.div(jr.mul(jr.get(l_a_last_width), jr.call(l_operating_system_interface, "getOverScanXPercent_0", [])), jr.JInt(100))))
            jr.set(l_a_last_height, jr.as_i(jr.div(jr.mul(jr.get(l_a_last_height), jr.call(l_operating_system_interface, "getOverScanYPercent_0", [])), jr.JInt(100))))
            Nil
        }
            False -> Nil
        }
        case jr.truth(jr.call(l_operating_system_interface, "isScalable_0", [])) {
            True -> {
            case jr.truth(jr.call(this, "isPortraitWH_2", [jr.get(l_a_last_width), jr.get(l_a_last_height)])) {
                True -> {
                case jr.truth(jr.gt(jr.to_f(jr.get(l_a_last_height)), jr.get_field(this, "scaleLargestTo"))) {
                    True -> {
                    jr.set_field(this, "displayRatio", jr.as_f(jr.div(jr.get_field(this, "scaleLargestTo"), jr.to_f(jr.get(l_a_last_height)))))
                    jr.set_field(this, "ratio", jr.as_f(jr.div(jr.to_f(jr.get(l_a_last_height)), jr.get_field(this, "scaleLargestTo"))))
                    jr.call(l_string_maker, "delete_2", [jr.JInt(0), jr.call(l_string_maker, "length_0", [])])
                    jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(jr.call(jr.call(l_string_maker, "append_1", [jr.get_field(this, "ADJUSTING_FOR_SCALING_IN_PORTRAIT")]), "appendfloat_1", [jr.get_field(this, "displayRatio")]), "toString_0", []), this, jr.get_field(this, "SET_LAST_SIZE_METHOD_NAME")])
                    jr.set(l_a_last_width, jr.as_i(jr.to_i(jr.mul(jr.to_f(jr.get(l_a_last_width)), jr.get_field(this, "displayRatio")))))
                    jr.set(l_a_last_height, jr.as_i(jr.to_i(jr.mul(jr.to_f(jr.get(l_a_last_height)), jr.get_field(this, "displayRatio")))))
                    jr.call(jr.get_field(this, "scalableListener"), "scale_1", [jr.get_field(this, "ratio")])
                    Nil
                }
                    False -> {
                    jr.set_field(this, "ratio", jr.as_f(jr.JFloat(1.0)))
                    jr.call(jr.get_field(this, "scalableListener"), "scale_1", [jr.get_field(this, "ratio")])
                    Nil
                }
                }
                Nil
            }
                False -> {
                case jr.truth(jr.gt(jr.to_f(jr.get(l_a_last_width)), jr.get_field(this, "scaleLargestTo"))) {
                    True -> {
                    jr.set_field(this, "displayRatio", jr.as_f(jr.div(jr.get_field(this, "scaleLargestTo"), jr.to_f(jr.get(l_a_last_width)))))
                    jr.set_field(this, "ratio", jr.as_f(jr.div(jr.to_f(jr.get(l_a_last_width)), jr.get_field(this, "scaleLargestTo"))))
                    jr.call(l_string_maker, "delete_2", [jr.JInt(0), jr.call(l_string_maker, "length_0", [])])
                    jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(jr.call(jr.call(l_string_maker, "append_1", [jr.get_field(this, "ADJUSTING_FOR_SCALING_IN_LANDSCAPE")]), "appendfloat_1", [jr.get_field(this, "displayRatio")]), "toString_0", []), this, jr.get_field(this, "SET_LAST_SIZE_METHOD_NAME")])
                    jr.set(l_a_last_width, jr.as_i(jr.to_i(jr.mul(jr.to_f(jr.get(l_a_last_width)), jr.get_field(this, "displayRatio")))))
                    jr.set(l_a_last_height, jr.as_i(jr.to_i(jr.mul(jr.to_f(jr.get(l_a_last_height)), jr.get_field(this, "displayRatio")))))
                    jr.call(jr.get_field(this, "scalableListener"), "scale_1", [jr.get_field(this, "ratio")])
                    Nil
                }
                    False -> {
                    jr.set_field(this, "ratio", jr.as_f(jr.JFloat(1.0)))
                    jr.call(jr.get_field(this, "scalableListener"), "scale_1", [jr.get_field(this, "ratio")])
                    Nil
                }
                }
                Nil
            }
            }
            Nil
        }
            False -> Nil
        }
        jr.call(l_string_maker, "delete_2", [jr.JInt(0), jr.call(l_string_maker, "length_0", [])])
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.call(jr.call(l_string_maker, "append_1", [jr.get_field(this, "LAST_WIDTH")]), "appendint_1", [jr.get(l_a_last_width)]), "append_1", [jr.get_field(this, "LAST_HEIGHT")]), "appendint_1", [jr.get(l_a_last_height)]), "toString_0", []), this, jr.get_field(this, "SET_LAST_SIZE_METHOD_NAME")])
        jr.set_field(this, "xOffset", jr.as_i(jr.sub(l_a_full_width, jr.get(l_a_last_width))))
        jr.set_field(this, "yOffset", jr.as_i(jr.sub(l_a_full_height, jr.get(l_a_last_height))))
        jr.set_field(this, "left", jr.as_i(jr.call(jr.get_field(this, "scalableListener"), "getLeft_1", [jr.get_field(this, "xOffset")])))
        jr.set_field(this, "top", jr.as_i(jr.call(jr.get_field(this, "scalableListener"), "getTop_1", [jr.get_field(this, "yOffset")])))
        jr.aset(jr.get_field(this, "full"), jr.get_field(this, "WIDTH"), jr.as_i(l_a_full_width))
        jr.aset(jr.get_field(this, "full"), jr.get_field(this, "HEIGHT"), jr.as_i(l_a_full_height))
        jr.aset(jr.get_field(this, "last"), jr.get_field(this, "WIDTH"), jr.as_i(jr.get(l_a_last_width)))
        jr.aset(jr.get_field(this, "lastHalf"), jr.get_field(this, "WIDTH"), jr.as_i(jr.shr(jr.aget(jr.get_field(this, "last"), jr.get_field(this, "WIDTH")), jr.JInt(1))))
        jr.aset(jr.get_field(this, "last"), jr.get_field(this, "HEIGHT"), jr.as_i(jr.get(l_a_last_height)))
        jr.aset(jr.get_field(this, "lastHalf"), jr.get_field(this, "HEIGHT"), jr.as_i(jr.shr(jr.aget(jr.get_field(this, "last"), jr.get_field(this, "HEIGHT")), jr.JInt(1))))
        jr.call(jr.call_static("SWTJOGLProcessor", "getInstance_0", []), "setCustom_3", [jr.get(l_a_last_width), jr.get(l_a_last_height), jr.get_field(this, "ratio")])
        jr.call(this, "add_1", [jr.get_field(this, "SET_LAST_SIZE_METHOD_NAME")])
    jr.JNull
}

fn c1_m40__isportraitwh(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_last_width, l_last_height] = jargs
    let l_last_width = jr.as_i(l_last_width)
    let l_last_height = jr.as_i(l_last_height)
    jr.method(fn() {
            case jr.truth(jr.gt(l_last_height, l_last_width)) {
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

fn c1_m41__isportrait(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call(this, "isPortraitWH_2", [jr.aget(jr.get_field(this, "last"), jr.get_field(this, "WIDTH")), jr.aget(jr.get_field(this, "last"), jr.get_field(this, "HEIGHT"))])
}

fn c1_m47__add(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_reason] = jargs
        let l_string_maker = jr.new("StringMaker", [])
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(jr.call(jr.call(l_string_maker, "append_1", [jr.get_field(this, "REASON")]), "append_1", [l_reason]), "toString_0", []), this, jr.get_field(this, "FIRE_METHOD_NAME")])
        jr.call(l_string_maker, "delete_2", [jr.JInt(0), jr.call(l_string_maker, "length_0", [])])
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(this, "toStringAppend_1", [l_string_maker]), this, jr.get_field(this, "FIRE_METHOD_NAME")])
        jr.call(jr.get_field(this, "list"), "add_1", [l_reason])
    jr.JNull
}

fn c1_m48__process(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.try_catch(fn() {
            case jr.truth(jr.gt(jr.call(jr.get_field(this, "list"), "size_0", []), jr.JInt(0))) {
                True -> {
                jr.call(this, "processForced_0", [])
                Nil
            }
                False -> Nil
            }
            jr.call(jr.get_field(this, "list"), "clear_0", [])
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call_static("PreLogUtil", "putOE_4", [jr.get_field(jr.get_field(this, "commonStrings"), "EXCEPTION"), this, jr.get_field(this, "FIRE_METHOD_NAME"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_m49__processforced(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.try_catch(fn() {
            let l_swt_j_o_g_l_processor = jr.call_static("SWTJOGLProcessor", "getInstance_0", [])
            jr.call(l_swt_j_o_g_l_processor, "clear_0", [])
            jr.call(jr.call_static("DisplayChangeEventHandler", "getInstance_0", []), "fireEvent_1", [jr.get_field(this, "displayChangeEvent")])
            jr.call(jr.call_static("LastDisplayChangeEventHandler", "getInstance_0", []), "fireEvent_1", [jr.get_field(this, "displayChangeEvent")])
            jr.call(l_swt_j_o_g_l_processor, "onSurfaceChanged_0", [])
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call_static("PreLogUtil", "putOE_4", [jr.get_field(jr.get_field(this, "commonStrings"), "EXCEPTION"), this, jr.get_field(this, "FIRE_METHOD_NAME"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_m50__update(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_displayable, l_reason] = jargs
        let l_a_last_width = jr.cell(jr.as_i(jr.call(l_displayable, "getWidth_0", [])))
        let l_a_last_height = jr.cell(jr.as_i(jr.call(l_displayable, "getHeight_0", [])))
        let l_a_full_width = jr.as_i(jr.get(l_a_last_width))
        let l_a_full_height = jr.as_i(jr.get(l_a_last_height))
        let l_string_maker = jr.new("StringMaker", [])
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.call(jr.call(jr.call(jr.call(jr.call(jr.call(l_string_maker, "append_1", [jr.get_field(jr.call_static("CommonLabels", "getInstance_0", []), "START_LABEL")]), "append_1", [l_reason]), "append_1", [jr.get_field(this, "LAST_WIDTH")]), "appendint_1", [jr.get(l_a_last_width)]), "append_1", [jr.get_field(this, "LAST_HEIGHT")]), "appendint_1", [jr.get(l_a_last_height)]), "append_1", [jr.get_field(jr.get_field(this, "commonSeps"), "SPACE")]), "append_1", [jr.call(this, "toString_0", [])]), "toString_0", []), this, jr.get_field(jr.get_field(this, "commonStrings"), "UPDATE")])
        case jr.truth(case jr.truth(jr.gt(jr.get(l_a_last_width), jr.JInt(0))) { True -> jr.gt(jr.get(l_a_last_height), jr.JInt(0)) False -> jr.JBool(False) }) {
            True -> {
            let l_features = jr.call_static("Features", "getInstance_0", [])
            let l_open_g_l_feature_factory = jr.call_static("OpenGLFeatureFactory", "getInstance_0", [])
            case jr.truth(case jr.truth(case jr.truth(jr.not(jr.call(l_features, "isDefault_1", [jr.get_field(l_open_g_l_feature_factory, "OPENGL")]))) { True -> jr.JBool(True) False -> jr.ne(jr.aget(jr.get_field(this, "last"), jr.get_field(this, "WIDTH")), jr.get(l_a_last_width)) }) { True -> jr.JBool(True) False -> jr.ne(jr.aget(jr.get_field(this, "last"), jr.get_field(this, "HEIGHT")), jr.get(l_a_last_height)) }) {
                True -> {
                jr.call(l_string_maker, "delete_2", [jr.JInt(0), jr.call(l_string_maker, "length_0", [])])
                jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(jr.call(l_string_maker, "append_1", [jr.get_field(this, "UPDATE_FROM_ORIENTATION_CHANGE")]), "toString_0", []), this, jr.get_field(jr.get_field(this, "commonStrings"), "UPDATE")])
                let l_operating_system_interface = jr.call(jr.call_static("OperatingSystemFactory", "getInstance_0", []), "getOperatingSystemInstance_0", [])
                case jr.truth(jr.call(l_operating_system_interface, "isOverScan_0", [])) {
                    True -> {
                    jr.set(l_a_last_width, jr.as_i(jr.div(jr.mul(jr.get(l_a_last_width), jr.call(l_operating_system_interface, "getOverScanXPercent_0", [])), jr.JInt(100))))
                    jr.set(l_a_last_height, jr.as_i(jr.div(jr.mul(jr.get(l_a_last_height), jr.call(l_operating_system_interface, "getOverScanYPercent_0", [])), jr.JInt(100))))
                    Nil
                }
                    False -> Nil
                }
                case jr.truth(jr.call(l_operating_system_interface, "isScalable_0", [])) {
                    True -> {
                    case jr.truth(jr.call(this, "isPortraitWH_2", [jr.get(l_a_last_width), jr.get(l_a_last_height)])) {
                        True -> {
                        case jr.truth(jr.gt(jr.to_f(jr.get(l_a_last_height)), jr.get_field(this, "scaleLargestTo"))) {
                            True -> {
                            jr.set_field(this, "displayRatio", jr.as_f(jr.div(jr.get_field(this, "scaleLargestTo"), jr.to_f(jr.get(l_a_last_height)))))
                            jr.set_field(this, "ratio", jr.as_f(jr.div(jr.to_f(jr.get(l_a_last_height)), jr.get_field(this, "scaleLargestTo"))))
                            jr.call(l_string_maker, "delete_2", [jr.JInt(0), jr.call(l_string_maker, "length_0", [])])
                            jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(jr.call(jr.call(l_string_maker, "append_1", [jr.get_field(this, "ADJUSTING_FOR_SCALING_IN_PORTRAIT")]), "appendfloat_1", [jr.get_field(this, "displayRatio")]), "toString_0", []), this, jr.get_field(jr.get_field(this, "commonStrings"), "UPDATE")])
                            jr.set(l_a_last_width, jr.as_i(jr.to_i(jr.mul(jr.to_f(jr.get(l_a_last_width)), jr.get_field(this, "displayRatio")))))
                            jr.set(l_a_last_height, jr.as_i(jr.to_i(jr.mul(jr.to_f(jr.get(l_a_last_height)), jr.get_field(this, "displayRatio")))))
                            jr.call(jr.get_field(this, "scalableListener"), "scale_1", [jr.get_field(this, "ratio")])
                            Nil
                        }
                            False -> {
                            jr.set_field(this, "ratio", jr.as_f(jr.JFloat(1.0)))
                            jr.call(jr.get_field(this, "scalableListener"), "scale_1", [jr.get_field(this, "ratio")])
                            Nil
                        }
                        }
                        Nil
                    }
                        False -> {
                        case jr.truth(jr.gt(jr.to_f(jr.get(l_a_last_width)), jr.get_field(this, "scaleLargestTo"))) {
                            True -> {
                            jr.set_field(this, "displayRatio", jr.as_f(jr.div(jr.get_field(this, "scaleLargestTo"), jr.to_f(jr.get(l_a_last_width)))))
                            jr.set_field(this, "ratio", jr.as_f(jr.div(jr.to_f(jr.get(l_a_last_width)), jr.get_field(this, "scaleLargestTo"))))
                            jr.call(l_string_maker, "delete_2", [jr.JInt(0), jr.call(l_string_maker, "length_0", [])])
                            jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(jr.call(jr.call(l_string_maker, "append_1", [jr.get_field(this, "ADJUSTING_FOR_SCALING_IN_LANDSCAPE")]), "appendfloat_1", [jr.get_field(this, "displayRatio")]), "toString_0", []), this, jr.get_field(jr.get_field(this, "commonStrings"), "UPDATE")])
                            jr.set(l_a_last_width, jr.as_i(jr.to_i(jr.mul(jr.to_f(jr.get(l_a_last_width)), jr.get_field(this, "displayRatio")))))
                            jr.set(l_a_last_height, jr.as_i(jr.to_i(jr.mul(jr.to_f(jr.get(l_a_last_height)), jr.get_field(this, "displayRatio")))))
                            jr.call(jr.get_field(this, "scalableListener"), "scale_1", [jr.get_field(this, "ratio")])
                            Nil
                        }
                            False -> {
                            jr.set_field(this, "ratio", jr.as_f(jr.JFloat(1.0)))
                            jr.call(jr.get_field(this, "scalableListener"), "scale_1", [jr.get_field(this, "ratio")])
                            Nil
                        }
                        }
                        Nil
                    }
                    }
                    Nil
                }
                    False -> Nil
                }
                jr.call(l_string_maker, "delete_2", [jr.JInt(0), jr.call(l_string_maker, "length_0", [])])
                jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.call(jr.call(jr.call(l_string_maker, "append_1", [jr.get_field(this, "UPDATE_FROM_ORIENTATION_CHANGE")]), "append_1", [jr.get_field(this, "LAST_WIDTH")]), "appendint_1", [jr.get(l_a_last_width)]), "append_1", [jr.get_field(this, "LAST_HEIGHT")]), "appendint_1", [jr.get(l_a_last_height)]), "toString_0", []), this, jr.get_field(jr.get_field(this, "commonStrings"), "UPDATE")])
                jr.set_field(this, "xOffset", jr.as_i(jr.sub(l_a_full_width, jr.get(l_a_last_width))))
                jr.set_field(this, "yOffset", jr.as_i(jr.sub(l_a_full_height, jr.get(l_a_last_height))))
                jr.set_field(this, "left", jr.as_i(jr.call(jr.get_field(this, "scalableListener"), "getLeft_1", [jr.get_field(this, "xOffset")])))
                jr.set_field(this, "top", jr.as_i(jr.call(jr.get_field(this, "scalableListener"), "getTop_1", [jr.get_field(this, "yOffset")])))
                jr.aset(jr.get_field(this, "full"), jr.get_field(this, "WIDTH"), jr.as_i(l_a_full_width))
                jr.aset(jr.get_field(this, "full"), jr.get_field(this, "HEIGHT"), jr.as_i(l_a_full_height))
                jr.aset(jr.get_field(this, "last"), jr.get_field(this, "WIDTH"), jr.as_i(jr.get(l_a_last_width)))
                jr.aset(jr.get_field(this, "lastHalf"), jr.get_field(this, "WIDTH"), jr.as_i(jr.shr(jr.aget(jr.get_field(this, "last"), jr.get_field(this, "WIDTH")), jr.JInt(1))))
                jr.aset(jr.get_field(this, "last"), jr.get_field(this, "HEIGHT"), jr.as_i(jr.get(l_a_last_height)))
                jr.aset(jr.get_field(this, "lastHalf"), jr.get_field(this, "HEIGHT"), jr.as_i(jr.shr(jr.aget(jr.get_field(this, "last"), jr.get_field(this, "HEIGHT")), jr.JInt(1))))
                jr.call(jr.call_static("SWTJOGLProcessor", "getInstance_0", []), "setCustom_3", [jr.get(l_a_last_width), jr.get(l_a_last_height), jr.get_field(this, "ratio")])
                jr.call(this, "add_1", [jr.get_field(jr.get_field(this, "commonStrings"), "UPDATE")])
                Nil
            }
                False -> Nil
            }
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m55__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_string_buffer = jr.new("StringMaker", [])
    jr.call(this, "toStringAppend_1", [l_string_buffer])
}

fn c1_m56__tostringappend(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_string_buffer] = jargs
        jr.call(l_string_buffer, "append_1", [jr.get_field(this, "DISPLAY_INFO")])
        jr.call(l_string_buffer, "append_1", [jr.get_field(this, "FULL")])
        jr.call(l_string_buffer, "append_1", [jr.get_field(jr.get_field(this, "commonLabels"), "WIDTH_LABEL")])
        jr.call(l_string_buffer, "appendint_1", [jr.aget(jr.get_field(this, "full"), jr.get_field(this, "WIDTH"))])
        jr.call(l_string_buffer, "append_1", [jr.get_field(jr.get_field(this, "commonSeps"), "SPACE")])
        jr.call(l_string_buffer, "append_1", [jr.get_field(this, "FULL")])
        jr.call(l_string_buffer, "append_1", [jr.get_field(jr.get_field(this, "commonLabels"), "HEIGHT_LABEL")])
        jr.call(l_string_buffer, "appendint_1", [jr.aget(jr.get_field(this, "full"), jr.get_field(this, "HEIGHT"))])
        jr.call(l_string_buffer, "append_1", [jr.get_field(jr.get_field(this, "commonSeps"), "SPACE")])
        jr.call(l_string_buffer, "append_1", [jr.get_field(this, "LAST")])
        jr.call(l_string_buffer, "append_1", [jr.get_field(jr.get_field(this, "commonLabels"), "WIDTH_LABEL")])
        jr.call(l_string_buffer, "appendint_1", [jr.aget(jr.get_field(this, "last"), jr.get_field(this, "WIDTH"))])
        jr.call(l_string_buffer, "append_1", [jr.get_field(jr.get_field(this, "commonSeps"), "SPACE")])
        jr.call(l_string_buffer, "append_1", [jr.get_field(this, "LAST")])
        jr.call(l_string_buffer, "append_1", [jr.get_field(jr.get_field(this, "commonLabels"), "HEIGHT_LABEL")])
        jr.call(l_string_buffer, "appendint_1", [jr.aget(jr.get_field(this, "last"), jr.get_field(this, "HEIGHT"))])
        jr.call(l_string_buffer, "append_1", [jr.get_field(jr.get_field(this, "commonSeps"), "SPACE")])
        jr.call(l_string_buffer, "append_1", [jr.get_field(this, "LAST_HALF")])
        jr.call(l_string_buffer, "append_1", [jr.get_field(jr.get_field(this, "commonLabels"), "WIDTH_LABEL")])
        jr.call(l_string_buffer, "appendint_1", [jr.aget(jr.get_field(this, "lastHalf"), jr.get_field(this, "WIDTH"))])
        jr.call(l_string_buffer, "append_1", [jr.get_field(jr.get_field(this, "commonSeps"), "SPACE")])
        jr.call(l_string_buffer, "append_1", [jr.get_field(this, "LAST_HALF")])
        jr.call(l_string_buffer, "append_1", [jr.get_field(jr.get_field(this, "commonLabels"), "HEIGHT_LABEL")])
        jr.call(l_string_buffer, "appendint_1", [jr.aget(jr.get_field(this, "lastHalf"), jr.get_field(this, "HEIGHT"))])
        jr.call(l_string_buffer, "append_1", [jr.get_field(jr.get_field(this, "commonSeps"), "SPACE")])
        jr.call(l_string_buffer, "append_1", [case jr.truth(jr.call(this, "isPortrait_0", [])) { True -> jr.get_field(this, "PORTRAIT") False -> jr.get_field(this, "LANDSCAPE") }])
    jr.call(l_string_buffer, "toString_0", [])
}

fn c1_m57__gettop(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "top"))
}

fn c1_m58__getleft(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "left"))
}

fn c1_m59__getlastwidth(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.aget(jr.get_field(this, "last"), jr.get_field(this, "WIDTH")))
}

fn c1_m60__getlastheight(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.aget(jr.get_field(this, "last"), jr.get_field(this, "HEIGHT")))
}

fn c1_m61__getlasthalfwidth(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.aget(jr.get_field(this, "lastHalf"), jr.get_field(this, "WIDTH")))
}

fn c1_m62__getlasthalfheight(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.aget(jr.get_field(this, "lastHalf"), jr.get_field(this, "HEIGHT")))
}

fn c1_m63__getcustomlastwidth(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.aget(jr.get_field(this, "last"), jr.get_field(this, "CUSTOM_WIDTH")))
}

fn c1_m64__getcustomlastheight(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.aget(jr.get_field(this, "last"), jr.get_field(this, "CUSTOM_HEIGHT")))
}

fn c1_m65__getrawlastwidth(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.aget(jr.get_field(this, "last"), jr.get_field(this, "WIDTH")))
}

fn c1_m66__getrawlastheight(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.aget(jr.get_field(this, "last"), jr.get_field(this, "HEIGHT")))
}

fn c1_m67__setcustom(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_width, l_height] = jargs
    let l_width = jr.as_i(l_width)
    let l_height = jr.as_i(l_height)
        jr.aset(jr.get_field(this, "last"), jr.get_field(this, "CUSTOM_WIDTH"), jr.as_i(l_width))
        jr.aset(jr.get_field(this, "lastHalf"), jr.get_field(this, "CUSTOM_WIDTH"), jr.as_i(jr.shr(jr.aget(jr.get_field(this, "last"), jr.get_field(this, "CUSTOM_WIDTH")), jr.JInt(1))))
        jr.aset(jr.get_field(this, "last"), jr.get_field(this, "CUSTOM_HEIGHT"), jr.as_i(l_height))
        jr.aset(jr.get_field(this, "lastHalf"), jr.get_field(this, "CUSTOM_HEIGHT"), jr.as_i(jr.shr(jr.aget(jr.get_field(this, "last"), jr.get_field(this, "CUSTOM_HEIGHT")), jr.JInt(1))))
    jr.JNull
}

fn c1_m68__setscalablelistener(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_scalable_listener] = jargs
        jr.set_field(this, "scalableListener", l_scalable_listener)
    jr.JNull
}

fn c1_m69__getscalablelistener(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "scalableListener")
}

fn c1_m70__getratio(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_f(jr.get_field(this, "ratio"))
}

fn c1_m71__getdisplayratio(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_f(jr.get_field(this, "displayRatio"))
}

fn c1_m72__setoffset(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_left, l_top] = jargs
    let l_left = jr.as_i(l_left)
    let l_top = jr.as_i(l_top)
        jr.set_field(this, "left", jr.as_i(l_left))
    jr.JNull
}

fn c1_m73__getxoffset(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "xOffset"))
}

fn c1_m74__getyoffset(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "yOffset"))
}

fn c1_jinit25(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
        let l_size = jr.as_i(jr.alen(jr.get_field(this, "last")))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.aset(jr.get_field(this, "last"), jr.get(l_index), jr.as_i(jr.JInt(0)))
            jr.aset(jr.get_field(this, "lastHalf"), jr.get(l_index), jr.as_i(jr.JInt(0)))
            jr.aset(jr.get_field(this, "full"), jr.get(l_index), jr.as_i(jr.JInt(0)))
            Nil
        })
            Nil
        }
        case jr.truth(jr.call_static("AndroidUtil", "isAndroid_0", [])) {
            True -> {
            jr.set_field(this, "scaleLargestTo", jr.as_f(jr.JFloat(640.0)))
            Nil
        }
            False -> {
            jr.set_field(this, "scaleLargestTo", jr.as_f(jr.JFloat(1080.0)))
            Nil
        }
        }
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "DisplayInfoSingleton",
        "org.allbinary.graphics.displayable.DisplayInfoSingleton",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull), #("commonLabels", jr.JNull), #("commonSeps", jr.JNull), #("commonStrings", jr.JNull), #("ORIENTATION", jr.JNull), #("ADJUSTING_FOR_SCALING_IN_PORTRAIT", jr.JNull), #("ADJUSTING_FOR_SCALING_IN_LANDSCAPE", jr.JNull), #("last", jr.JNull), #("lastHalf", jr.JNull), #("full", jr.JNull), #("top", jr.JInt(0)), #("left", jr.JInt(0)), #("xOffset", jr.JInt(0)), #("yOffset", jr.JInt(0)), #("scaleLargestTo", jr.JFloat(0.0)), #("WIDTH", jr.JInt(0)), #("HEIGHT", jr.JInt(0)), #("CUSTOM_WIDTH", jr.JInt(0)), #("CUSTOM_HEIGHT", jr.JInt(0)), #("scalableListener", jr.JNull), #("displayRatio", jr.JFloat(0.0)), #("ratio", jr.JFloat(0.0)), #("SET_LAST_SIZE_METHOD_NAME", jr.JNull), #("FULL_WIDTH", jr.JNull), #("FULL_HEIGHT", jr.JNull), #("LAST_WIDTH", jr.JNull), #("LAST_HEIGHT", jr.JNull), #("PORTRAIT", jr.JNull), #("LANDSCAPE", jr.JNull), #("displayChangeEvent", jr.JNull), #("FIRE_METHOD_NAME", jr.JNull), #("REASON", jr.JNull), #("UPDATE_FROM_ORIENTATION_CHANGE", jr.JNull), #("list", jr.JNull), #("DISPLAY_INFO", jr.JNull), #("FULL", jr.JNull), #("LAST", jr.JNull), #("LAST_HALF", jr.JNull)],
        [#("SINGLETON", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m3__getinstance), 
            jr.Method("getLastHalf_0", [], False, c1_m26__getlasthalf), 
            jr.Method("getLast_0", [], False, c1_m27__getlast), 
            jr.Method("getFull_0", [], False, c1_m28__getfull), 
            jr.Method("getScaleLargestTo_0", [], False, c1_m29__getscalelargestto), 
            jr.Method("setScaleLargestTo_1", ["int"], False, c1_m30__setscalelargestto), 
            jr.Method("setLastSize_3", ["int", "int", "String"], False, c1_m38__setlastsize), 
            jr.Method("setLastSizeForce_3", ["int", "int", "String"], False, c1_m39__setlastsizeforce), 
            jr.Method("isPortraitWH_2", ["int", "int"], False, c1_m40__isportraitwh), 
            jr.Method("isPortrait_0", [], False, c1_m41__isportrait), 
            jr.Method("add_1", ["String"], False, c1_m47__add), 
            jr.Method("process_0", [], False, c1_m48__process), 
            jr.Method("processForced_0", [], False, c1_m49__processforced), 
            jr.Method("update_2", ["Displayable", "String"], False, c1_m50__update), 
            jr.Method("toString_0", [], False, c1_m55__tostring), 
            jr.Method("toStringAppend_1", ["StringMaker"], False, c1_m56__tostringappend), 
            jr.Method("getTop_0", [], False, c1_m57__gettop), 
            jr.Method("getLeft_0", [], False, c1_m58__getleft), 
            jr.Method("getLastWidth_0", [], False, c1_m59__getlastwidth), 
            jr.Method("getLastHeight_0", [], False, c1_m60__getlastheight), 
            jr.Method("getLastHalfWidth_0", [], False, c1_m61__getlasthalfwidth), 
            jr.Method("getLastHalfHeight_0", [], False, c1_m62__getlasthalfheight), 
            jr.Method("getCustomLastWidth_0", [], False, c1_m63__getcustomlastwidth), 
            jr.Method("getCustomLastHeight_0", [], False, c1_m64__getcustomlastheight), 
            jr.Method("getRawLastWidth_0", [], False, c1_m65__getrawlastwidth), 
            jr.Method("getRawLastHeight_0", [], False, c1_m66__getrawlastheight), 
            jr.Method("setCustom_2", ["int", "int"], False, c1_m67__setcustom), 
            jr.Method("setScalableListener_1", ["BaseScalable"], False, c1_m68__setscalablelistener), 
            jr.Method("getScalableListener_0", [], False, c1_m69__getscalablelistener), 
            jr.Method("getRatio_0", [], False, c1_m70__getratio), 
            jr.Method("getDisplayRatio_0", [], False, c1_m71__getdisplayratio), 
            jr.Method("setOffset_2", ["int", "int"], False, c1_m72__setoffset), 
            jr.Method("getxOffset_0", [], False, c1_m73__getxoffset), 
            jr.Method("getyOffset_0", [], False, c1_m74__getyoffset), 
            jr.Method("jinit_0", [], False, c1_jinit25)],
        c1_jfields,
        c1_jclinit,
    )
}

