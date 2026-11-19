// Generated Code Do Not Modify
// package org.allbinary.game.ag.layer.hud.basic
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class PlayerGameNotificationHud

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "gameTickTimeDelayHelper", jr.call_static("GameTickTimeDelayHelperFactory", "getInstance_0", []))
    jr.set_field(this, "EMPTY_STRING", jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"))
    jr.set_field(this, "displayInfo_PlayerGameNotificationHud", jr.call_static("DisplayInfoSingleton", "getInstance_0", []))
    jr.set_field(this, "timeDelayHelper", jr.new("TimeDelayHelper", [jr.JInt(0)]))
    jr.set_field(this, "gameNotification", jr.new("GameNotification", []))
    jr.set_field(this, "permanentGameNotification", jr.new("GameNotification", []))
    jr.set_field(this, "setAndRemoveProcessor", jr.new("SetAndRemoveProcessor", [this]))
    jr.set_field(this, "nextUnremoveableProcessor", jr.new("NextUnremoveableProcessor", [this]))
    jr.set_field(this, "processor", jr.call_static("Processor", "getInstance_0", []))
    jr.set_field(this, "PERMANENT_GAME_NOTIFICATION", jr.JStr("Permanent Game Notification: "))
    jr.set_field(this, "lastString", jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"))
    jr.set_field(this, "string", jr.get_field(this, "EMPTY_STRING"))
    jr.set_field(this, "point", jr.get_static("CustomGPoint", "NULL_CUSTOM_POINT"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m17__updatemeasurement(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        jr.try_catch(fn() {
            jr.call_super("GameNotificationHud", this, "updateMeasurement_1", [l_graphics])
            let l_font = jr.call(l_graphics, "getFont_0", [])
            jr.set_field(this, "width", jr.as_i(jr.call(l_font, "stringWidth_1", [jr.get_field(this, "string")])))
            jr.call(jr.get_field(this, "processor"), "process_0", [])
            jr.set_field(this, "processor", jr.call_static("Processor", "getInstance_0", []))
            Nil
        }, [#(["Exception"], fn(l_e) { {
            let l_log_util = jr.call_static("LogUtil", "getInstance_0", [])
            let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
            jr.call(l_log_util, "put_4", [jr.get_field(l_common_strings, "EXCEPTION"), this, jr.get_field(l_common_strings, "UPDATE"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_m18__getpoint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_x, l_y] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
        jr.set_field(this, "point", jr.call_static("CustomGPoint", "getInstance3_2", [jr.JInt(0), jr.JInt(0)]))
        jr.call(jr.get_field(this, "point"), "setX_1", [l_x])
        jr.call(jr.get_field(this, "point"), "setY_1", [l_y])
    jr.get_field(this, "point")
}

fn c1_m19__add(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_string, l_seconds, l_basic_color, l_permanent] = jargs
        case jr.truth(jr.call(l_permanent, "booleanValue_0", [])) {
            True -> {
            case jr.truth(jr.ne(jr.get_field(this, "lastString"), l_string)) {
                True -> {
                jr.set_field(this, "lastString", l_string)
                jr.call(jr.get_inherited(this, "PlayerGameNotificationHud", "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(this, "PERMANENT_GAME_NOTIFICATION")]), "append_1", [l_string]), "toString_0", []), this, jr.get_field(jr.get_inherited(this, "PlayerGameNotificationHud", "commonStrings"), "ADD")])
                Nil
            }
                False -> Nil
            }
            jr.call(jr.get_field(this, "permanentGameNotification"), "add_3", [l_string, l_seconds, l_basic_color])
            jr.call(jr.get_field(this, "circularIndexUtil"), "setSize_1", [jr.call(jr.get_field(this, "permanentGameNotification"), "getSize_0", [])])
            Nil
        }
            False -> {
            jr.call(jr.get_field(this, "gameNotification"), "add_3", [l_string, l_seconds, l_basic_color])
            Nil
        }
        }
    jr.JNull
}

fn c1_m20__processtick(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.call(jr.get_field(this, "timeDelayHelper"), "isTime_1", [jr.get_field(jr.get_field(this, "gameTickTimeDelayHelper"), "startTime")])) {
            True -> {
            let l_game_ad_state = jr.call(jr.call_static("GameAdStateFactory", "getInstance_0", []), "getCurrentInstance_0", [])
            case jr.truth(jr.call(l_game_ad_state, "isShowingAtLocation_1", [jr.call_inherited(this, "PlayerGameNotificationHud", "getLocation_0", [])])) {
                True -> {
                jr.set_inherited(this, "PlayerGameNotificationHud", "offsetY", jr.JInt(-54))
                Nil
            }
                False -> {
                jr.set_inherited(this, "PlayerGameNotificationHud", "offsetY", jr.JInt(0))
                Nil
            }
            }
            case jr.truth(jr.gt(jr.call(jr.get_field(this, "gameNotification"), "getSize_0", []), jr.JInt(0))) {
                True -> {
                jr.call(this, "setAndRemove_0", [])
                Nil
            }
                False -> case jr.truth(jr.gt(jr.call(jr.get_field(this, "permanentGameNotification"), "getSize_0", []), jr.JInt(0))) {
                True -> {
                jr.call(this, "setNextUnremoveable_0", [])
                Nil
            }
                False -> {
                jr.set_field(this, "string", jr.get_field(this, "EMPTY_STRING"))
                Nil
            }
            }
            }
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m21__setandremove(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.set_field(this, "string", jr.call(jr.get_field(jr.get_field(this, "gameNotification"), "stringList"), "removeAt_1", [jr.JInt(0)]))
        jr.set_field(this, "processor", jr.get_field(this, "setAndRemoveProcessor"))
    jr.JNull
}

fn c1_m22__setandremoveprocess(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call_inherited(this, "PlayerGameNotificationHud", "setX_1", [jr.shr(jr.sub(jr.call(jr.get_field(this, "displayInfo_PlayerGameNotificationHud"), "getLastWidth_0", []), jr.get_field(this, "width")), jr.JInt(1))])
        jr.call(jr.get_field(this, "point"), "setX_1", [jr.call_inherited(this, "PlayerGameNotificationHud", "getX_0", [])])
        jr.call(jr.get_field(this, "point"), "setY_1", [jr.call_inherited(this, "PlayerGameNotificationHud", "getY_0", [])])
        let l_time = jr.call(jr.get_field(jr.get_field(this, "gameNotification"), "timeList"), "removeAt_1", [jr.JInt(0)])
        let l_i_time = jr.cell(jr.as_i(jr.mul(jr.call(l_time, "intValue_0", []), jr.JInt(1000))))
        case jr.truth(jr.eq(jr.get(l_i_time), jr.JInt(0))) {
            True -> {
            jr.set(l_i_time, jr.as_i(jr.JInt(500)))
            Nil
        }
            False -> Nil
        }
        jr.set_field(jr.get_field(this, "timeDelayHelper"), "delay", jr.as_i(jr.get(l_i_time)))
        jr.call_inherited(this, "PlayerGameNotificationHud", "setBasicColorP_1", [jr.call(jr.get_field(jr.get_field(this, "gameNotification"), "colorList"), "removeAt_1", [jr.JInt(0)])])
    jr.JNull
}

fn c1_m23__setnextunremoveable(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_index = jr.as_i(jr.call(jr.get_field(this, "circularIndexUtil"), "getIndex_0", []))
        jr.set_field(this, "string", jr.aget(jr.get_field(jr.get_field(jr.get_field(this, "permanentGameNotification"), "stringList"), "objectArray"), l_index))
        jr.set_field(this, "processor", jr.get_field(this, "nextUnremoveableProcessor"))
    jr.JNull
}

fn c1_m24__setnextunremoveableprocess(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_index = jr.as_i(jr.call(jr.get_field(this, "circularIndexUtil"), "getIndex_0", []))
        jr.call_inherited(this, "PlayerGameNotificationHud", "setX_1", [jr.shr(jr.sub(jr.call(jr.get_field(this, "displayInfo_PlayerGameNotificationHud"), "getLastWidth_0", []), jr.get_field(this, "width")), jr.JInt(1))])
        jr.call(jr.get_field(this, "point"), "setX_1", [jr.call_inherited(this, "PlayerGameNotificationHud", "getX_0", [])])
        jr.call(jr.get_field(this, "point"), "setY_1", [jr.call_inherited(this, "PlayerGameNotificationHud", "getY_0", [])])
        let l_time = jr.aget(jr.get_field(jr.get_field(jr.get_field(this, "permanentGameNotification"), "timeList"), "objectArray"), l_index)
        jr.set_field(jr.get_field(this, "timeDelayHelper"), "delay", jr.as_i(jr.mul(jr.call(l_time, "intValue_0", []), jr.JInt(1000))))
        jr.call_inherited(this, "PlayerGameNotificationHud", "setBasicColorP_1", [jr.aget(jr.get_field(jr.get_field(jr.get_field(this, "permanentGameNotification"), "colorList"), "objectArray"), l_index)])
        jr.call(jr.get_field(this, "circularIndexUtil"), "next_0", [])
    jr.JNull
}

fn c1_m25__clear(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "gameNotification"), "clear_0", [])
        jr.call(jr.get_field(this, "permanentGameNotification"), "clear_0", [])
    jr.JNull
}

fn c1_m26__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        jr.call(jr.get_inherited(this, "PlayerGameNotificationHud", "myFontProcessor"), "process_1", [l_graphics])
        jr.call_super("GameNotificationHud", this, "paintString_2", [l_graphics, jr.get_field(this, "string")])
    jr.JNull
}

fn c1_jinit16(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_location, l_direction, l_buffer_zone, l_basic_color] = jargs
    let l_location = jr.as_i(l_location)
    let l_direction = jr.as_i(l_direction)
    let l_buffer_zone = jr.as_i(l_buffer_zone)
        jr.super_init("GameNotificationHud", this, [l_location, l_direction, l_buffer_zone, l_basic_color])
        c1_jfields(this)
        jr.set_field(this, "circularIndexUtil", jr.call_static("CircularIndexUtil", "createInstance_1", [jr.JInt(0)]))
        let l_game_notification_event_handler = jr.call_static("GameNotificationEventHandler", "getInstance_0", [])
        jr.call(l_game_notification_event_handler, "removeAllListeners_0", [])
        jr.call(l_game_notification_event_handler, "addListenerInterface_1", [this])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "PlayerGameNotificationHud",
        "org.allbinary.game.ag.layer.hud.basic.PlayerGameNotificationHud",
        "GameNotificationHud",
        ["UpdateMyFontInterface"],
        False,
        [#("gameTickTimeDelayHelper", jr.JNull), #("EMPTY_STRING", jr.JNull), #("displayInfo_PlayerGameNotificationHud", jr.JNull), #("timeDelayHelper", jr.JNull), #("circularIndexUtil", jr.JNull), #("gameNotification", jr.JNull), #("permanentGameNotification", jr.JNull), #("setAndRemoveProcessor", jr.JNull), #("nextUnremoveableProcessor", jr.JNull), #("processor", jr.JNull), #("PERMANENT_GAME_NOTIFICATION", jr.JNull), #("lastString", jr.JNull), #("string", jr.JNull), #("point", jr.JNull), #("width", jr.JInt(0))],
        [],
        [
            jr.Method("updateMeasurement_1", ["Graphics"], False, c1_m17__updatemeasurement), 
            jr.Method("getPoint_2", ["int", "int"], False, c1_m18__getpoint), 
            jr.Method("add_4", ["String", "Integer", "BasicColor", "Boolean"], False, c1_m19__add), 
            jr.Method("processTick_0", [], False, c1_m20__processtick), 
            jr.Method("setAndRemove_0", [], False, c1_m21__setandremove), 
            jr.Method("setAndRemoveProcess_0", [], False, c1_m22__setandremoveprocess), 
            jr.Method("setNextUnremoveable_0", [], False, c1_m23__setnextunremoveable), 
            jr.Method("setNextUnremoveableProcess_0", [], False, c1_m24__setnextunremoveableprocess), 
            jr.Method("clear_0", [], False, c1_m25__clear), 
            jr.Method("paint_1", ["Graphics"], False, c1_m26__paint), 
            jr.Method("jinit_4", ["int", "int", "int", "BasicColor"], False, c1_jinit16)],
        c1_jfields,
        c1_jclinit,
    )
}

