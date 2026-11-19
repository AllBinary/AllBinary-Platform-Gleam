// Generated Code Do Not Modify
// package org.allbinary.configuration
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ApplicationConfiguration

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "fullscreen", jr.JBool(True))
    jr.set_field(this, "showTitleBar", jr.JBool(False))
    jr.set_field(this, "progressBarView", jr.JBool(False))
    jr.set_field(this, "FILE", jr.JStr("ReloadConfiguration.dat"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("ApplicationConfiguration", "instance", jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))
    jr.JNull
}

fn c1_m3__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.eq(jr.get_static("ApplicationConfiguration", "instance"), jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))) {
            True -> {
            jr.set_static("ApplicationConfiguration", "instance", jr.new("ApplicationConfiguration", []))
            Nil
        }
            False -> Nil
        }
    jr.get_static("ApplicationConfiguration", "instance")
}

fn c1_m9__read(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_file_input_stream_factory = jr.call_static("FileStreamFactory", "getInstance_0", [])
        let l_file_input_stream = jr.call(l_file_input_stream_factory, "getFileInputStreamInstance_2", [jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.get_field(this, "FILE")])
        let l_data_input_stream = jr.new("AbDataInputStream", [l_file_input_stream])
        let l_full_screen = jr.as_i(jr.call(l_data_input_stream, "readInt_0", []))
        case jr.truth(jr.eq(l_full_screen, jr.JInt(0))) {
            True -> {
            jr.call(this, "setFullscreen_1", [jr.JBool(False)])
            Nil
        }
            False -> case jr.truth(jr.eq(l_full_screen, jr.JInt(1))) {
            True -> {
            jr.call(this, "setFullscreen_1", [jr.JBool(True)])
            Nil
        }
            False -> {
            jr.throw(jr.new("Exception", [jr.JStr("Invalid FullScreen ActivityConfiguration")]))
            Nil
        }
        }
        }
        let l_progress_bar_view = jr.as_i(jr.call(l_data_input_stream, "readInt_0", []))
        case jr.truth(jr.eq(l_progress_bar_view, jr.JInt(0))) {
            True -> {
            jr.call(this, "setProgressBarView_1", [jr.JBool(False)])
            Nil
        }
            False -> case jr.truth(jr.eq(l_progress_bar_view, jr.JInt(1))) {
            True -> {
            jr.call(this, "setProgressBarView_1", [jr.JBool(True)])
            Nil
        }
            False -> {
            jr.throw(jr.new("Exception", [jr.JStr("Invalid ProgressBarView ActivityConfiguration")]))
            Nil
        }
        }
        }
        let l_show_title_bar = jr.as_i(jr.call(l_data_input_stream, "readInt_0", []))
        case jr.truth(jr.eq(l_show_title_bar, jr.JInt(0))) {
            True -> {
            jr.call(this, "setShowTitleBar_1", [jr.JBool(False)])
            Nil
        }
            False -> case jr.truth(jr.eq(l_show_title_bar, jr.JInt(1))) {
            True -> {
            jr.call(this, "setShowTitleBar_1", [jr.JBool(True)])
            Nil
        }
            False -> {
            jr.throw(jr.new("Exception", [jr.JStr("Invalid ShowTitleBar ActivityConfiguration")]))
            Nil
        }
        }
        }
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.concat(jr.JStr("Read Configuration: "), jr.call(this, "toString_0", [])), this, jr.JStr("read")])
    jr.JNull
}

fn c1_m10__write(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_closeable = jr.cell(jr.get_static("NullCloseable", "NULL_CLOSEABLE"))
        jr.try_catch(fn() {
            jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.concat(jr.JStr("Write Configuration: "), jr.call(this, "toString_0", [])), this, jr.JStr("write")])
            let l_file_input_stream_factory = jr.call_static("FileStreamFactory", "getInstance_0", [])
            let l_file_output_stream = jr.call(l_file_input_stream_factory, "getFileOutputStreamInstance_2", [jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.get_field(this, "FILE")])
            let l_data_output_stream = jr.new("AbDataOutputStream", [l_file_output_stream])
            jr.set(l_closeable, l_data_output_stream)
            case jr.truth(jr.call(this, "isFullscreen_0", [])) {
                True -> {
                jr.call(l_data_output_stream, "writeInt_1", [jr.JInt(1)])
                Nil
            }
                False -> {
                jr.call(l_data_output_stream, "writeInt_1", [jr.JInt(0)])
                Nil
            }
            }
            case jr.truth(jr.call(this, "isProgressBarView_0", [])) {
                True -> {
                jr.call(l_data_output_stream, "writeInt_1", [jr.JInt(1)])
                Nil
            }
                False -> {
                jr.call(l_data_output_stream, "writeInt_1", [jr.JInt(0)])
                Nil
            }
            }
            case jr.truth(jr.call(this, "isShowTitleBar_0", [])) {
                True -> {
                jr.call(l_data_output_stream, "writeInt_1", [jr.JInt(1)])
                Nil
            }
                False -> {
                jr.call(l_data_output_stream, "writeInt_1", [jr.JInt(0)])
                Nil
            }
            }
            jr.call(l_data_output_stream, "flush_0", [])
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.throw(l_e)
            Nil
        } })], fn() {
            jr.call(jr.call_static("StreamUtil", "getInstance_0", []), "close_1", [jr.get(l_closeable)])
            Nil
        })
    jr.JNull
}

