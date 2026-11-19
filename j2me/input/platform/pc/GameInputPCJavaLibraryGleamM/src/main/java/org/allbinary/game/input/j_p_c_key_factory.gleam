// Generated Code Do Not Modify
// package org.allbinary.game.input
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class PCKeyFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "keyEventWrapper", jr.call_static("ABKeyEventWrapper", "getInstance_0", []))
    jr.set_field(this, "UNKNOWN", jr.new("PCGameKey", [jr.get_field(jr.get_field(this, "keyEventWrapper"), "VK_UNDEFINED"), jr.JStr("UNKNOWN")]))
    jr.set_field(this, "ENTER", jr.new("PCGameKey", [jr.JInt(5), jr.JStr("Enter")]))
    jr.set_field(this, "_A", jr.new("PCGameKey", [jr.get_field(jr.get_field(this, "keyEventWrapper"), "VK_A"), jr.JStr("A")]))
    jr.set_field(this, "_B", jr.new("PCGameKey", [jr.get_field(jr.get_field(this, "keyEventWrapper"), "VK_B"), jr.JStr("B")]))
    jr.set_field(this, "_C", jr.new("PCGameKey", [jr.get_field(jr.get_field(this, "keyEventWrapper"), "VK_C"), jr.JStr("C")]))
    jr.set_field(this, "_D", jr.new("PCGameKey", [jr.get_field(jr.get_field(this, "keyEventWrapper"), "VK_D"), jr.JStr("D")]))
    jr.set_field(this, "_E", jr.new("PCGameKey", [jr.get_field(jr.get_field(this, "keyEventWrapper"), "VK_E"), jr.JStr("E")]))
    jr.set_field(this, "_F", jr.new("PCGameKey", [jr.get_field(jr.get_field(this, "keyEventWrapper"), "VK_F"), jr.JStr("F")]))
    jr.set_field(this, "_G", jr.new("PCGameKey", [jr.get_field(jr.get_field(this, "keyEventWrapper"), "VK_G"), jr.JStr("G")]))
    jr.set_field(this, "_H", jr.new("PCGameKey", [jr.get_field(jr.get_field(this, "keyEventWrapper"), "VK_H"), jr.JStr("H")]))
    jr.set_field(this, "_I", jr.new("PCGameKey", [jr.get_field(jr.get_field(this, "keyEventWrapper"), "VK_I"), jr.JStr("I")]))
    jr.set_field(this, "_J", jr.new("PCGameKey", [jr.get_field(jr.get_field(this, "keyEventWrapper"), "VK_J"), jr.JStr("J")]))
    jr.set_field(this, "_K", jr.new("PCGameKey", [jr.get_field(jr.get_field(this, "keyEventWrapper"), "VK_K"), jr.JStr("K")]))
    jr.set_field(this, "_L", jr.new("PCGameKey", [jr.get_field(jr.get_field(this, "keyEventWrapper"), "VK_L"), jr.JStr("L")]))
    jr.set_field(this, "_M", jr.new("PCGameKey", [jr.get_field(jr.get_field(this, "keyEventWrapper"), "VK_M"), jr.JStr("M")]))
    jr.set_field(this, "_N", jr.new("PCGameKey", [jr.get_field(jr.get_field(this, "keyEventWrapper"), "VK_N"), jr.JStr("N")]))
    jr.set_field(this, "_O", jr.new("PCGameKey", [jr.get_field(jr.get_field(this, "keyEventWrapper"), "VK_O"), jr.JStr("O")]))
    jr.set_field(this, "_P", jr.new("PCGameKey", [jr.get_field(jr.get_field(this, "keyEventWrapper"), "VK_P"), jr.JStr("P")]))
    jr.set_field(this, "_Q", jr.new("PCGameKey", [jr.get_field(jr.get_field(this, "keyEventWrapper"), "VK_Q"), jr.JStr("Q")]))
    jr.set_field(this, "_R", jr.new("PCGameKey", [jr.get_field(jr.get_field(this, "keyEventWrapper"), "VK_R"), jr.JStr("R")]))
    jr.set_field(this, "_S", jr.new("PCGameKey", [jr.get_field(jr.get_field(this, "keyEventWrapper"), "VK_S"), jr.JStr("S")]))
    jr.set_field(this, "_T", jr.new("PCGameKey", [jr.get_field(jr.get_field(this, "keyEventWrapper"), "VK_T"), jr.JStr("T")]))
    jr.set_field(this, "_U", jr.new("PCGameKey", [jr.get_field(jr.get_field(this, "keyEventWrapper"), "VK_U"), jr.JStr("U")]))
    jr.set_field(this, "_V", jr.new("PCGameKey", [jr.get_field(jr.get_field(this, "keyEventWrapper"), "VK_V"), jr.JStr("V")]))
    jr.set_field(this, "_W", jr.new("PCGameKey", [jr.get_field(jr.get_field(this, "keyEventWrapper"), "VK_W"), jr.JStr("W")]))
    jr.set_field(this, "_X", jr.new("PCGameKey", [jr.get_field(jr.get_field(this, "keyEventWrapper"), "VK_X"), jr.JStr("X")]))
    jr.set_field(this, "_Y", jr.new("PCGameKey", [jr.get_field(jr.get_field(this, "keyEventWrapper"), "VK_Y"), jr.JStr("Y")]))
    jr.set_field(this, "_Z", jr.new("PCGameKey", [jr.get_field(jr.get_field(this, "keyEventWrapper"), "VK_Z"), jr.JStr("Z")]))
    jr.set_field(this, "a", jr.new("PCGameKey", [jr.JInt(97), jr.JStr("a")]))
    jr.set_field(this, "b", jr.new("PCGameKey", [jr.JInt(98), jr.JStr("b")]))
    jr.set_field(this, "c", jr.new("PCGameKey", [jr.JInt(99), jr.JStr("c")]))
    jr.set_field(this, "d", jr.new("PCGameKey", [jr.JInt(100), jr.JStr("d")]))
    jr.set_field(this, "e", jr.new("PCGameKey", [jr.JInt(101), jr.JStr("e")]))
    jr.set_field(this, "f", jr.new("PCGameKey", [jr.JInt(102), jr.JStr("f")]))
    jr.set_field(this, "g", jr.new("PCGameKey", [jr.JInt(103), jr.JStr("g")]))
    jr.set_field(this, "h", jr.new("PCGameKey", [jr.JInt(104), jr.JStr("h")]))
    jr.set_field(this, "i", jr.new("PCGameKey", [jr.JInt(105), jr.JStr("i")]))
    jr.set_field(this, "j", jr.new("PCGameKey", [jr.JInt(106), jr.JStr("j")]))
    jr.set_field(this, "k", jr.new("PCGameKey", [jr.JInt(107), jr.JStr("k")]))
    jr.set_field(this, "l", jr.new("PCGameKey", [jr.JInt(108), jr.JStr("l")]))
    jr.set_field(this, "m", jr.new("PCGameKey", [jr.JInt(109), jr.JStr("m")]))
    jr.set_field(this, "n", jr.new("PCGameKey", [jr.JInt(110), jr.JStr("n")]))
    jr.set_field(this, "o", jr.new("PCGameKey", [jr.JInt(111), jr.JStr("o")]))
    jr.set_field(this, "p", jr.new("PCGameKey", [jr.JInt(112), jr.JStr("p")]))
    jr.set_field(this, "q", jr.new("PCGameKey", [jr.JInt(113), jr.JStr("q")]))
    jr.set_field(this, "r", jr.new("PCGameKey", [jr.JInt(114), jr.JStr("r")]))
    jr.set_field(this, "s", jr.new("PCGameKey", [jr.JInt(115), jr.JStr("s")]))
    jr.set_field(this, "t", jr.new("PCGameKey", [jr.JInt(116), jr.JStr("t")]))
    jr.set_field(this, "u", jr.new("PCGameKey", [jr.JInt(117), jr.JStr("u")]))
    jr.set_field(this, "v", jr.new("PCGameKey", [jr.JInt(118), jr.JStr("v")]))
    jr.set_field(this, "w", jr.new("PCGameKey", [jr.JInt(119), jr.JStr("w")]))
    jr.set_field(this, "x", jr.new("PCGameKey", [jr.JInt(120), jr.get_field(jr.call_static("PositionStrings", "getInstance_0", []), "X")]))
    jr.set_field(this, "y", jr.new("PCGameKey", [jr.JInt(121), jr.get_field(jr.call_static("PositionStrings", "getInstance_0", []), "Y")]))
    jr.set_field(this, "z", jr.new("PCGameKey", [jr.JInt(122), jr.JStr("z")]))
    jr.set_field(this, "ZERO", jr.new("PCGameKey", [jr.get_field(jr.get_field(this, "keyEventWrapper"), "VK_0"), jr.get_field(jr.call_static("CommonPhoneStrings", "getInstance_0", []), "ZERO")]))
    jr.set_field(this, "ONE", jr.new("PCGameKey", [jr.get_field(jr.get_field(this, "keyEventWrapper"), "VK_1"), jr.get_field(jr.call_static("CommonPhoneStrings", "getInstance_0", []), "ONE")]))
    jr.set_field(this, "TWO", jr.new("PCGameKey", [jr.get_field(jr.get_field(this, "keyEventWrapper"), "VK_2"), jr.get_field(jr.call_static("CommonPhoneStrings", "getInstance_0", []), "TWO")]))
    jr.set_field(this, "THREE", jr.new("PCGameKey", [jr.get_field(jr.get_field(this, "keyEventWrapper"), "VK_3"), jr.get_field(jr.call_static("CommonPhoneStrings", "getInstance_0", []), "THREE")]))
    jr.set_field(this, "FOUR", jr.new("PCGameKey", [jr.get_field(jr.get_field(this, "keyEventWrapper"), "VK_4"), jr.get_field(jr.call_static("CommonPhoneStrings", "getInstance_0", []), "FOUR")]))
    jr.set_field(this, "FIVE", jr.new("PCGameKey", [jr.get_field(jr.get_field(this, "keyEventWrapper"), "VK_5"), jr.get_field(jr.call_static("CommonPhoneStrings", "getInstance_0", []), "FIVE")]))
    jr.set_field(this, "SIX", jr.new("PCGameKey", [jr.get_field(jr.get_field(this, "keyEventWrapper"), "VK_6"), jr.get_field(jr.call_static("CommonPhoneStrings", "getInstance_0", []), "SIX")]))
    jr.set_field(this, "SEVEN", jr.new("PCGameKey", [jr.get_field(jr.get_field(this, "keyEventWrapper"), "VK_7"), jr.get_field(jr.call_static("CommonPhoneStrings", "getInstance_0", []), "SEVEN")]))
    jr.set_field(this, "EIGHT", jr.new("PCGameKey", [jr.get_field(jr.get_field(this, "keyEventWrapper"), "VK_8"), jr.get_field(jr.call_static("CommonPhoneStrings", "getInstance_0", []), "EIGHT")]))
    jr.set_field(this, "NINE", jr.new("PCGameKey", [jr.get_field(jr.get_field(this, "keyEventWrapper"), "VK_9"), jr.get_field(jr.call_static("CommonPhoneStrings", "getInstance_0", []), "NINE")]))
    jr.set_field(this, "DPAD_UP", jr.new("PCGameKey", [jr.get_field(jr.get_field(this, "keyEventWrapper"), "VK_UP"), jr.get_field(jr.call_static("CommonPhoneStrings", "getInstance_0", []), "UP")]))
    jr.set_field(this, "DPAD_DOWN", jr.new("PCGameKey", [jr.get_field(jr.get_field(this, "keyEventWrapper"), "VK_DOWN"), jr.get_field(jr.call_static("CommonPhoneStrings", "getInstance_0", []), "DOWN")]))
    jr.set_field(this, "DPAD_LEFT", jr.new("PCGameKey", [jr.get_field(jr.get_field(this, "keyEventWrapper"), "VK_LEFT"), jr.get_field(jr.call_static("CommonPhoneStrings", "getInstance_0", []), "LEFT")]))
    jr.set_field(this, "DPAD_RIGHT", jr.new("PCGameKey", [jr.get_field(jr.get_field(this, "keyEventWrapper"), "VK_RIGHT"), jr.get_field(jr.call_static("CommonPhoneStrings", "getInstance_0", []), "RIGHT")]))
    jr.set_field(this, "DPAD_UP2", jr.get_field(this, "DPAD_UP"))
    jr.set_field(this, "DPAD_DOWN2", jr.get_field(this, "DPAD_DOWN"))
    jr.set_field(this, "DPAD_LEFT2", jr.get_field(this, "DPAD_LEFT"))
    jr.set_field(this, "DPAD_RIGHT2", jr.get_field(this, "DPAD_RIGHT"))
    jr.set_field(this, "COMMA", jr.new("PCGameKey", [jr.get_field(jr.get_field(this, "keyEventWrapper"), "VK_COMMA"), jr.JStr("COMMA")]))
    jr.set_field(this, "SPACE", jr.new("PCGameKey", [jr.get_field(jr.get_field(this, "keyEventWrapper"), "VK_SPACE"), jr.JStr("SPACE")]))
    jr.set_field(this, "DEL", jr.new("PCGameKey", [jr.get_field(jr.get_field(this, "keyEventWrapper"), "VK_DELETE"), jr.JStr("DEL")]))
    jr.set_field(this, "STAR", jr.new("PCGameKey", [jr.JInt(42), jr.get_field(jr.call_static("CommonPhoneStrings", "getInstance_0", []), "STAR")]))
    jr.set_field(this, "QUESTION", jr.new("PCGameKey", [jr.JInt(47), jr.JStr("?")]))
    jr.set_field(this, "PERIOD", jr.new("PCGameKey", [jr.get_field(jr.get_field(this, "keyEventWrapper"), "VK_PERIOD"), jr.get_field(jr.call_static("CommonSeps", "getInstance_0", []), "PERIOD")]))
    jr.set_field(this, "ESCAPE", jr.new("PCGameKey", [jr.get_field(jr.get_field(this, "keyEventWrapper"), "VK_ESCAPE"), jr.JStr("Esc")]))
    jr.set_field(this, "BACK_SPACE", jr.new("PCGameKey", [jr.get_field(jr.get_field(this, "keyEventWrapper"), "VK_BACK_SPACE"), jr.JStr("Backspace")]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("PCKeyFactory", "SINGLETON", jr.new("PCKeyFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("PCKeyFactory", "SINGLETON")
}

fn c1_m84__issubmission(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_input] = jargs
    jr.method(fn() {
            case jr.truth(jr.eq(l_input, jr.get_field(this, "ENTER"))) {
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

fn c1_m85__isdelete(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_input] = jargs
    jr.method(fn() {
            case jr.truth(jr.eq(l_input, jr.get_field(this, "DEL"))) {
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

fn c1_m86__isbackspace(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_input] = jargs
    jr.method(fn() {
            case jr.truth(jr.eq(l_input, jr.get_field(this, "BACK_SPACE"))) {
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

fn c1_m87__isup(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_input] = jargs
    jr.method(fn() {
            case jr.truth(case jr.truth(jr.eq(l_input, jr.get_field(this, "DPAD_UP"))) { True -> jr.JBool(True) False -> jr.eq(l_input, jr.get_field(this, "DPAD_UP2")) }) {
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

fn c1_m88__isdown(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_input] = jargs
    jr.method(fn() {
            case jr.truth(case jr.truth(jr.eq(l_input, jr.get_field(this, "DPAD_DOWN"))) { True -> jr.JBool(True) False -> jr.eq(l_input, jr.get_field(this, "DPAD_DOWN2")) }) {
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

fn c1_m89__isleft(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_input] = jargs
    jr.method(fn() {
            case jr.truth(case jr.truth(jr.eq(l_input, jr.get_field(this, "DPAD_LEFT"))) { True -> jr.JBool(True) False -> jr.eq(l_input, jr.get_field(this, "DPAD_LEFT2")) }) {
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

fn c1_m90__isright(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_input] = jargs
    jr.method(fn() {
            case jr.truth(case jr.truth(jr.eq(l_input, jr.get_field(this, "DPAD_RIGHT"))) { True -> jr.JBool(True) False -> jr.eq(l_input, jr.get_field(this, "DPAD_RIGHT2")) }) {
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

fn c1_m91__isenter(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_input] = jargs
    jr.method(fn() {
            case jr.truth(jr.eq(l_input, jr.get_field(this, "ENTER"))) {
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

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "PCKeyFactory",
        "org.allbinary.game.input.PCKeyFactory",
        "Object",
        [],
        False,
        [#("keyEventWrapper", jr.JNull), #("UNKNOWN", jr.JNull), #("ENTER", jr.JNull), #("_A", jr.JNull), #("_B", jr.JNull), #("_C", jr.JNull), #("_D", jr.JNull), #("_E", jr.JNull), #("_F", jr.JNull), #("_G", jr.JNull), #("_H", jr.JNull), #("_I", jr.JNull), #("_J", jr.JNull), #("_K", jr.JNull), #("_L", jr.JNull), #("_M", jr.JNull), #("_N", jr.JNull), #("_O", jr.JNull), #("_P", jr.JNull), #("_Q", jr.JNull), #("_R", jr.JNull), #("_S", jr.JNull), #("_T", jr.JNull), #("_U", jr.JNull), #("_V", jr.JNull), #("_W", jr.JNull), #("_X", jr.JNull), #("_Y", jr.JNull), #("_Z", jr.JNull), #("a", jr.JNull), #("b", jr.JNull), #("c", jr.JNull), #("d", jr.JNull), #("e", jr.JNull), #("f", jr.JNull), #("g", jr.JNull), #("h", jr.JNull), #("i", jr.JNull), #("j", jr.JNull), #("k", jr.JNull), #("l", jr.JNull), #("m", jr.JNull), #("n", jr.JNull), #("o", jr.JNull), #("p", jr.JNull), #("q", jr.JNull), #("r", jr.JNull), #("s", jr.JNull), #("t", jr.JNull), #("u", jr.JNull), #("v", jr.JNull), #("w", jr.JNull), #("x", jr.JNull), #("y", jr.JNull), #("z", jr.JNull), #("ZERO", jr.JNull), #("ONE", jr.JNull), #("TWO", jr.JNull), #("THREE", jr.JNull), #("FOUR", jr.JNull), #("FIVE", jr.JNull), #("SIX", jr.JNull), #("SEVEN", jr.JNull), #("EIGHT", jr.JNull), #("NINE", jr.JNull), #("DPAD_UP", jr.JNull), #("DPAD_DOWN", jr.JNull), #("DPAD_LEFT", jr.JNull), #("DPAD_RIGHT", jr.JNull), #("DPAD_UP2", jr.JNull), #("DPAD_DOWN2", jr.JNull), #("DPAD_LEFT2", jr.JNull), #("DPAD_RIGHT2", jr.JNull), #("COMMA", jr.JNull), #("SPACE", jr.JNull), #("DEL", jr.JNull), #("STAR", jr.JNull), #("QUESTION", jr.JNull), #("PERIOD", jr.JNull), #("ESCAPE", jr.JNull), #("BACK_SPACE", jr.JNull)],
        [#("SINGLETON", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("isSubmission_1", ["Input"], False, c1_m84__issubmission), 
            jr.Method("isDelete_1", ["Input"], False, c1_m85__isdelete), 
            jr.Method("isBackSpace_1", ["Input"], False, c1_m86__isbackspace), 
            jr.Method("isUp_1", ["Input"], False, c1_m87__isup), 
            jr.Method("isDown_1", ["Input"], False, c1_m88__isdown), 
            jr.Method("isLeft_1", ["Input"], False, c1_m89__isleft), 
            jr.Method("isRight_1", ["Input"], False, c1_m90__isright), 
            jr.Method("isEnter_1", ["Input"], False, c1_m91__isenter), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

