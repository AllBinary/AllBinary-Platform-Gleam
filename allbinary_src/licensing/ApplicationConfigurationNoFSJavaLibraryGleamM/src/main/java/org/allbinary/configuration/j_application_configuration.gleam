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

fn c1_m8__read(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(this, "setFullscreen_1", [jr.JBool(True)])
        jr.call(this, "setProgressBarView_1", [jr.JBool(False)])
        jr.call(this, "setShowTitleBar_1", [jr.JBool(False)])
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.concat(jr.JStr("Read Configuration: "), jr.call(this, "toString_0", [])), this, jr.JStr("read")])
    jr.JNull
}

fn c1_m9__write(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m10__update(this: jr.V, jargs: List(jr.V)) -> jr.V {
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

fn c1_m11__setfullscreen(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_fullscreen] = jargs
        jr.set_field(this, "fullscreen", l_fullscreen)
    jr.JNull
}

fn c1_m12__isfullscreen(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "fullscreen")
}

fn c1_m13__setshowtitlebar(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_show_title_bar] = jargs
        jr.set_field(this, "showTitleBar", l_show_title_bar)
    jr.JNull
}

fn c1_m14__isshowtitlebar(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "showTitleBar")
}

fn c1_m15__setprogressbarview(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_progress_bar_view] = jargs
        jr.set_field(this, "progressBarView", l_progress_bar_view)
    jr.JNull
}

fn c1_m16__isprogressbarview(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "progressBarView")
}

fn c1_m17__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_string_buffer = jr.new("StringMaker", [])
        jr.call(l_string_buffer, "append_1", [jr.JStr("isFullscreen: ")])
        jr.call(l_string_buffer, "appendboolean_1", [jr.call(this, "isFullscreen_0", [])])
        jr.call(l_string_buffer, "append_1", [jr.JStr(" isProgressBarView: ")])
        jr.call(l_string_buffer, "appendboolean_1", [jr.call(this, "isProgressBarView_0", [])])
        jr.call(l_string_buffer, "append_1", [jr.JStr(" isShowTitleBar: ")])
        jr.call(l_string_buffer, "appendboolean_1", [jr.call(this, "isShowTitleBar_0", [])])
    jr.call(l_string_buffer, "toString_0", [])
}

fn c1_jinit7(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.try_catch(fn() {
            jr.call(this, "read_0", [])
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
        [#("logUtil", jr.JNull), #("fullscreen", jr.JBool(False)), #("showTitleBar", jr.JBool(False)), #("progressBarView", jr.JBool(False))],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m3__getinstance), 
            jr.Method("read_0", [], False, c1_m8__read), 
            jr.Method("write_0", [], False, c1_m9__write), 
            jr.Method("update_1", ["Feature"], False, c1_m10__update), 
            jr.Method("setFullscreen_1", ["boolean"], False, c1_m11__setfullscreen), 
            jr.Method("isFullscreen_0", [], False, c1_m12__isfullscreen), 
            jr.Method("setShowTitleBar_1", ["boolean"], False, c1_m13__setshowtitlebar), 
            jr.Method("isShowTitleBar_0", [], False, c1_m14__isshowtitlebar), 
            jr.Method("setProgressBarView_1", ["boolean"], False, c1_m15__setprogressbarview), 
            jr.Method("isProgressBarView_0", [], False, c1_m16__isprogressbarview), 
            jr.Method("toString_0", [], False, c1_m17__tostring), 
            jr.Method("jinit_0", [], False, c1_jinit7)],
        c1_jfields,
        c1_jclinit,
    )
}