fn c1_m11__update(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_feature] = jargs
        case jr.truth(jr.eq(l_game_feature, jr.get_field(jr.call_static("MainFeatureFactory", "getInstance_0", []), "FULL_SCREEN"))) {
            True -> {
            let l_features = jr.call_static("Features", "getInstance_0", [])
            case jr.truth(jr.call(l_features, "isFeature_1", [l_game_feature])) {
                True -> {
                case jr.truth(jr.not(jr.call(this, "isFullscreen_0", []))) {
                    True -> {
                    jr.call(this, "setFullscreen_1", [jr.JBool(True)])
                    jr.call(this, "write_0", [])
                    Nil
                }
                    False -> Nil
                }
                Nil
            }
                False -> {
                case jr.truth(jr.call(this, "isFullscreen_0", [])) {
                    True -> {
                    jr.call(this, "setFullscreen_1", [jr.JBool(False)])
                    jr.call(this, "write_0", [])
                    Nil
                }
                    False -> Nil
                }
                Nil
            }
            }
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m12__setfullscreen(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_fullscreen] = jargs
        jr.set_field(this, "fullscreen", l_fullscreen)
    jr.JNull
}

fn c1_m13__isfullscreen(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "fullscreen")
}

fn c1_m14__setshowtitlebar(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_show_title_bar] = jargs
        jr.set_field(this, "showTitleBar", l_show_title_bar)
    jr.JNull
}

fn c1_m15__isshowtitlebar(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "showTitleBar")
}

fn c1_m16__setprogressbarview(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_progress_bar_view] = jargs
        jr.set_field(this, "progressBarView", l_progress_bar_view)
    jr.JNull
}

fn c1_m17__isprogressbarview(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "progressBarView")
}

fn c1_m18__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_string_buffer = jr.new("StringMaker", [])
        jr.call(l_string_buffer, "append_1", [jr.JStr("isFullscreen: ")])
        jr.call(l_string_buffer, "appendboolean_1", [jr.call(this, "isFullscreen_0", [])])
        jr.call(l_string_buffer, "append_1", [jr.JStr(" isProgressBarView: ")])
        jr.call(l_string_buffer, "appendboolean_1", [jr.call(this, "isProgressBarView_0", [])])
        jr.call(l_string_buffer, "append_1", [jr.JStr(" isShowTitleBar: ")])
        jr.call(l_string_buffer, "appendboolean_1", [jr.call(this, "isShowTitleBar_0", [])])
    jr.call(l_string_buffer, "toString_0", [])
}

fn c1_jinit8(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.try_catch(fn() {
            case jr.truth(jr.call(jr.call_static("FileFactory", "getInstance_0", []), "isFile_1", [jr.get_field(this, "FILE")])) {
                True -> {
                jr.call(this, "read_0", [])
                Nil
            }
                False -> {
                jr.call(this, "write_0", [])
                Nil
            }
            }
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
        "ApplicationConfiguration",
        "org.allbinary.configuration.ApplicationConfiguration",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull), #("fullscreen", jr.JBool(False)), #("showTitleBar", jr.JBool(False)), #("progressBarView", jr.JBool(False)), #("FILE", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m3__getinstance), 
            jr.Method("read_0", [], False, c1_m9__read), 
            jr.Method("write_0", [], False, c1_m10__write), 
            jr.Method("update_1", ["Feature"], False, c1_m11__update), 
            jr.Method("setFullscreen_1", ["boolean"], False, c1_m12__setfullscreen), 
            jr.Method("isFullscreen_0", [], False, c1_m13__isfullscreen), 
            jr.Method("setShowTitleBar_1", ["boolean"], False, c1_m14__setshowtitlebar), 
            jr.Method("isShowTitleBar_0", [], False, c1_m15__isshowtitlebar), 
            jr.Method("setProgressBarView_1", ["boolean"], False, c1_m16__setprogressbarview), 
            jr.Method("isProgressBarView_0", [], False, c1_m17__isprogressbarview), 
            jr.Method("toString_0", [], False, c1_m18__tostring), 
            jr.Method("jinit_0", [], False, c1_jinit8)],
        c1_jfields,
        c1_jclinit,
    )
}

