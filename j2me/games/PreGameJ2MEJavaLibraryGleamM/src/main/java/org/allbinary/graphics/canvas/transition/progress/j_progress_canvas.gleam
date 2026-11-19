// Generated Code Do Not Modify
// package org.allbinary.graphics.canvas.transition.progress
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class(), c2_class()]
}

// class ProgressCanvas

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "GAUGE_PAINTABLE", jr.new("ProgressPaintable", [this]))
    jr.set_field(this, "maxValue", jr.as_f(jr.JFloat(100.0)))
    jr.set_field(this, "TEXT", jr.get_field(jr.get_inherited(this, "ProgressCanvas", "commonStrings"), "LOADING"))
    jr.set_field(this, "updateMyFontProcessor", jr.new("UpdateMyFontProcessor", [this]))
    jr.set_field(this, "myFontProcessor", jr.get_field(this, "updateMyFontProcessor"))
    jr.set_field(this, "allbinaryMidlet", jr.call_static("AllBinaryMidlet", "getNullInstance_0", []))
    jr.set_field(this, "text", jr.get_field(this, "TEXT"))
    jr.set_field(this, "background", jr.JBool(True))
    jr.set_field(this, "paintable", jr.get_field(this, "GAUGE_PAINTABLE"))
    jr.set_field(this, "inProgress", jr.JBool(False))
    jr.set_field(this, "IN_GAME_PROCESSOR", jr.new_with("ProgressCanvas$1", this, [], []))
    jr.set_field(this, "inGameProcessor", jr.call_static("Processor", "getInstance_0", []))
    jr.set_field(this, "progressEndListener", jr.get_static("ProgressEndListener", "instance"))
    jr.set_field(this, "backgroundLabel", jr.JStr("Background AI Game Loading..."))
    jr.set_field(this, "START_BACKGROUND", jr.JStr("startBackground"))
    jr.set_field(this, "ADD_PORTION", jr.JStr("addPortion"))
    jr.set_field(this, "ADD_EARLY_PORTION", jr.JStr("addEarlyPortion"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m19__updatemeasurement(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        let l_font = jr.call(l_graphics, "getFont_0", [])
        jr.call(jr.get_field(this, "gauge"), "setHeight_1", [jr.add(jr.call(l_font, "getHeight_0", []), jr.JInt(2))])
        jr.set_field(this, "myFontProcessor", jr.call_static("MyFontProcessor", "getInstance_0", []))
    jr.JNull
}

fn c1_m20__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_midlet] = jargs
        jr.set_field(this, "allbinaryMidlet", l_game_midlet)
    jr.JNull
}

fn c1_m21__update(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
    jr.JNull
}

fn c1_m22__initcommands(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_cmd_listener] = jargs
    jr.JNull
}

fn c1_m23__getmaxvalue(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_f(jr.get_field(this, "maxValue"))
}

fn c1_m24__start(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_inherited(this, "ProgressCanvas", "logUtil"), "putF_3", [jr.get_field(jr.get_inherited(this, "ProgressCanvas", "commonStrings"), "START"), this, jr.get_field(jr.get_inherited(this, "ProgressCanvas", "commonStrings"), "START_METHOD_NAME")])
        jr.call(this, "setBackground_1", [jr.JBool(True)])
        jr.call(jr.get_field(this, "gauge"), "setHeight_1", [jr.JInt(30)])
        jr.call(jr.get_field(this, "gauge"), "setLabel_1", [jr.get_field(jr.get_inherited(this, "ProgressCanvas", "commonStrings"), "PLEASE_WAIT")])
        jr.call(this, "setText_1", [jr.get_field(this, "TEXT")])
        jr.call(this, "setValue_1", [jr.JInt(0)])
        jr.set_field(this, "inGameProcessor", jr.call_static("Processor", "getInstance_0", []))
        jr.set_field(this, "paintable", jr.get_field(this, "GAUGE_PAINTABLE"))
        jr.set_field(this, "inProgress", jr.JBool(True))
    jr.JNull
}

