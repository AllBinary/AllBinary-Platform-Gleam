// Generated Code Do Not Modify
// package org.allbinary.input.motion.gesture.configuration
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class MotionGestureConfiguration

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "diagonalMotionGestureAllowed", jr.JBool(True))
    jr.set_field(this, "diagonalTolerance", jr.as_i(jr.JInt(7)))
    jr.set_field(this, "minimumMotionGesture", jr.as_i(jr.JInt(9)))
    jr.set_field(this, "button", jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"))
    jr.set_field(this, "color", jr.get_field(jr.call_static("BasicColorFactory", "getInstance_0", []), "BLUE"))
    jr.set_field(this, "executingActions", jr.JBool(True))
    jr.set_field(this, "mouseButtonMask", jr.as_i(jr.JInt(0)))
    jr.set_field(this, "activeCommands", jr.new("BasicArrayListD", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m10__addmotiongestureaction(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_list, l_command_action] = jargs
        jr.call(jr.get_field(this, "activeCommands"), "add_1", [jr.new("MotionGestureToMotionGestureActionAssociation", [l_list, l_command_action])])
    jr.JNull
}

fn c1_m11__clearmotiongestureaction(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "activeCommands"), "clear_0", [])
    jr.JNull
}

fn c1_m12__getassociatecommandactionslist(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "activeCommands")
}

fn c1_m13__isdiagonalmotiongestureallowed(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "diagonalMotionGestureAllowed")
}

fn c1_m14__isexecutingactionsallowed(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "executingActions")
}

fn c1_m15__setexecutingactionsallowed(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_executing_action_allowed] = jargs
        jr.set_field(this, "executingActions", l_executing_action_allowed)
    jr.JNull
}

fn c1_m16__setdiagonalmotiongestureallowed(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_diagonal_motion_gesture_allowed] = jargs
        jr.set_field(this, "diagonalMotionGestureAllowed", l_diagonal_motion_gesture_allowed)
    jr.JNull
}

fn c1_m17__getdiagonaltolerance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "diagonalTolerance"))
}

fn c1_m18__setdiagonaltolerance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_diagonal_tolerance] = jargs
    let l_diagonal_tolerance = jr.as_i(l_diagonal_tolerance)
        jr.set_field(this, "diagonalTolerance", jr.as_i(l_diagonal_tolerance))
    jr.JNull
}

fn c1_m19__getminimummotiongesture(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "minimumMotionGesture"))
}

fn c1_m20__setminimummotiongesture(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_minimum_motion_gesture] = jargs
    let l_minimum_motion_gesture = jr.as_i(l_minimum_motion_gesture)
        jr.set_field(this, "minimumMotionGesture", jr.as_i(l_minimum_motion_gesture))
    jr.JNull
}

fn c1_m21__getbutton(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "button")
}

fn c1_m22__setbutton(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_button] = jargs
        jr.set_field(this, "button", l_button)
    jr.JNull
}

fn c1_m23__getcolor(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "color")
}

fn c1_m24__setcolor(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_color] = jargs
        jr.set_field(this, "color", l_color)
    jr.JNull
}

fn c1_m25__getmousebuttonmask(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "mouseButtonMask"))
}

fn c1_m26__setmousebuttonmask(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_mouse_button_mask] = jargs
    let l_mouse_button_mask = jr.as_i(l_mouse_button_mask)
        jr.set_field(this, "mouseButtonMask", jr.as_i(l_mouse_button_mask))
    jr.JNull
}

fn c1_jinit9(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "MotionGestureConfiguration",
        "org.allbinary.input.motion.gesture.configuration.MotionGestureConfiguration",
        "Object",
        [],
        False,
        [#("diagonalMotionGestureAllowed", jr.JBool(False)), #("diagonalTolerance", jr.JInt(0)), #("minimumMotionGesture", jr.JInt(0)), #("button", jr.JNull), #("color", jr.JNull), #("executingActions", jr.JBool(False)), #("mouseButtonMask", jr.JInt(0)), #("activeCommands", jr.JNull)],
        [],
        [
            jr.Method("addMotionGestureAction_2", ["BasicArrayList", "CompleteMotionGestureInputEvent"], False, c1_m10__addmotiongestureaction), 
            jr.Method("clearMotionGestureAction_0", [], False, c1_m11__clearmotiongestureaction), 
            jr.Method("getAssociateCommandActionsList_0", [], False, c1_m12__getassociatecommandactionslist), 
            jr.Method("isDiagonalMotionGestureAllowed_0", [], False, c1_m13__isdiagonalmotiongestureallowed), 
            jr.Method("isExecutingActionsAllowed_0", [], False, c1_m14__isexecutingactionsallowed), 
            jr.Method("setExecutingActionsAllowed_1", ["boolean"], False, c1_m15__setexecutingactionsallowed), 
            jr.Method("setDiagonalMotionGestureAllowed_1", ["boolean"], False, c1_m16__setdiagonalmotiongestureallowed), 
            jr.Method("getDiagonalTolerance_0", [], False, c1_m17__getdiagonaltolerance), 
            jr.Method("setDiagonalTolerance_1", ["int"], False, c1_m18__setdiagonaltolerance), 
            jr.Method("getMinimumMotionGesture_0", [], False, c1_m19__getminimummotiongesture), 
            jr.Method("setMinimumMotionGesture_1", ["int"], False, c1_m20__setminimummotiongesture), 
            jr.Method("getButton_0", [], False, c1_m21__getbutton), 
            jr.Method("setButton_1", ["String"], False, c1_m22__setbutton), 
            jr.Method("getColor_0", [], False, c1_m23__getcolor), 
            jr.Method("setColor_1", ["BasicColor"], False, c1_m24__setcolor), 
            jr.Method("getMouseButtonMask_0", [], False, c1_m25__getmousebuttonmask), 
            jr.Method("setMouseButtonMask_1", ["int"], False, c1_m26__setmousebuttonmask), 
            jr.Method("jinit_0", [], False, c1_jinit9)],
        c1_jfields,
        c1_jclinit,
    )
}

