// Generated Code Do Not Modify
// package org.allbinary.graphics.opengles
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CurrentDisplayableFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "commonStrings", jr.call_static("CommonStrings", "getInstance_0", []))
    jr.set_field(this, "canvasStrings", jr.call_static("CanvasStrings", "getInstance_0", []))
    jr.set_field(this, "stringUtil", jr.call_static("StringUtil", "getInstance_0", []))
    jr.set_field(this, "SET_DISPLAYABLE", jr.JStr("setDisplayable"))
    jr.set_field(this, "SET_RUNNABLE", jr.JStr("setRunnable"))
    jr.set_field(this, "CLEAR_RUNNABLE", jr.JStr("clearRunnable"))
    jr.set_field(this, "SET_USED_RUNNABLE", jr.JStr("setUsedRunnable"))
    jr.set_field(this, "RUNNABLE", jr.JStr("Runnable: "))
    jr.set_field(this, "RUNNABLE_WAS_ALREADY_IN_USE", jr.JStr("Runnable was already in use: "))
    jr.set_field(this, "DEFAULT_CHILD_NAME_LIST", jr.new("BasicArrayListD", []))
    jr.set_field(this, "displayable", jr.call_static("NullDisplayable", "getInstance_0", []))
    jr.set_field(this, "openGlReadydisplayable", jr.call_static("NullDisplayable", "getInstance_0", []))
    jr.set_field(this, "runnable", jr.call_static("NullWaitGameRunnable", "getInstance_0", []))
    jr.set_field(this, "usedRunnable", jr.call_static("NullWaitGameRunnable", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("CurrentDisplayableFactory", "instance", jr.new("CurrentDisplayableFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("CurrentDisplayableFactory", "instance")
}

fn c1_m18__setmycanvas(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_displayable] = jargs
    jr.method(fn() {
            case jr.truth(jr.instance_of(jr.get_field(this, "displayable"), "MyCanvas")) {
            True -> {
            case jr.truth(jr.call(l_displayable, "hasChild_1", [jr.get_field(this, "displayable")])) {
                True -> {
                jr.call_static("PreLogUtil", "put_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.JStr("Child Displayable is already set for: ")]), "append_1", [jr.call(jr.get_field(this, "stringUtil"), "toString_1", [l_displayable])]), "toString_0", []), this, jr.get_field(this, "SET_DISPLAYABLE")])
                jr.ret(jr.JNull)
                Nil
            }
                False -> Nil
            }
            Nil
        }
            False -> Nil
        }
            jr.call(this, "setDisplayable_1", [l_displayable])
        jr.JNull
    })
}

fn c1_m19__setdisplayable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_displayable] = jargs
        jr.set_field(this, "displayable", l_displayable)
        jr.call(this, "setOpenGlReadydisplayable_1", [l_displayable])
    jr.JNull
}

fn c1_m20__setopenglreadydisplayable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_open_gl_readydisplayable] = jargs
        jr.set_field(this, "openGlReadydisplayable", l_open_gl_readydisplayable)
        jr.call(this, "update_0", [])
    jr.JNull
}

fn c1_m21__getopenglreadydisplayable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "openGlReadydisplayable")
}

