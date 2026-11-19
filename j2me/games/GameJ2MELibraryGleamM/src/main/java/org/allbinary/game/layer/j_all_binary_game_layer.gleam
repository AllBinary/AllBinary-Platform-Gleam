// Generated Code Do Not Modify
// package org.allbinary.game.layer
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AllBinaryGameLayer

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "commonStrings", jr.call_static("CommonStrings", "getInstance_0", []))
    jr.set_field(this, "basicSetColorUtil", jr.call_static("BasicColorSetUtil", "getInstance_0", []))
    jr.set_field(this, "RED", jr.get_field(jr.call_static("BasicColorFactory", "getInstance_0", []), "RED"))
    jr.set_field(this, "paintable", jr.call_static("AllBinaryGameLayer", "createPaintable_0", []))
    jr.set_field(this, "gameKeyEventList", jr.new("BasicArrayListD", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__createpaintable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.method(fn() {
            case jr.truth(jr.get_static("SWTUtil", "isSWT")) {
            True -> {
            jr.ret(jr.new("SWTBlackPaintable", []))
            Nil
        }
            False -> Nil
        }
            jr.ret(jr.call_static("NullPaintable", "getInstance_0", []))
        jr.JNull
    })
}

fn c1_m8__set(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_gl] = jargs
        jr.throw(jr.new("Exception", [jr.get_field(jr.get_field(this, "commonStrings"), "NOT_IMPLEMENTED")]))
    jr.JNull
}

fn c1_m9__move(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m10__getgamekeyeventlist(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "gameKeyEventList")
}

fn c1_m11__processinput(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_all_binary_layer_manager] = jargs
        jr.throw(jr.new("Exception", [jr.get_field(jr.get_field(this, "commonStrings"), "NOT_IMPLEMENTED")]))
    jr.JNull
}

fn c1_m12__processtick(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_all_binary_layer_manager] = jargs
        jr.throw(jr.new("Exception", [jr.get_field(jr.get_field(this, "commonStrings"), "NOT_IMPLEMENTED")]))
    jr.JNull
}

fn c1_m13__onevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_event_object] = jargs
        jr.call_static("ForcedLogUtil", "log_2", [jr.get_field(jr.call_static("EventStrings", "getInstance_0", []), "PERFORMANCE_MESSAGE"), this])
    jr.JNull
}

fn c1_m14__onviewpositionchangeevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(this, "onChangeEvent_1", [jr.get_inherited(this, "AllBinaryGameLayer", "viewPositionEvent")])
    jr.JNull
}

fn c1_m15__onchangeevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_manager_event] = jargs
        case jr.truth(jr.call_static("GameLayerUtil", "isOnScreen_1", [this])) {
            True -> {
            jr.call_inherited(this, "AllBinaryGameLayer", "setVisible_1", [jr.JBool(True)])
            Nil
        }
            False -> {
            jr.call_inherited(this, "AllBinaryGameLayer", "setVisible_1", [jr.JBool(False)])
            Nil
        }
        }
    jr.JNull
}

fn c1_m16__paintfirst(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        jr.call(jr.get_field(this, "paintable"), "paint_1", [l_graphics])
    jr.JNull
}

fn c1_m17__paintdebug(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        let l_view_position = jr.call_inherited(this, "AllBinaryGameLayer", "getViewPosition_0", [])
        let l_view_x = jr.as_i(jr.call(l_view_position, "getX_0", []))
        let l_view_y = jr.as_i(jr.call(l_view_position, "getY_0", []))
        jr.call(jr.get_field(this, "basicSetColorUtil"), "setBasicColorP_2", [l_graphics, jr.get_field(this, "RED")])
        jr.call(l_graphics, "drawRect_4", [l_view_x, l_view_y, jr.call_inherited(this, "AllBinaryGameLayer", "getWidth_0", []), jr.call_inherited(this, "AllBinaryGameLayer", "getHeight_0", [])])
    jr.JNull
}

fn c1_m18__setwidth(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_width] = jargs
    let l_width = jr.as_i(l_width)
        jr.call_super("AllBinaryLayer", this, "setLayerWidth_1", [l_width])
        jr.call_inherited(this, "AllBinaryGameLayer", "setHalfWidth_1", [jr.shr(l_width, jr.JInt(1))])
    jr.JNull
}

fn c1_m19__setheight(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_height] = jargs
    let l_height = jr.as_i(l_height)
        jr.call_super("AllBinaryLayer", this, "setLayerHeight_1", [l_height])
        jr.call_inherited(this, "AllBinaryGameLayer", "setHalfHeight_1", [jr.shr(l_height, jr.JInt(1))])
    jr.JNull
}

fn c1_jinit7(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_name, l_layer_info, l_view_position] = jargs
        jr.super_init("AllBinaryLayer", this, [l_name, l_layer_info, l_view_position])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AllBinaryGameLayer",
        "org.allbinary.game.layer.AllBinaryGameLayer",
        "AllBinaryLayer",
        ["ViewPositionEventListenerInterface", "OpenGLSurfaceChangedInterface"],
        False,
        [#("commonStrings", jr.JNull), #("basicSetColorUtil", jr.JNull), #("RED", jr.JNull), #("paintable", jr.JNull), #("gameKeyEventList", jr.JNull)],
        [],
        [
            jr.Method("createPaintable_0", [], True, c1_m4__createpaintable), 
            jr.Method("set_1", ["GL"], False, c1_m8__set), 
            jr.Method("move_0", [], False, c1_m9__move), 
            jr.Method("getGameKeyEventList_0", [], False, c1_m10__getgamekeyeventlist), 
            jr.Method("processInput_1", ["AllBinaryLayerManager"], False, c1_m11__processinput), 
            jr.Method("processTick_1", ["AllBinaryLayerManager"], False, c1_m12__processtick), 
            jr.Method("onEvent_1", ["AllBinaryEventObject"], False, c1_m13__onevent), 
            jr.Method("onViewPositionChangeEvent_0", [], False, c1_m14__onviewpositionchangeevent), 
            jr.Method("onChangeEvent_1", ["ViewPositionEvent"], False, c1_m15__onchangeevent), 
            jr.Method("paintFirst_1", ["Graphics"], False, c1_m16__paintfirst), 
            jr.Method("paintDebug_1", ["Graphics"], False, c1_m17__paintdebug), 
            jr.Method("setWidth_1", ["int"], False, c1_m18__setwidth), 
            jr.Method("setHeight_1", ["int"], False, c1_m19__setheight), 
            jr.Method("jinit_3", ["String", "Rectangle", "ViewPositionBase"], False, c1_jinit7)],
        c1_jfields,
        c1_jclinit,
    )
}

