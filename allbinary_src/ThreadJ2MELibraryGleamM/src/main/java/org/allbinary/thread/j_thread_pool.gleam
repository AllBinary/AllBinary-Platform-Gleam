// Generated Code Do Not Modify
// package org.allbinary.thread
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ThreadPool

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "commonStrings", jr.call_static("CommonStrings", "getInstance_0", []))
    jr.set_field(this, "NULL_RUNNABLE", jr.call_static("NullRunnable", "getInstance_0", []))
    jr.set_field(this, "threadPoolStrings", jr.call_static("ThreadPoolStrings", "getInstance_0", []))
    jr.set_field(this, "threadObjectUtil", jr.call_static("ThreadObjectUtil", "getInstance_0", []))
    jr.set_field(this, "isAlive", jr.JBool(False))
    jr.set_field(this, "taskQueue", jr.call(jr.call_static("BasicArrayListUtil", "getInstance_0", []), "getImmutableInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("ThreadPool", "NORMAL_PRIORITY", jr.as_i(jr.get_static("Thread", "NORM_PRIORITY")))
    jr.JNull
}

fn c1_m16__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.not(jr.get_field(this, "isAlive"))) {
            True -> {
            jr.set_field(this, "isAlive", jr.JBool(True))
            jr.set_field(this, "taskQueue", jr.new("BasicArrayListD", []))
            let l_pooled_thread = jr.cell(jr.JNull)
            {
                let l_i = jr.cell(jr.as_i(jr.JInt(0)))
                jr.for_loop("", fn() { jr.lt(jr.get(l_i), jr.get_field(this, "numThreads")) }, fn() { jr.incr(fn() { jr.get(l_i) }, fn(jv) { jr.set(l_i, jv) }, 1, True) Nil }, fn() {
                jr.set(l_pooled_thread, jr.new("PooledThread", [this]))
                jr.call(jr.get(l_pooled_thread), "setPriority_1", [jr.get_field(this, "priority")])
                jr.call(jr.get(l_pooled_thread), "start_0", [])
                Nil
            })
                Nil
            }
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m17__runaprioritytask(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.throw(jr.new("RuntimeException", []))
    jr.JNull
}

fn c1_m18__runtaskwithpriority(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_task] = jargs
        {
            case jr.truth(jr.not(jr.get_field(this, "isAlive"))) {
                True -> {
                jr.call(this, "init_0", [])
                Nil
            }
                False -> Nil
            }
            case jr.truth(jr.ne(l_task, jr.JNull)) {
                True -> {
                let l_size = jr.as_i(jr.call(jr.get_field(this, "taskQueue"), "size_0", []))
                let l_runnable = jr.cell(jr.JNull)
                let l_lower_priority_runnable = jr.cell(jr.get_field(jr.get_field(this, "threadObjectUtil"), "NULL_PRIORITY_RUNNABLE"))
                {
                    let l_index = jr.cell(jr.as_i(jr.JInt(0)))
                    jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
                    jr.set(l_runnable, jr.call(jr.get_field(this, "taskQueue"), "get_1", [jr.get(l_index)]))
                    case jr.truth(jr.gt(jr.call(jr.get(l_runnable), "getPriority_0", []), jr.call(l_task, "getPriority_0", []))) {
                        True -> {
                        jr.set(l_lower_priority_runnable, jr.get(l_runnable))
                        jr.brk("")
                        Nil
                    }
                        False -> Nil
                    }
                    Nil
                })
                    Nil
                }
                case jr.truth(jr.eq(jr.get(l_lower_priority_runnable), jr.get_field(jr.get_field(this, "threadObjectUtil"), "NULL_PRIORITY_RUNNABLE"))) {
                    True -> {
                    jr.call(jr.get_field(this, "taskQueue"), "add_1", [l_task])
                    Nil
                }
                    False -> {
                    let l_index = jr.cell(jr.as_i(jr.call(jr.get_field(this, "taskQueue"), "indexOf_1", [jr.get(l_lower_priority_runnable)])))
                    jr.call(jr.get_field(this, "taskQueue"), "addAt_2", [jr.get(l_index), l_task])
                    Nil
                }
                }
                jr.call_inherited(this, "ThreadPool", "notify_0", [])
                Nil
            }
                False -> Nil
            }
            Nil
        }
    jr.JNull
}

fn c1_m19__runtask(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_task] = jargs
        {
            case jr.truth(jr.not(jr.get_field(this, "isAlive"))) {
                True -> {
                jr.call(this, "init_0", [])
                Nil
            }
                False -> Nil
            }
            case jr.truth(jr.ne(l_task, jr.JNull)) {
                True -> {
                jr.call(jr.get_field(this, "taskQueue"), "add_1", [l_task])
                jr.call_inherited(this, "ThreadPool", "notify_0", [])
                Nil
            }
                False -> Nil
            }
            Nil
        }
    jr.JNull
}

