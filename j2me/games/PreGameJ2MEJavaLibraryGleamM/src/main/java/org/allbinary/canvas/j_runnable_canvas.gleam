// Generated Code Do Not Modify
// package org.allbinary.canvas
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class RunnableCanvas

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "nullUtil", jr.call_static("NullUtil", "getInstance_0", []))
    jr.set_field(this, "stdUtil", jr.call_static("StdUtil", "getInstance_0", []))
    jr.set_field(this, "systemWrapper", jr.call_static("ABSystemWrapper", "getInstance_0", []))
    jr.set_field(this, "tsUtil", jr.call_static("TsUtil", "getInstance_0", []))
    jr.set_field(this, "thread", jr.get_static("NullThread", "NULL_THREAD"))
    jr.set_field(this, "currentThread", jr.get_static("NullThread", "NULL_THREAD"))
    jr.set_field(this, "loopTimeHelper", jr.new("TimeDelayHelper", [jr.get_field(jr.call_static("NullWaitGameRunnable", "getInstance_0", []), "WAIT")]))
    jr.set_field(this, "runnableCanvasRefreshHelper", jr.call_static("Processor", "getInstance_0", []))
    jr.set_field(this, "commonLabels", jr.call_static("CommonLabels", "getInstance_0", []))
    jr.set_field(this, "threadObjectUtil", jr.call_static("ThreadObjectUtil", "getInstance_0", []))
    jr.set_field(this, "SET_RUNNING", jr.JStr("setRunning"))
    jr.set_field(this, "IS_RUNNING", jr.JStr("isRunning"))
    jr.set_field(this, "THREAD", jr.JStr("Thread: "))
    jr.set_field(this, "NOT_EQUAL", jr.JStr(" != "))
    jr.set_field(this, "PAUSE_SLEEP", jr.JStr("pause sleep"))
    jr.set_field(this, "START_PAUSE", jr.JStr("start pause - game thread sleep at: "))
    jr.set_field(this, "END_PAUSE", jr.JStr("end pause - game thread sleep at: "))
    jr.set_field(this, "PROCESS_LOOP_SLEEP", jr.JStr("processLoopSleep"))
    jr.set_field(this, "pauseWait", jr.as_j(jr.JLong(0)))
    jr.set_field(this, "notified", jr.JBool(False))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m21__initcommands(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_cmd_listener] = jargs
        jr.call(jr.get_inherited(this, "RunnableCanvas", "logUtil"), "putF_3", [jr.get_field(jr.get_inherited(this, "RunnableCanvas", "commonStrings"), "NOT_IMPLEMENTED"), this, jr.JStr("initCommands")])
    jr.JNull
}

