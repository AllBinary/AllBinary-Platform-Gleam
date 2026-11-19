// Generated Code Do Not Modify
// package org.allbinary.game.ag.ai.scroller
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class HorizontalScreenPatrolAI

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "keyDirection", jr.as_i(jr.get_static("Canvas", "LEFT")))
    jr.set_field(this, "displayInfoSingleton", jr.call_static("DisplayInfoSingleton", "getInstance_0", []))
    jr.set_field(this, "firingX", jr.as_i(jr.call(jr.get_field(this, "displayInfoSingleton"), "getLastHalfWidth_0", [])))
    jr.set_field(this, "firedIndex", jr.as_i(jr.JInt(0)))
    jr.set_field(this, "MAX_FIRE", jr.as_i(jr.JInt(28)))
    jr.set_field(this, "timeDelayHelper", jr.new("TimeDelayHelper", [jr.JInt(240)]))
    jr.set_field(this, "secondaryPlayerQueue", jr.call_static("SecondaryPlayerQueueFactory", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("HorizontalScreenPatrolAI", "SOUND", jr.call(jr.call_static("SmallIntegerSingletonFactory", "getInstance_0", []), "getAt_1", [jr.JInt(433)]))
    jr.JNull
}

fn c1_m11__processai(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_all_binary_layer_manager] = jargs
        jr.call_super("BasicAI", this, "processKeyAI_1", [jr.get_field(this, "keyDirection")])
        case jr.truth(jr.call(jr.get_field(this, "timeDelayHelper"), "isTimeTNT_0", [])) {
            True -> {
            let l_layer_interface = jr.call_inherited(this, "HorizontalScreenPatrolAI", "getOwnerLayerInterface_0", [])
            let l_current_owner_layer_x = jr.as_i(jr.call(l_layer_interface, "getXP_0", []))
            case jr.truth(jr.lt(l_current_owner_layer_x, jr.neg(jr.call(l_layer_interface, "getWidth_0", [])))) {
                True -> {
                let l_y = jr.as_i(jr.call(jr.call_static("MyRandomFactory", "getInstance_0", []), "getAbsoluteNextIntAllowZero_1", [jr.JInt(50)]))
                jr.call(l_layer_interface, "setPosition_3", [jr.add(jr.add(jr.call(jr.get_field(this, "displayInfoSingleton"), "getLastWidth_0", []), jr.call(l_layer_interface, "getWidth_0", [])), jr.JInt(50)), l_y, jr.call(l_layer_interface, "getZP_0", [])])
                jr.set_field(this, "firedIndex", jr.as_i(jr.JInt(0)))
                jr.set_field(this, "firingX", jr.as_i(jr.add(jr.call(jr.get_field(this, "displayInfoSingleton"), "getLastHalfWidth_0", []), jr.call(jr.call_static("MyRandomFactory", "getInstance_0", []), "getNextInt_1", [jr.call(jr.get_field(this, "displayInfoSingleton"), "getLastHalfWidth_0", [])]))))
                jr.call(jr.get_field(this, "secondaryPlayerQueue"), "add_1", [jr.get_field(this, "sound")])
                Nil
            }
                False -> Nil
            }
            case jr.truth(case jr.truth(jr.lt(l_current_owner_layer_x, jr.get_field(this, "firingX"))) { True -> jr.gt(l_current_owner_layer_x, jr.neg(jr.call(l_layer_interface, "getWidth_0", []))) False -> jr.JBool(False) }) {
                True -> {
                jr.call_super("BasicAI", this, "processKeyAI_1", [jr.get_static("Canvas", "KEY_NUM1")])
                let l_game_layer_manager = l_all_binary_layer_manager
                let l__f_i_r_e = jr.cell(jr.as_i(jr.shr(jr.add(jr.call(jr.call(l_game_layer_manager, "getGameInfo_0", []), "getCurrentLevel_0", []), jr.JInt(12)), jr.JInt(2))))
                case jr.truth(jr.gt(jr.get(l__f_i_r_e), jr.get_field(this, "MAX_FIRE"))) {
                    True -> {
                    jr.set(l__f_i_r_e, jr.as_i(jr.get_field(this, "MAX_FIRE")))
                    Nil
                }
                    False -> Nil
                }
                case jr.truth(jr.gt(jr.get_field(this, "firedIndex"), jr.get(l__f_i_r_e))) {
                    True -> {
                    jr.set_field(this, "firedIndex", jr.as_i(jr.JInt(0)))
                    jr.set_field(this, "firingX", jr.as_i(jr.get_static("Integer", "MIN_VALUE")))
                    Nil
                }
                    False -> Nil
                }
                jr.incr(fn() { jr.get_field(this, "firedIndex") }, fn(jv) { jr.set_field(this, "firedIndex", jv) }, 1, True)
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

fn c1_m12__nextdirection(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_jinit10(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_hashtable, l_owner_layer_interface, l_game_input] = jargs
        jr.super_init("BasicAI", this, [l_owner_layer_interface, l_game_input])
        c1_jfields(this)
        jr.set_field(this, "sound", jr.call(l_hashtable, "get_1", [jr.get_static("HorizontalScreenPatrolAI", "SOUND")]))
        case jr.truth(jr.eq(jr.get_field(this, "sound"), jr.JNull)) {
            True -> {
            jr.throw(jr.new("Exception", [jr.JStr("No Sound Provided!!")]))
            Nil
        }
            False -> Nil
        }
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "HorizontalScreenPatrolAI",
        "org.allbinary.game.ag.ai.scroller.HorizontalScreenPatrolAI",
        "BasicAI",
        [],
        False,
        [#("keyDirection", jr.JInt(0)), #("displayInfoSingleton", jr.JNull), #("firingX", jr.JInt(0)), #("firedIndex", jr.JInt(0)), #("MAX_FIRE", jr.JInt(0)), #("timeDelayHelper", jr.JNull), #("secondaryPlayerQueue", jr.JNull), #("sound", jr.JNull)],
        [#("SOUND", jr.JNull)],
        [
            jr.Method("processAI_1", ["AllBinaryLayerManager"], False, c1_m11__processai), 
            jr.Method("nextDirection_0", [], False, c1_m12__nextdirection), 
            jr.Method("jinit_3", ["ABHashtable", "AllBinaryLayer", "GameInput"], False, c1_jinit10)],
        c1_jfields,
        c1_jclinit,
    )
}

