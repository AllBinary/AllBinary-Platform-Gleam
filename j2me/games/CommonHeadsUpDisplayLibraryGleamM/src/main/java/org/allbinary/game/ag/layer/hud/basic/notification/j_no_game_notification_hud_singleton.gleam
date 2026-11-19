// Generated Code Do Not Modify
// package org.allbinary.game.ag.layer.hud.basic.notification
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class NoGameNotificationHudSingleton

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "gameNotificationHud", jr.get_static("GameNotificationHud", "NULL_GAME_NOTIFICATION"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("NoGameNotificationHudSingleton", "instance", jr.new("NoGameNotificationHudSingleton", []))
    jr.JNull
}

fn c1_m3__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("NoGameNotificationHudSingleton", "instance")
}

fn c1_m6__getgamenotificationhud(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "gameNotificationHud")
}

fn c1_jinit5(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.try_catch(fn() {
            let l_basic_hud_factory = jr.call_static("BasicHudFactory", "getInstance_0", [])
            jr.set_field(this, "gameNotificationHud", jr.new("NoGameGameNotificationHud", []))
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
        "NoGameNotificationHudSingleton",
        "org.allbinary.game.ag.layer.hud.basic.notification.NoGameNotificationHudSingleton",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull), #("gameNotificationHud", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m3__getinstance), 
            jr.Method("getGameNotificationHud_0", [], False, c1_m6__getgamenotificationhud), 
            jr.Method("jinit_0", [], False, c1_jinit5)],
        c1_jfields,
        c1_jclinit,
    )
}