fn c1_m22__ismaincanvas(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.method(fn() {
            case jr.truth(jr.ne(jr.call_inherited(this, "RunnableCanvas", "getCustomCommandListener_0", []), jr.JNull)) {
            True -> {
            jr.ret(jr.JBool(True))
            Nil
        }
            False -> {
            jr.ret(jr.JBool(False))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_m23__setthread(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_thread] = jargs
        jr.set_field(this, "thread", l_thread)
    jr.JNull
}

fn c1_m24__setrunning(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_running] = jargs
        jr.set_field(this, "running", l_running)
        case jr.truth(jr.not(jr.get_field(this, "running"))) {
            True -> {
            jr.set_field(this, "thread", jr.get_static("NullThread", "NULL_THREAD"))
            {
                jr.call(jr.get_field(this, "threadObjectUtil"), "notifyObject_1", [this])
                Nil
            }
            Nil
        }
            False -> Nil
        }
        jr.call(jr.get_inherited(this, "RunnableCanvas", "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(this, "IS_RUNNING")]), "appendboolean_1", [jr.get_field(this, "running")]), "toString_0", []), this, jr.get_field(this, "SET_RUNNING")])
    jr.JNull
}

fn c1_m25__isrunning(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.method(fn() {
            case jr.truth(jr.eq(jr.get_field(this, "thread"), jr.get_field(this, "currentThread"))) {
            True -> {
            jr.ret(jr.get_field(this, "running"))
            Nil
        }
            False -> {
            let l_string_buffer = jr.new("StringMaker", [])
            jr.call(l_string_buffer, "append_1", [jr.get_field(this, "THREAD")])
            case jr.truth(jr.ne(jr.get_field(this, "thread"), jr.JNull)) {
                True -> {
                jr.call(l_string_buffer, "append_1", [jr.call(jr.get_field(this, "thread"), "toString_0", [])])
                Nil
            }
                False -> Nil
            }
            jr.call(l_string_buffer, "append_1", [jr.get_field(this, "NOT_EQUAL")])
            case jr.truth(jr.ne(jr.get_field(this, "currentThread"), jr.JNull)) {
                True -> {
                jr.call(l_string_buffer, "append_1", [jr.call(jr.call_static("StringUtil", "getInstance_0", []), "toString_1", [jr.get_field(this, "currentThread")])])
                Nil
            }
                False -> Nil
            }
            jr.call(jr.get_inherited(this, "RunnableCanvas", "logUtil"), "putF_3", [jr.call(l_string_buffer, "toString_0", []), this, jr.get_field(this, "IS_RUNNING")])
            jr.ret(jr.JBool(False))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_m26__getlooptimehelperp(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "loopTimeHelper")
}

fn c1_m28__setwait(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_wait] = jargs
    let l_wait = jr.as_i(l_wait)
        jr.set_field(jr.get_field(this, "loopTimeHelper"), "delay", jr.as_i(l_wait))
        jr.set_field(this, "pauseWait", jr.as_j(jr.mul(jr.to_j(l_wait), jr.JLong(3))))
        jr.call(jr.get_inherited(this, "RunnableCanvas", "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.JStr("setWait - delay: ")]), "appendint_1", [jr.get_field(jr.get_field(this, "loopTimeHelper"), "delay")]), "toString_0", []), this, jr.get_field(jr.get_inherited(this, "RunnableCanvas", "commonStrings"), "CONSTRUCTOR")])
    jr.JNull
}

fn c1_m29__getwait(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(jr.get_field(this, "loopTimeHelper"), "delay"))
}

fn c1_m30__setcurrentthread(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.set_field(this, "currentThread", jr.call_static("Thread", "currentThread_0", []))
    jr.JNull
}

fn c1_m31__setcurrentthreadfake(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.set_field(this, "currentThread", jr.get_field(this, "thread"))
    jr.JNull
}

fn c1_m32__shownotify(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.try_catch(fn() {
            jr.call(this, "stopWaiting_0", [])
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call(jr.get_inherited(this, "RunnableCanvas", "logUtil"), "put_4", [jr.get_field(jr.get_inherited(this, "RunnableCanvas", "commonStrings"), "EXCEPTION"), this, jr.JStr("showNotify"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_m34__stopwaiting(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.set_field(this, "notified", jr.JBool(True))
        {
            jr.call(jr.get_field(this, "threadObjectUtil"), "notifyObject_1", [this])
            Nil
        }
        jr.call_inherited(this, "RunnableCanvas", "repaint_0", [])
    jr.JNull
}

fn c1_m35__waitonnotify(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_wait] = jargs
    let l_wait = jr.as_j(l_wait)
        case jr.truth(jr.not(jr.get_field(this, "notified"))) {
            True -> {
            case jr.truth(jr.gt(l_wait, jr.JLong(0))) {
                True -> {
                jr.call(jr.get_field(this, "threadObjectUtil"), "waitObjectFor_2", [this, l_wait])
                Nil
            }
                False -> {
                jr.call(jr.get_field(this, "threadObjectUtil"), "waitObject_1", [this])
                Nil
            }
            }
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m36__processsleep(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call_static("Thread", "sleep_1", [jr.get_field(this, "pauseWait")])
    jr.JNull
}

fn c1_m37__ispausable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JBool(False)
}

fn c1_m38__processgamesleep(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_sleep] = jargs
    let l_sleep = jr.as_j(l_sleep)
        jr.call_static("Thread", "sleep_1", [l_sleep])
    jr.JNull
}

fn c1_m39__processloopsleep(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.method(fn() {
            jr.call(jr.get_field(this, "runnableCanvasRefreshHelper"), "process_0", [])
            case jr.truth(jr.call_inherited(this, "RunnableCanvas", "isPaused_0", [])) {
            True -> {
            let l_string_maker = jr.new("StringMaker", [])
            case jr.truth(case jr.truth(jr.call(this, "isRunning_0", [])) { True -> jr.not(jr.call(this, "isSingleThread_0", [])) False -> jr.JBool(False) }) {
                True -> {
                jr.call(l_string_maker, "delete_2", [jr.JInt(0), jr.call(l_string_maker, "length_0", [])])
                let l_current_time_millis = jr.as_j(jr.call(jr.get_field(this, "systemWrapper"), "currentTimeMillis_0", []))
                jr.call(jr.get_inherited(this, "RunnableCanvas", "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.call(jr.call(l_string_maker, "append_1", [jr.get_field(this, "START_PAUSE")]), "appendlong_1", [l_current_time_millis]), "append_1", [jr.get_field(this, "PAUSE_SLEEP")]), "appendlong_1", [jr.get_field(this, "pauseWait")]), "toString_0", []), this, jr.get_field(this, "PROCESS_LOOP_SLEEP")])
                jr.while_loop("", fn() { case jr.truth(case jr.truth(jr.call_inherited(this, "RunnableCanvas", "isPaused_0", [])) { True -> jr.call(this, "isRunning_0", []) False -> jr.JBool(False) }) { True -> jr.not(jr.call(this, "isSingleThread_0", [])) False -> jr.JBool(False) } }, fn() {
                    jr.call(this, "processSleep_0", [])
                    case jr.truth(jr.not(jr.call(this, "isPausable_0", []))) {
                        True -> {
                        jr.call(l_string_maker, "delete_2", [jr.JInt(0), jr.call(l_string_maker, "length_0", [])])
                        jr.call(jr.get_inherited(this, "RunnableCanvas", "logUtil"), "putF_3", [jr.call(jr.call(jr.call(l_string_maker, "append_1", [jr.get_field(this, "END_PAUSE")]), "appendlong_1", [l_current_time_millis]), "toString_0", []), this, jr.get_field(this, "PROCESS_LOOP_SLEEP")])
                        jr.ret(jr.JNull)
                        Nil
                    }
                        False -> Nil
                    }
                    Nil
                })
                Nil
            }
                False -> Nil
            }
            Nil
        }
            False -> Nil
        }
            let l_elapsed_time = jr.cell(jr.as_j(jr.call(jr.get_field(this, "loopTimeHelper"), "getElapsedTNT_0", [])))
            let l_wait = jr.as_j(jr.to_j(jr.get_field(jr.get_field(this, "loopTimeHelper"), "delay")))
            case jr.truth(jr.gt(jr.get(l_elapsed_time), l_wait)) {
            True -> {
            jr.set(l_elapsed_time, jr.as_j(l_wait))
            Nil
        }
            False -> {
            jr.call(this, "processGameSleep_1", [jr.sub(l_wait, jr.get(l_elapsed_time))])
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_m40__issinglethread(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JBool(False)
}

fn c1_m41__run(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(this, "setCurrentThread_0", [])
    jr.JNull
}

fn c1_m42__end2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m43__gettype(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.JInt(-1))
}

fn c1_jinit20(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_command_listener, l_child_name_list, l_has_param] = jargs
        jr.super_init("MyCanvas", this, [jr.get_field(jr.call_static("CommonStrings", "getInstance_0", []), "UNKNOWN"), l_child_name_list])
        c1_jfields(this)
        jr.call(jr.get_inherited(this, "RunnableCanvas", "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.JStr("RunnableCanvas delay: ")]), "appendint_1", [jr.get_field(jr.get_field(this, "loopTimeHelper"), "delay")]), "toString_0", []), this, jr.get_field(jr.get_inherited(this, "RunnableCanvas", "commonStrings"), "CONSTRUCTOR")])
        jr.set_field(this, "runnableCanvasRefreshHelper", jr.new("RunnableCanvasRefreshHelper", [this]))
        case jr.truth(jr.ne(l_command_listener, jr.JNull)) {
            True -> {
            jr.call(this, "initCommands_1", [l_command_listener])
            Nil
        }
            False -> case jr.truth(l_has_param) {
            True -> {
            jr.call(jr.get_inherited(this, "RunnableCanvas", "logUtil"), "putF_3", [jr.JStr("commandListener was null"), this, jr.JStr("initCommands")])
            Nil
        }
            False -> Nil
        }
        }
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "RunnableCanvas",
        "org.allbinary.canvas.RunnableCanvas",
        "MyCanvas",
        ["RunnableInterface"],
        False,
        [#("nullUtil", jr.JNull), #("stdUtil", jr.JNull), #("systemWrapper", jr.JNull), #("tsUtil", jr.JNull), #("thread", jr.JNull), #("currentThread", jr.JNull), #("running", jr.JBool(False)), #("loopTimeHelper", jr.JNull), #("runnableCanvasRefreshHelper", jr.JNull), #("commonLabels", jr.JNull), #("threadObjectUtil", jr.JNull), #("SET_RUNNING", jr.JNull), #("IS_RUNNING", jr.JNull), #("THREAD", jr.JNull), #("NOT_EQUAL", jr.JNull), #("PAUSE_SLEEP", jr.JNull), #("START_PAUSE", jr.JNull), #("END_PAUSE", jr.JNull), #("PROCESS_LOOP_SLEEP", jr.JNull), #("pauseWait", jr.JLong(0)), #("notified", jr.JBool(False))],
        [],
        [
            jr.Method("initCommands_1", ["CommandListener"], False, c1_m21__initcommands), 
            jr.Method("isMainCanvas_0", [], False, c1_m22__ismaincanvas), 
            jr.Method("setThread_1", ["Thread"], False, c1_m23__setthread), 
            jr.Method("setRunning_1", ["boolean"], False, c1_m24__setrunning), 
            jr.Method("isRunning_0", [], False, c1_m25__isrunning), 
            jr.Method("getLoopTimeHelperP_0", [], False, c1_m26__getlooptimehelperp), 
            jr.Method("setWait_1", ["int"], False, c1_m28__setwait), 
            jr.Method("getWait_0", [], False, c1_m29__getwait), 
            jr.Method("setCurrentThread_0", [], False, c1_m30__setcurrentthread), 
            jr.Method("setCurrentThreadFake_0", [], False, c1_m31__setcurrentthreadfake), 
            jr.Method("showNotify_0", [], False, c1_m32__shownotify), 
            jr.Method("stopWaiting_0", [], False, c1_m34__stopwaiting), 
            jr.Method("waitOnNotify_1", ["long"], False, c1_m35__waitonnotify), 
            jr.Method("processSleep_0", [], False, c1_m36__processsleep), 
            jr.Method("isPausable_0", [], False, c1_m37__ispausable), 
            jr.Method("processGameSleep_1", ["long"], False, c1_m38__processgamesleep), 
            jr.Method("processLoopSleep_0", [], False, c1_m39__processloopsleep), 
            jr.Method("isSingleThread_0", [], False, c1_m40__issinglethread), 
            jr.Method("run_0", [], False, c1_m41__run), 
            jr.Method("end2_0", [], False, c1_m42__end2), 
            jr.Method("getType_0", [], False, c1_m43__gettype), 
            jr.Method("jinit_3", ["CommandListener", "BasicArrayList", "boolean"], False, c1_jinit20)],
        c1_jfields,
        c1_jclinit,
    )
}

