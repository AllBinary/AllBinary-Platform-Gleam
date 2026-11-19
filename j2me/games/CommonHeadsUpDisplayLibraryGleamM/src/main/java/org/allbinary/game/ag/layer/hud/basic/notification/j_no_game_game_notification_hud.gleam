// Generated Code Do Not Modify
// package org.allbinary.game.ag.layer.hud.basic.notification
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class NoGameGameNotificationHud

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.super_init("GameNotificationHud", this, [jr.get_field(jr.call_static("BasicHudFactory", "getInstance_0", []), "TOPCENTER"), jr.get_field(jr.call_static("BasicHudFactory", "getInstance_0", []), "HORIZONTAL"), jr.JInt(2), jr.get_field(jr.call_static("BasicColorFactory", "getInstance_0", []), "RED")])
        c1_jfields(this)
        jr.set_inherited(this, "NoGameGameNotificationHud", "updateMaxWidth", jr.JInt(40))
        jr.set_inherited(this, "NoGameGameNotificationHud", "updateMaxHeight", jr.JInt(14))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "NoGameGameNotificationHud",
        "org.allbinary.game.ag.layer.hud.basic.notification.NoGameGameNotificationHud",
        "GameNotificationHud",
        [],
        False,
        [],
        [],
        [
            jr.Method("jinit_0", [], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}