fn c1_m27__startbackground(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_background] = jargs
        jr.call(jr.get_inherited(this, "ProgressCanvas", "logUtil"), "putF_3", [jr.get_field(jr.get_inherited(this, "ProgressCanvas", "commonStrings"), "START"), this, jr.get_field(this, "START_BACKGROUND")])
        jr.call(this, "setBackground_1", [l_background])
        jr.set_field(this, "myFontProcessor", jr.get_field(this, "updateMyFontProcessor"))
        jr.call(jr.get_field(this, "gauge"), "setLabel_1", [jr.get_field(this, "backgroundLabel")])
        jr.call(this, "setText_1", [jr.get_field(this, "TEXT")])
        jr.call(this, "setValue_1", [jr.JInt(0)])
        jr.set_field(this, "inGameProcessor", jr.call_static("Processor", "getInstance_0", []))
        jr.set_field(this, "paintable", jr.get_field(this, "GAUGE_PAINTABLE"))
    jr.JNull
}

fn c1_m28__endactual(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "allbinaryMidlet"), "commandAction_2", [jr.get_field(jr.call_static("GameCommandsFactory", "getInstance_0", []), "SHOW_GAME_CANVAS"), jr.get_static("NullCanvas", "NULL_CANVAS")])
        jr.set_field(this, "inProgress", jr.JBool(False))
        jr.call(this, "inGame_0", [])
    jr.JNull
}

fn c1_m29__ingame(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "progressEndListener"), "onEndEvent_0", [])
        jr.set_field(this, "inGameProcessor", jr.get_field(this, "IN_GAME_PROCESSOR"))
    jr.JNull
}

fn c1_m30__end(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_inherited(this, "ProgressCanvas", "logUtil"), "putF_3", [jr.get_field(jr.get_inherited(this, "ProgressCanvas", "commonStrings"), "START"), this, jr.get_field(jr.get_inherited(this, "ProgressCanvas", "commonStrings"), "END_METHOD_NAME")])
        jr.call(jr.get_field(this, "gauge"), "setValue_1", [jr.call(this, "getMaxValue_0", [])])
        jr.call(this, "endActual_0", [])
        jr.set_field(this, "paintable", jr.call_static("NullPaintable", "getInstance_0", []))
    jr.JNull
}

fn c1_m31__endfrominitiallazyloadingcomplete(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "progressEndListener"), "onEndEvent_0", [])
        jr.call(jr.get_field(this, "gauge"), "setValue_1", [jr.call(this, "getMaxValue_0", [])])
        jr.set_field(this, "inGameProcessor", jr.get_field(this, "IN_GAME_PROCESSOR"))
    jr.JNull
}

fn c1_m32__isingame(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.method(fn() {
            case jr.truth(jr.eq(jr.get_field(this, "inGameProcessor"), jr.get_field(this, "IN_GAME_PROCESSOR"))) {
            True -> {
            jr.ret(jr.JBool(True))
            Nil
        }
            False -> Nil
        }
            jr.ret(jr.JBool(False))
        jr.JNull
    })
}

fn c1_m33__endifpaintedsincestart(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m36__addearlyportion(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_value, l_text, l_index] = jargs
    let l_value = jr.as_i(l_value)
    let l_index = jr.as_i(l_index)
        jr.call(this, "setText_1", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [l_text]), "append_1", [jr.call(jr.call(jr.call_static("SmallIntegerSingletonFactory", "getInstance_0", []), "getAt_1", [l_index]), "toString_0", [])]), "toString_0", [])])
        jr.call(jr.get_field(this, "gauge"), "setValue_1", [jr.add(jr.call(jr.get_field(this, "gauge"), "getValue_0", []), jr.div(jr.call(this, "getMaxValue_0", []), jr.to_f(l_value)))])
    jr.JNull
}

