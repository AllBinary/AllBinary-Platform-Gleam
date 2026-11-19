// Generated Code Do Not Modify
// package org.allbinary.game.configuration.feature
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GameFeatureItemCommandListener

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__commandaction(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_command, l_item] = jargs
        jr.try_catch(fn() {
            let l_item_label = jr.call(l_item, "getLabel_0", [])
            jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(jr.call_static("CommonLabels", "getInstance_0", []), "ITEM_LABEL")]), "append_1", [l_item_label]), "toString_0", []), this, jr.get_field(jr.call_static("MidletStrings", "getInstance_0", []), "COMMAND_ACTION")])
            case jr.truth(jr.instance_of(l_item, "GameConfigurationGauge")) {
                True -> {
                jr.call(jr.call_static("GameConfigurationUtil", "getInstance_0", []), "change_2", [jr.get_field(this, "gameOptionsForm"), l_item])
                Nil
            }
                False -> Nil
            }
            Nil
        }, [#(["Exception"], fn(l_e) { {
            let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(l_common_strings, "EXCEPTION"), this, jr.get_field(jr.call_static("MidletStrings", "getInstance_0", []), "COMMAND_ACTION"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_options_form] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "gameOptionsForm", l_game_options_form)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GameFeatureItemCommandListener",
        "org.allbinary.game.configuration.feature.GameFeatureItemCommandListener",
        "Object",
        ["ItemCommandListener"],
        False,
        [#("logUtil", jr.JNull), #("gameOptionsForm", jr.JNull)],
        [],
        [
            jr.Method("commandAction_2", ["Command", "LcduiItem"], False, c1_m4__commandaction), 
            jr.Method("jinit_1", ["GameOptionsForm"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

