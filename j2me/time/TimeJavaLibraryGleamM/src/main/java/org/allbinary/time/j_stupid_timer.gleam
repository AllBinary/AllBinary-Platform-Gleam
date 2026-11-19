// Generated Code Do Not Modify
// package org.allbinary.time
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class StupidTimer

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "commonStrings", jr.call_static("CommonStrings", "getInstance_0", []))
    jr.set_field(this, "nullUtil", jr.call_static("NullUtil", "getInstance_0", []))
    jr.set_field(this, "threadObjectUtil", jr.call_static("ThreadObjectUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m5__visitbool(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_visitor_interface] = jargs
        let l_result = jr.call(l_visitor_interface, "visit_1", [jr.get_field(jr.get_field(this, "nullUtil"), "NULL_OBJECT")])
        let l_result2 = jr.call(l_result, "booleanValue_0", [])
    l_result2
}

fn c1_m6__visit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_visitor_interface, l_time_delay_helper] = jargs
        let l_took_too_long = jr.cell(jr.JBool(False))
        let l__w_a_i_t_i_n_g___f_o_r = jr.JStr("Waiting for: ")
        jr.call_static("PreLogUtil", "put_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [l__w_a_i_t_i_n_g___f_o_r]), "append_1", [jr.call(jr.call_static("StringUtil", "getInstance_0", []), "toString_1", [l_visitor_interface])]), "toString_0", []), this, jr.get_field(jr.get_field(this, "commonStrings"), "VISIT")])
        let l_index = jr.cell(jr.as_i(jr.JInt(0)))
        jr.while_loop("", fn() { jr.call(this, "visitBool_1", [l_visitor_interface]) }, fn() {
            case jr.truth(jr.eq(jr.rem(jr.get(l_index), jr.JInt(10)), jr.JInt(0))) {
                True -> {
                jr.call_static("PreLogUtil", "put_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [l__w_a_i_t_i_n_g___f_o_r]), "appendint_1", [jr.get(l_index)]), "toString_0", []), this, jr.get_field(jr.get_field(this, "commonStrings"), "VISIT")])
                Nil
            }
                False -> Nil
            }
            jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True)
            {
                jr.call(jr.get_field(this, "threadObjectUtil"), "waitObjectFor_2", [this, jr.JInt(1800)])
                Nil
            }
            case jr.truth(jr.call(l_time_delay_helper, "isTimeTNT_0", [])) {
                True -> {
                jr.set(l_took_too_long, jr.JBool(True))
                jr.brk("")
                Nil
            }
                False -> Nil
            }
            Nil
        })
        case jr.truth(jr.get(l_took_too_long)) {
            True -> {
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(jr.get_field(this, "commonStrings"), "EXCEPTION"), this, jr.get_field(jr.get_field(this, "commonStrings"), "VISIT"), jr.new("Exception", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.JStr("Took Too Long: ")]), "append_1", [jr.call(jr.call_static("StringUtil", "getInstance_0", []), "toString_1", [l_visitor_interface])]), "toString_0", [])])])
            Nil
        }
            False -> {
            jr.call_static("PreLogUtil", "put_3", [jr.call(l_time_delay_helper, "toString_0", []), this, jr.get_field(jr.get_field(this, "commonStrings"), "VISIT")])
            Nil
        }
        }
    jr.JNull
}

fn c1_m7__stopwaiting(this: jr.V, jargs: List(jr.V)) -> jr.V {
        {
            jr.call(jr.get_field(this, "threadObjectUtil"), "notifyObject_1", [this])
            Nil
        }
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "StupidTimer",
        "org.allbinary.time.StupidTimer",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull), #("commonStrings", jr.JNull), #("nullUtil", jr.JNull), #("threadObjectUtil", jr.JNull)],
        [],
        [
            jr.Method("visitBool_1", ["Visitor"], False, c1_m5__visitbool), 
            jr.Method("visit_2", ["Visitor", "TimeDelayHelper"], False, c1_m6__visit), 
            jr.Method("stopWaiting_0", [], False, c1_m7__stopwaiting), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