fn c1_m37__addportion(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_value, l_text, l_index] = jargs
    let l_value = jr.as_i(l_value)
    let l_index = jr.as_i(l_index)
        jr.call(this, "setText_1", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [l_text]), "append_1", [jr.call(jr.call(jr.call_static("SmallIntegerSingletonFactory", "getInstance_0", []), "getAt_1", [l_index]), "toString_0", [])]), "toString_0", [])])
        jr.call_static("PreLogUtil", "put_3", [jr.get_field(this, "text"), this, jr.get_field(this, "ADD_PORTION")])
        jr.call(jr.get_field(this, "gauge"), "setValue_1", [jr.add(jr.call(jr.get_field(this, "gauge"), "getValue_0", []), jr.div(jr.call(this, "getMaxValue_0", []), jr.to_f(l_value)))])
    jr.JNull
}

fn c1_m38__addnormalportion(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_value, l_text] = jargs
    let l_value = jr.as_i(l_value)
        case jr.truth(jr.ne(jr.get_field(this, "text"), l_text)) {
            True -> {
            jr.call_static("PreLogUtil", "put_3", [l_text, this, jr.get_field(this, "ADD_PORTION")])
            Nil
        }
            False -> Nil
        }
        jr.call(this, "setText_1", [l_text])
        jr.call(jr.get_field(this, "gauge"), "setValue_1", [jr.add(jr.call(jr.get_field(this, "gauge"), "getValue_0", []), jr.div(jr.call(this, "getMaxValue_0", []), jr.to_f(l_value)))])
    jr.JNull
}

fn c1_m39__setvalue(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_value] = jargs
    let l_value = jr.as_i(l_value)
        jr.set_field(this, "value", jr.as_f(jr.to_f(l_value)))
        jr.call(jr.get_field(this, "gauge"), "setValue_1", [jr.to_f(l_value)])
    jr.JNull
}

fn c1_m40__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        jr.call(jr.get_field(this, "paintable"), "paint_1", [l_graphics])
    jr.JNull
}

fn c1_m41__paint2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        jr.call(jr.get_field(this, "myFontProcessor"), "process_1", [l_graphics])
        jr.call(l_graphics, "setColor_1", [jr.call(jr.get_field(this, "backgroundBasicColor"), "intValue_0", [])])
        jr.call(l_graphics, "fillRect_4", [jr.JInt(0), jr.JInt(0), jr.call(jr.get_inherited(this, "ProgressCanvas", "displayInfo"), "getLastWidth_0", []), jr.call(jr.get_inherited(this, "ProgressCanvas", "displayInfo"), "getLastHeight_0", [])])
        jr.call(jr.get_field(this, "gauge"), "paintXY_3", [l_graphics, jr.JInt(0), jr.JInt(0)])
        jr.set_field(this, "hasPainted", jr.JBool(True))
    jr.JNull
}

fn c1_m42__paintthreed(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
    jr.JNull
}

fn c1_m43__getvalue(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_f(jr.get_field(this, "value"))
}

fn c1_m44__settext(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_text] = jargs
        jr.set_field(this, "text", l_text)
    jr.JNull
}

fn c1_m45__gettext(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "text")
}

fn c1_m46__setbackground(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_background] = jargs
        jr.set_field(this, "background", l_background)
    jr.JNull
}

fn c1_m47__isbackground(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "background")
}