fn c1_m22__setrunnable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_runnable] = jargs
        jr.call_static("PreLogUtil", "put_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(this, "RUNNABLE")]), "append_1", [jr.call(jr.get_field(this, "stringUtil"), "toString_1", [l_runnable])]), "toString_0", []), this, jr.get_field(this, "SET_RUNNABLE")])
        jr.set_field(this, "runnable", l_runnable)
        case jr.truth(jr.ne(jr.get_field(this, "usedRunnable"), jr.get_field(this, "runnable"))) {
            True -> {
            jr.call(this, "update_0", [])
            Nil
        }
            False -> {
            jr.call_static("PreLogUtil", "put_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(this, "RUNNABLE_WAS_ALREADY_IN_USE")]), "append_1", [jr.call(jr.get_field(this, "stringUtil"), "toString_1", [l_runnable])]), "toString_0", []), this, jr.get_field(this, "SET_RUNNABLE")])
            Nil
        }
        }
    jr.JNull
}

fn c1_m23__clearrunnable(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call_static("PreLogUtil", "put_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(this, "RUNNABLE")]), "append_1", [jr.call(jr.get_field(this, "stringUtil"), "toString_1", [jr.call_static("NullRunnable", "getInstance_0", [])])]), "toString_0", []), this, jr.get_field(this, "CLEAR_RUNNABLE")])
        jr.call(this, "setUsedRunnable_1", [jr.call_static("NullWaitGameRunnable", "getInstance_0", [])])
    jr.JNull
}

fn c1_m24__update(this: jr.V, jargs: List(jr.V)) -> jr.V {
        {
            let l_common_seps = jr.call_static("CommonSeps", "getInstance_0", [])
            let l_features = jr.call_static("Features", "getInstance_0", [])
            let l_string_maker = jr.new("StringMaker", [])
            jr.call(l_string_maker, "append_1", [jr.call(jr.get_field(this, "stringUtil"), "toString_1", [jr.get_field(this, "openGlReadydisplayable")])])
            case jr.truth(case jr.truth(jr.get_static("SWTUtil", "isSWT")) { True -> jr.not(jr.call(l_features, "isDefault_1", [jr.get_field(jr.call_static("OpenGLFeatureFactory", "getInstance_0", []), "OPENGL")])) False -> jr.JBool(False) }) {
                True -> {
                jr.call_static("PreLogUtil", "put_3", [jr.call(jr.call(jr.call(jr.call(jr.call(jr.call(l_string_maker, "append_1", [jr.get_field(l_common_seps, "SPACE")]), "append_1", [jr.get_static("SWTUtil", "SWT")]), "append_1", [jr.get_field(l_common_seps, "SPACE")]), "append_1", [jr.get_field(this, "RUNNABLE")]), "append_1", [jr.call(jr.get_field(this, "stringUtil"), "toString_1", [jr.call_static("NullRunnable", "getInstance_0", [])])]), "toString_0", []), this, jr.get_field(jr.get_field(this, "commonStrings"), "UPDATE")])
                jr.call(this, "setUsedRunnable_1", [jr.call_static("NullWaitGameRunnable", "getInstance_0", [])])
                Nil
            }
                False -> case jr.truth(jr.call_static("J2MEUtil", "isHTML_0", [])) {
                True -> {
                jr.call_static("PreLogUtil", "put_3", [jr.call(jr.call(jr.call(jr.call(jr.call(jr.call(l_string_maker, "append_1", [jr.get_field(l_common_seps, "SPACE")]), "append_1", [jr.get_field(jr.call_static("GraphicsStrings", "getInstance_0", []), "HTML")]), "append_1", [jr.get_field(l_common_seps, "SPACE")]), "append_1", [jr.get_field(this, "RUNNABLE")]), "append_1", [jr.call(jr.get_field(this, "stringUtil"), "toString_1", [jr.get_field(this, "runnable")])]), "toString_0", []), this, jr.get_field(jr.get_field(this, "commonStrings"), "UPDATE")])
                jr.call(this, "setUsedRunnable_1", [jr.get_field(this, "runnable")])
                Nil
            }
                False -> case jr.truth(case jr.truth(case jr.truth(jr.instance_of(jr.get_field(this, "openGlReadydisplayable"), "DemoCanvas")) { True -> jr.JBool(True) False -> jr.instance_of(jr.get_field(this, "openGlReadydisplayable"), "AllBinaryGameCanvas") }) { True -> jr.JBool(True) False -> jr.call(l_features, "isDefault_1", [jr.get_field(jr.call_static("OpenGLFeatureFactory", "getInstance_0", []), "OPENGL")]) }) {
                True -> {
                jr.call_static("PreLogUtil", "put_3", [jr.call(jr.call(jr.call(jr.call(jr.call(jr.call(l_string_maker, "append_1", [jr.get_field(l_common_seps, "SPACE")]), "append_1", [jr.call(jr.get_field(jr.call_static("OpenGLFeatureFactory", "getInstance_0", []), "OPENGL"), "toString_0", [])]), "append_1", [jr.get_field(l_common_seps, "SPACE")]), "append_1", [jr.get_field(this, "RUNNABLE")]), "append_1", [jr.call(jr.get_field(this, "stringUtil"), "toString_1", [jr.get_field(this, "runnable")])]), "toString_0", []), this, jr.get_field(jr.get_field(this, "commonStrings"), "UPDATE")])
                jr.call(this, "setUsedRunnable_1", [jr.get_field(this, "runnable")])
                Nil
            }
                False -> {
                jr.call_static("PreLogUtil", "put_3", [jr.call(jr.call(jr.call(l_string_maker, "append_1", [jr.get_field(this, "RUNNABLE")]), "append_1", [jr.call(jr.get_field(this, "stringUtil"), "toString_1", [jr.call_static("NullRunnable", "getInstance_0", [])])]), "toString_0", []), this, jr.get_field(jr.get_field(this, "commonStrings"), "UPDATE")])
                jr.call(this, "setUsedRunnable_1", [jr.call_static("NullWaitGameRunnable", "getInstance_0", [])])
                Nil
            }
            }
            }
            }
            Nil
        }
    jr.JNull
}

fn c1_m25__getdisplayable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "displayable")
}

