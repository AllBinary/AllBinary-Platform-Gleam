// Generated Code Do Not Modify
// package org.allbinary.game.displayable.canvas
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class NoMenuInputProcessor

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("NoMenuInputProcessor", "SINGLETON", jr.new("NoMenuInputProcessor", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("NoMenuInputProcessor", "SINGLETON")
}

fn c1_m4__ondowngamekeyevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_key_event] = jargs
    jr.JNull
}

fn c1_m5__onupgamekeyevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_key_event] = jargs
    jr.JNull
}

fn c1_m6__onmotiongestureevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_motion_gesture_event] = jargs
    jr.JNull
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.super_init("BasicMenuInputProcessor", this, [jr.call(jr.call_static("BasicArrayListUtil", "getInstance_0", []), "getImmutableInstance_0", []), jr.JInt(-1), jr.get_static("NullCanvas", "NULL_CANVAS")])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "NoMenuInputProcessor",
        "org.allbinary.game.displayable.canvas.NoMenuInputProcessor",
        "BasicMenuInputProcessor",
        [],
        False,
        [],
        [#("SINGLETON", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("onDownGameKeyEvent_1", ["GameKeyEvent"], False, c1_m4__ondowngamekeyevent), 
            jr.Method("onUpGameKeyEvent_1", ["GameKeyEvent"], False, c1_m5__onupgamekeyevent), 
            jr.Method("onMotionGestureEvent_1", ["MotionGestureEvent"], False, c1_m6__onmotiongestureevent), 
            jr.Method("jinit_0", [], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