fn c1_jinit18(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_title, l_background_basic_color, l_foreground_basic_color] = jargs
        jr.super_init("RunnableCanvas", this, [jr.get_static("NullCommandListener", "NULL_COMMAND_LISTENER"), jr.get_field(jr.call_static("CanvasStrings", "getInstance_0", []), "EMPTY_CHILD_NAME_LIST"), jr.JBool(False)])
        c1_jfields(this)
        jr.set_field(this, "backgroundBasicColor", l_background_basic_color)
        jr.set_field(this, "gauge", jr.new("ABCustomGaugeItem", [jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.to_i(jr.get_field(this, "maxValue")), jr.JInt(0), l_background_basic_color, l_foreground_basic_color]))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ProgressCanvas",
        "org.allbinary.graphics.canvas.transition.progress.ProgressCanvas",
        "RunnableCanvas",
        ["PaintableInterface", "UpdateMyFontInterface"],
        False,
        [#("hasPainted", jr.JBool(False)), #("backgroundBasicColor", jr.JNull), #("GAUGE_PAINTABLE", jr.JNull), #("maxValue", jr.JFloat(0.0)), #("gauge", jr.JNull), #("TEXT", jr.JNull), #("updateMyFontProcessor", jr.JNull), #("myFontProcessor", jr.JNull), #("allbinaryMidlet", jr.JNull), #("value", jr.JFloat(0.0)), #("text", jr.JNull), #("background", jr.JBool(False)), #("paintable", jr.JNull), #("inProgress", jr.JBool(False)), #("IN_GAME_PROCESSOR", jr.JNull), #("inGameProcessor", jr.JNull), #("progressEndListener", jr.JNull), #("backgroundLabel", jr.JNull), #("START_BACKGROUND", jr.JNull), #("ADD_PORTION", jr.JNull), #("ADD_EARLY_PORTION", jr.JNull)],
        [],
        [
            jr.Method("updateMeasurement_1", ["Graphics"], False, c1_m19__updatemeasurement), 
            jr.Method("init_1", ["AllBinaryMidlet"], False, c1_m20__init), 
            jr.Method("update_1", ["Graphics"], False, c1_m21__update), 
            jr.Method("initCommands_1", ["CommandListener"], False, c1_m22__initcommands), 
            jr.Method("getMaxValue_0", [], False, c1_m23__getmaxvalue), 
            jr.Method("start_0", [], False, c1_m24__start), 
            jr.Method("startBackground_1", ["boolean"], False, c1_m27__startbackground), 
            jr.Method("endActual_0", [], False, c1_m28__endactual), 
            jr.Method("inGame_0", [], False, c1_m29__ingame), 
            jr.Method("end_0", [], False, c1_m30__end), 
            jr.Method("endFromInitialLazyLoadingComplete_0", [], False, c1_m31__endfrominitiallazyloadingcomplete), 
            jr.Method("isInGame_0", [], False, c1_m32__isingame), 
            jr.Method("endIfPaintedSinceStart_0", [], False, c1_m33__endifpaintedsincestart), 
            jr.Method("addEarlyPortion_3", ["int", "String", "int"], False, c1_m36__addearlyportion), 
            jr.Method("addPortion_3", ["int", "String", "int"], False, c1_m37__addportion), 
            jr.Method("addNormalPortion_2", ["int", "String"], False, c1_m38__addnormalportion), 
            jr.Method("setValue_1", ["int"], False, c1_m39__setvalue), 
            jr.Method("paint_1", ["Graphics"], False, c1_m40__paint), 
            jr.Method("paint2_1", ["Graphics"], False, c1_m41__paint2), 
            jr.Method("paintThreed_1", ["Graphics"], False, c1_m42__paintthreed), 
            jr.Method("getValue_0", [], False, c1_m43__getvalue), 
            jr.Method("setText_1", ["String"], False, c1_m44__settext), 
            jr.Method("getText_0", [], False, c1_m45__gettext), 
            jr.Method("setBackground_1", ["boolean"], False, c1_m46__setbackground), 
            jr.Method("isBackground_0", [], False, c1_m47__isbackground), 
            jr.Method("jinit_3", ["String", "BasicColor", "BasicColor"], False, c1_jinit18)],
        c1_jfields,
        c1_jclinit,
    )
}

// class ProgressCanvas$1

fn c2_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "pathFindingThreadPool", jr.call_static("PathFindingThreadPool", "getInstance_0", []))
    jr.JNull
}

fn c2_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c2_m2__process(this: jr.V, jargs: List(jr.V)) -> jr.V {
            jr.call(jr.get_field(this, "pathFindingThreadPool"), "runAPriorityTask_0", [])
    jr.JNull
}

fn c2_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Processor", this, jargs)
    c2_jfields(this)
    this
}

fn c2_class() -> jr.Class {
    jr.Class(
        "ProgressCanvas$1",
        "org.allbinary.graphics.canvas.transition.progress.ProgressCanvas$1",
        "Processor",
        [],
        False,
        [#("jouter", jr.JNull), #("pathFindingThreadPool", jr.JNull)],
        [],
        [
            jr.Method("process_0", [], False, c2_m2__process), 
            jr.Method("jinit_0", [], False, c2_jinit)],
        c2_jfields,
        c2_jclinit,
    )
}