fn c1_m26__getusedrunnable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "usedRunnable")
}

fn c1_m27__setusedrunnable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_used_runnable] = jargs
        jr.call_static("PreLogUtil", "put_3", [jr.call(jr.call(jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(this, "RUNNABLE")]), "append_1", [jr.call(jr.get_field(this, "stringUtil"), "toString_1", [jr.get_field(this, "runnable")])]), "append_1", [jr.get_field(jr.call_static("CommonSeps", "getInstance_0", []), "COLON_SEP")]), "append_1", [jr.call(jr.get_field(this, "stringUtil"), "toString_1", [l_used_runnable])]), "toString_0", []), this, jr.get_field(this, "SET_USED_RUNNABLE")])
        jr.set_field(this, "usedRunnable", l_used_runnable)
    jr.JNull
}

fn c1_jinit17(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.call(jr.get_field(this, "DEFAULT_CHILD_NAME_LIST"), "add_1", [jr.get_field(jr.get_field(this, "canvasStrings"), "ABOUT")])
        jr.call(jr.get_field(this, "DEFAULT_CHILD_NAME_LIST"), "add_1", [jr.get_field(jr.get_field(this, "canvasStrings"), "OPTIONS")])
        jr.call(jr.get_field(this, "DEFAULT_CHILD_NAME_LIST"), "add_1", [jr.get_static("GameInputMappingCanvas", "NAME")])
        jr.call(jr.get_field(this, "DEFAULT_CHILD_NAME_LIST"), "add_1", [jr.get_static("GameInputMappingInstructionsCanvas", "NAME")])
        jr.call(jr.get_field(this, "DEFAULT_CHILD_NAME_LIST"), "add_1", [jr.get_static("HighScoresCanvas", "NAME")])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CurrentDisplayableFactory",
        "org.allbinary.graphics.opengles.CurrentDisplayableFactory",
        "Object",
        [],
        False,
        [#("commonStrings", jr.JNull), #("canvasStrings", jr.JNull), #("stringUtil", jr.JNull), #("SET_DISPLAYABLE", jr.JNull), #("SET_RUNNABLE", jr.JNull), #("CLEAR_RUNNABLE", jr.JNull), #("SET_USED_RUNNABLE", jr.JNull), #("RUNNABLE", jr.JNull), #("RUNNABLE_WAS_ALREADY_IN_USE", jr.JNull), #("DEFAULT_CHILD_NAME_LIST", jr.JNull), #("displayable", jr.JNull), #("openGlReadydisplayable", jr.JNull), #("runnable", jr.JNull), #("usedRunnable", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("setMyCanvas_1", ["MyCanvas"], False, c1_m18__setmycanvas), 
            jr.Method("setDisplayable_1", ["Displayable"], False, c1_m19__setdisplayable), 
            jr.Method("setOpenGlReadydisplayable_1", ["Displayable"], False, c1_m20__setopenglreadydisplayable), 
            jr.Method("getOpenGlReadydisplayable_0", [], False, c1_m21__getopenglreadydisplayable), 
            jr.Method("setRunnable_1", ["GameRunnable"], False, c1_m22__setrunnable), 
            jr.Method("clearRunnable_0", [], False, c1_m23__clearrunnable), 
            jr.Method("update_0", [], False, c1_m24__update), 
            jr.Method("getDisplayable_0", [], False, c1_m25__getdisplayable), 
            jr.Method("getUsedRunnable_0", [], False, c1_m26__getusedrunnable), 
            jr.Method("setUsedRunnable_1", ["GameRunnable"], False, c1_m27__setusedrunnable), 
            jr.Method("jinit_0", [], False, c1_jinit17)],
        c1_jfields,
        c1_jclinit,
    )
}

