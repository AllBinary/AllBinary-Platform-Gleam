// Generated Code Do Not Modify
// package org.allbinary.media.audio
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class Sounds

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "commonStrings", jr.call_static("CommonStrings", "getInstance_0", []))
    jr.set_field(this, "soundStrings", jr.call_static("SoundStrings", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m6__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.get_field(jr.get_field(this, "commonStrings"), "START"), this, jr.get_field(jr.get_field(this, "commonStrings"), "INIT")])
        let l_common_labels = jr.call_static("CommonLabels", "getInstance_0", [])
        let l_progress_canvas = jr.call_static("ProgressCanvasFactory", "getInstance_0", [])
        jr.call(jr.get_field(this, "soundsFactoryInterface"), "init_0", [])
        let l_sound_interface_array = jr.call(jr.get_field(this, "soundsFactoryInterface"), "getSoundInterfaceArray_0", [])
        let l_small_integer_singleton_factory = jr.call_static("SmallIntegerSingletonFactory", "getInstance_0", [])
        let l_index_integer = jr.cell(jr.JNull)
        let l_index_string = jr.cell(jr.JNull)
        let l_string_buffer = jr.new("StringMaker", [])
        {
            let l_i = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_i), jr.alen(l_sound_interface_array)) }, fn() { jr.incr(fn() { jr.get(l_i) }, fn(jv) { jr.set(l_i, jv) }, 1, True) Nil }, fn() {
            let l_sound_interface = jr.aget(l_sound_interface_array, jr.get(l_i))
            case jr.truth(jr.ne(l_sound_interface, jr.JNull)) {
                True -> {
                jr.set(l_index_integer, jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.get(l_i)]))
                jr.set(l_index_string, jr.call(jr.get(l_index_integer), "toString_0", []))
                jr.call(l_string_buffer, "delete_2", [jr.JInt(0), jr.call(l_string_buffer, "length_0", [])])
                jr.call(l_string_buffer, "append_1", [jr.get_field(l_common_labels, "INDEX_LABEL")])
                jr.call(l_string_buffer, "append_1", [jr.get(l_index_string)])
                jr.call(l_string_buffer, "append_1", [jr.get_field(jr.get_field(this, "soundStrings"), "SOUND")])
                jr.call(l_string_buffer, "append_1", [jr.call(jr.call(l_sound_interface, "getClass_0", []), "getName_0", [])])
                jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(l_string_buffer, "toString_0", []), this, jr.get_field(jr.get_field(this, "commonStrings"), "INIT")])
                jr.call(l_sound_interface, "init_0", [])
                jr.call(l_progress_canvas, "addNormalPortion_2", [jr.JInt(100), jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(jr.get_field(this, "soundStrings"), "INIT_SOUND")]), "append_1", [jr.get(l_index_string)]), "toString_0", [])])
                Nil
            }
                False -> Nil
            }
            Nil
        })
            Nil
        }
        jr.call(jr.get_field(this, "soundsFactoryInterface"), "setInitialized_1", [jr.JBool(True)])
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.get_field(jr.get_field(this, "commonStrings"), "END"), this, jr.get_field(jr.get_field(this, "commonStrings"), "INIT")])
    jr.JNull
}

fn c1_m7__stopall(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.get_field(jr.get_field(this, "commonStrings"), "START"), this, jr.get_field(jr.get_field(this, "soundStrings"), "STOP_ALL")])
        let l_sound_interface_array = jr.call(jr.get_field(this, "soundsFactoryInterface"), "getSoundInterfaceArray_0", [])
        let l_progress_canvas = jr.call_static("ProgressCanvasFactory", "getInstance_0", [])
        let l_player = jr.cell(jr.JNull)
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), jr.alen(l_sound_interface_array)) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            case jr.truth(jr.ne(jr.aget(l_sound_interface_array, jr.get(l_index)), jr.JNull)) {
                True -> {
                jr.set(l_player, jr.call(jr.aget(l_sound_interface_array, jr.get(l_index)), "getPlayerP_0", []))
                case jr.truth(jr.ne(jr.get(l_player), jr.JNull)) {
                    True -> {
                    jr.call(jr.get(l_player), "stop_0", [])
                    jr.call(l_progress_canvas, "addPortion_3", [jr.JInt(100), jr.get_field(jr.get_field(this, "soundStrings"), "STOPPING_SOUND"), jr.get(l_index)])
                    Nil
                }
                    False -> Nil
                }
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

fn c1_m8__closeall(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.get_field(jr.get_field(this, "commonStrings"), "START"), this, jr.get_field(jr.get_field(this, "soundStrings"), "CLOSE_ALL")])
        let l_sound_interface_array = jr.call(jr.get_field(this, "soundsFactoryInterface"), "getSoundInterfaceArray_0", [])
        let l_progress_canvas = jr.call_static("ProgressCanvasFactory", "getInstance_0", [])
        let l_player = jr.cell(jr.JNull)
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), jr.alen(l_sound_interface_array)) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            case jr.truth(jr.ne(jr.aget(l_sound_interface_array, jr.get(l_index)), jr.JNull)) {
                True -> {
                jr.set(l_player, jr.call(jr.aget(l_sound_interface_array, jr.get(l_index)), "getPlayerP_0", []))
                case jr.truth(jr.ne(jr.get(l_player), jr.JNull)) {
                    True -> {
                    jr.call(jr.get(l_player), "close_0", [])
                    jr.call(l_progress_canvas, "addPortion_3", [jr.JInt(100), jr.get_field(jr.get_field(this, "soundStrings"), "CLOSING_SOUND"), jr.get(l_index)])
                    Nil
                }
                    False -> Nil
                }
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

fn c1_jinit5(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_sounds_factory_interface] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "soundsFactoryInterface", l_sounds_factory_interface)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "Sounds",
        "org.allbinary.media.audio.Sounds",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull), #("commonStrings", jr.JNull), #("soundStrings", jr.JNull), #("soundsFactoryInterface", jr.JNull)],
        [],
        [
            jr.Method("init_0", [], False, c1_m6__init), 
            jr.Method("stopAll_0", [], False, c1_m7__stopall), 
            jr.Method("closeAll_0", [], False, c1_m8__closeall), 
            jr.Method("jinit_1", ["SoundsFactoryInterface"], False, c1_jinit5)],
        c1_jfields,
        c1_jclinit,
    )
}

