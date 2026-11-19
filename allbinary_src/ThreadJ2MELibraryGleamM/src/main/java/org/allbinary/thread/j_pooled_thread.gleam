// Generated Code Do Not Modify
// package org.allbinary.thread
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class PooledThread

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "commonStrings", jr.call_static("CommonStrings", "getInstance_0", []))
    jr.set_field(this, "threadObjectUtil", jr.call_static("ThreadObjectUtil", "getInstance_0", []))
    jr.set_field(this, "INTERRUPT_EXCEPTION", jr.JStr("Exit InterruptedException"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m7__run(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "threadPool"), "threadStarted_0", [])
        jr.while_loop("", fn() { jr.JBool(True) }, fn() {
            let l_task2 = jr.cell(jr.get_field(jr.get_field(this, "threadObjectUtil"), "NULL_PRIORITY_RUNNABLE"))
            jr.try_catch(fn() {
                jr.set(l_task2, jr.call(jr.get_field(this, "threadPool"), "getTask_0", []))
                jr.set_field(jr.get_field(this, "threadPool"), "runningTask", jr.JBool(True))
                jr.call(jr.get_field(this, "threadPool"), "startTask_1", [jr.get(l_task2)])
                Nil
            }, [#(["InterruptedException"], fn(l_ex) { {
                let l_log_util = jr.call_static("LogUtil", "getInstance_0", [])
                jr.call(l_log_util, "putF_3", [jr.get_field(this, "INTERRUPT_EXCEPTION"), this, jr.get_field(jr.get_field(this, "commonStrings"), "RUN")])
                jr.brk("")
                Nil
            } })], fn() { Nil })
            case jr.truth(jr.eq(jr.get(l_task2), jr.get_field(jr.get_field(this, "threadObjectUtil"), "NULL_PRIORITY_RUNNABLE"))) {
                True -> {
                jr.brk("")
                Nil
            }
                False -> Nil
            }
            jr.try_catch(fn() {
                jr.call(jr.get(l_task2), "run_0", [])
                jr.call(jr.get_field(this, "threadPool"), "completedTask_1", [jr.get(l_task2)])
                jr.set_field(jr.get_field(this, "threadPool"), "runningTask", jr.JBool(False))
                Nil
            }, [#(["Exception"], fn(l_e) { {
                let l_log_util = jr.call_static("LogUtil", "getInstance_0", [])
                jr.call(l_log_util, "put_4", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(jr.get_field(this, "commonStrings"), "EXCEPTION_LABEL")]), "append_1", [jr.call(jr.call_static("StringUtil", "getInstance_0", []), "toString_1", [jr.get(l_task2)])]), "toString_0", []), this, jr.get_field(jr.get_field(this, "commonStrings"), "RUN"), l_e])
                Nil
            } })], fn() { Nil })
            Nil
        })
        jr.call(jr.get_field(this, "threadPool"), "threadStopped_0", [])
    jr.JNull
}

fn c1_jinit5(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_thread_pool] = jargs
        jr.super_init("Thread", this, [jr.call(l_thread_pool, "createName_0", [])])
        c1_jfields(this)
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.get_field(jr.get_field(this, "commonStrings"), "CONSTRUCTOR"), this, jr.get_field(jr.get_field(this, "commonStrings"), "CONSTRUCTOR")])
        jr.set_field(this, "threadPool", l_thread_pool)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "PooledThread",
        "org.allbinary.thread.PooledThread",
        "Thread",
        [],
        False,
        [#("logUtil", jr.JNull), #("commonStrings", jr.JNull), #("threadObjectUtil", jr.JNull), #("threadPool", jr.JNull), #("INTERRUPT_EXCEPTION", jr.JNull)],
        [],
        [
            jr.Method("run_0", [], False, c1_m7__run), 
            jr.Method("jinit_1", ["ThreadPool"], False, c1_jinit5)],
        c1_jfields,
        c1_jclinit,
    )
}

