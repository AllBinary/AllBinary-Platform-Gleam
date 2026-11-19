// Generated Code Do Not Modify
// package org.allbinary.game.score
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class HighScoreCommandsBaseFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__ishighscorecommand(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_command] = jargs
    jr.method(fn() {
            {
            let l_index = jr.cell(jr.as_i(jr.sub(jr.alen(jr.get_field(this, "HIGH_SCORE_COMMANDS")), jr.JInt(1))))
            jr.for_loop("", fn() { jr.ge(jr.get(l_index), jr.JInt(0)) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, True) Nil }, fn() {
            case jr.truth(jr.eq(l_command, jr.aget(jr.get_field(this, "HIGH_SCORE_COMMANDS"), jr.get(l_index)))) {
                True -> {
                jr.ret(jr.JBool(True))
                Nil
            }
                False -> Nil
            }
            Nil
        })
            Nil
        }
            jr.ret(jr.JBool(False))
        jr.JNull
    })
}

fn c1_m5__getindex(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_command] = jargs
    jr.method(fn() {
            {
            let l_index = jr.cell(jr.as_i(jr.sub(jr.alen(jr.get_field(this, "HIGH_SCORE_COMMANDS")), jr.JInt(1))))
            jr.for_loop("", fn() { jr.ge(jr.get(l_index), jr.JInt(0)) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, True) Nil }, fn() {
            case jr.truth(jr.eq(l_command, jr.aget(jr.get_field(this, "HIGH_SCORE_COMMANDS"), jr.get(l_index)))) {
                True -> {
                jr.ret(jr.as_i(jr.get(l_index)))
                Nil
            }
                False -> Nil
            }
            Nil
        })
            Nil
        }
            jr.throw(jr.new("Exception", [jr.JStr("No Such Command")]))
        jr.JNull
    })
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l__h_i_g_h___s_c_o_r_e___c_o_m_m_a_n_d_s] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "HIGH_SCORE_COMMANDS", l__h_i_g_h___s_c_o_r_e___c_o_m_m_a_n_d_s)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "HighScoreCommandsBaseFactory",
        "org.allbinary.game.score.HighScoreCommandsBaseFactory",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull), #("HIGH_SCORE_COMMANDS", jr.JNull)],
        [],
        [
            jr.Method("isHighScoreCommand_1", ["Command"], False, c1_m4__ishighscorecommand), 
            jr.Method("getIndex_1", ["Command"], False, c1_m5__getindex), 
            jr.Method("jinit_1", ["CommandArr"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