fn c1_m20__gettask(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.method(fn() {
            {
            jr.while_loop("", fn() { jr.eq(jr.call(jr.get_field(this, "taskQueue"), "size_0", []), jr.JInt(0)) }, fn() {
                case jr.truth(jr.not(jr.get_field(this, "isAlive"))) {
                    True -> {
                    jr.ret(jr.get_field(this, "NULL_RUNNABLE"))
                    Nil
                }
                    False -> Nil
                }
                jr.call_inherited(this, "ThreadPool", "wait_0", [])
                Nil
            })
            let l_runnable = jr.call(jr.get_field(this, "taskQueue"), "removeAt_1", [jr.JInt(0)])
            jr.ret(l_runnable)
            Nil
        }
        jr.JNull
    })
}

fn c1_m21__clear(this: jr.V, jargs: List(jr.V)) -> jr.V {
        {
            case jr.truth(jr.get_field(this, "isAlive")) {
                True -> {
                jr.call(jr.get_field(this, "taskQueue"), "clear_0", [])
                Nil
            }
                False -> Nil
            }
            Nil
        }
    jr.JNull
}

fn c1_m22__close(this: jr.V, jargs: List(jr.V)) -> jr.V {
        {
            case jr.truth(jr.get_field(this, "isAlive")) {
                True -> {
                jr.set_field(this, "isAlive", jr.JBool(False))
                jr.call(jr.get_field(this, "taskQueue"), "clear_0", [])
                Nil
            }
                False -> Nil
            }
            Nil
        }
    jr.JNull
}

fn c1_m23__join(this: jr.V, jargs: List(jr.V)) -> jr.V {
        {
            jr.set_field(this, "isAlive", jr.JBool(False))
            jr.call(jr.get_field(this, "taskQueue"), "clear_0", [])
            jr.call_inherited(this, "ThreadPool", "notifyAll_0", [])
            Nil
        }
    jr.JNull
}

fn c1_m24__isbusy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.method(fn() {
            case jr.truth(jr.not(jr.get_field(this, "isAlive"))) {
            True -> {
            jr.ret(jr.JBool(False))
            Nil
        }
            False -> Nil
        }
            case jr.truth(jr.gt(jr.call(jr.get_field(this, "taskQueue"), "size_0", []), jr.JInt(0))) {
            True -> {
            jr.ret(jr.JBool(True))
            Nil
        }
            False -> Nil
        }
            case jr.truth(jr.get_field(this, "runningTask")) {
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

fn c1_m25__threadstarted(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m26__threadstopped(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.eq(jr.get_field(this, "numThreads"), jr.JInt(1))) {
            True -> {
            jr.set_field(this, "isAlive", jr.JBool(False))
            jr.call(jr.get_field(this, "taskQueue"), "clear_0", [])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m27__starttask(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_task] = jargs
    jr.JNull
}

fn c1_m28__completedtask(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_task] = jargs
    jr.JNull
}

fn c1_m29__createname(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call(jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(this, "poolName")]), "append_1", [jr.get_static("ThreadPool", "ROOT_NAME")]), "appendint_1", [jr.incr(fn() { jr.get_field(this, "threadID") }, fn(jv) { jr.set_field(this, "threadID", jv) }, 1, True)]), "toString_0", [])
}

fn c1_jinit15(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_pool_name, l_num_threads, l_priority] = jargs
    let l_num_threads = jr.as_i(l_num_threads)
    let l_priority = jr.as_i(l_priority)
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "poolName", l_pool_name)
        jr.set_field(this, "priority", jr.as_i(l_priority))
        jr.set_field(this, "numThreads", jr.as_i(l_num_threads))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ThreadPool",
        "org.allbinary.thread.ThreadPool",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull), #("commonStrings", jr.JNull), #("NULL_RUNNABLE", jr.JNull), #("threadPoolStrings", jr.JNull), #("threadObjectUtil", jr.JNull), #("poolName", jr.JNull), #("priority", jr.JInt(0)), #("isAlive", jr.JBool(False)), #("taskQueue", jr.JNull), #("threadID", jr.JInt(0)), #("numThreads", jr.JInt(0)), #("runningTask", jr.JBool(False))],
        [#("ROOT_NAME", jr.JStr("-PooledThread-")), #("NORMAL_PRIORITY", jr.JInt(0))],
        [
            jr.Method("init_0", [], False, c1_m16__init), 
            jr.Method("runAPriorityTask_0", [], False, c1_m17__runaprioritytask), 
            jr.Method("runTaskWithPriority_1", ["PriorityRunnable"], False, c1_m18__runtaskwithpriority), 
            jr.Method("runTask_1", ["Runnable"], False, c1_m19__runtask), 
            jr.Method("getTask_0", [], False, c1_m20__gettask), 
            jr.Method("clear_0", [], False, c1_m21__clear), 
            jr.Method("close_0", [], False, c1_m22__close), 
            jr.Method("join_0", [], False, c1_m23__join), 
            jr.Method("isBusy_0", [], False, c1_m24__isbusy), 
            jr.Method("threadStarted_0", [], False, c1_m25__threadstarted), 
            jr.Method("threadStopped_0", [], False, c1_m26__threadstopped), 
            jr.Method("startTask_1", ["Runnable"], False, c1_m27__starttask), 
            jr.Method("completedTask_1", ["Runnable"], False, c1_m28__completedtask), 
            jr.Method("createName_0", [], False, c1_m29__createname), 
            jr.Method("jinit_3", ["String", "int", "int"], False, c1_jinit15)],
        c1_jfields,
        c1_jclinit,
    )
}

