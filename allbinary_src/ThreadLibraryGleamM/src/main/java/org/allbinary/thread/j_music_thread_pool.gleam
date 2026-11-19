// Generated Code Do Not Modify
// package org.allbinary.thread
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class MusicThreadPool

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("MusicThreadPool", "THREAD_POOL", jr.new("ThreadPool", [jr.JStr("Music"), jr.JInt(2), jr.get_static("ThreadPool", "NORMAL_PRIORITY")]))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("MusicThreadPool", "THREAD_POOL")
}

fn c1_m4__runtask(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_task] = jargs
        jr.call(jr.get_inherited(this, "MusicThreadPool", "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.call(jr.call_static("StringUtil", "getInstance_0", []), "toString_1", [l_task])]), "appendlong_1", [jr.call_static("System", "currentTimeMillis_0", [])]), "toString_0", []), this, jr.get_field(jr.get_inherited(this, "MusicThreadPool", "threadPoolStrings"), "ADD_TASK")])
        jr.call_super("ThreadPool", this, "runTask_1", [l_task])
    jr.JNull
}

fn c1_m5__starttask(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_task] = jargs
        jr.call(jr.get_inherited(this, "MusicThreadPool", "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(jr.get_inherited(this, "MusicThreadPool", "threadPoolStrings"), "START_TASK")]), "append_1", [jr.call(jr.call_static("StringUtil", "getInstance_0", []), "toString_1", [l_task])]), "appendlong_1", [jr.call_static("System", "currentTimeMillis_0", [])]), "toString_0", []), this, jr.get_field(jr.get_inherited(this, "MusicThreadPool", "commonStrings"), "RUN")])
    jr.JNull
}

fn c1_m6__completedtask(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_task] = jargs
        jr.call(jr.get_inherited(this, "MusicThreadPool", "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(jr.get_inherited(this, "MusicThreadPool", "threadPoolStrings"), "COMPLETE_TASK")]), "append_1", [jr.call(jr.call_static("StringUtil", "getInstance_0", []), "toString_1", [l_task])]), "appendlong_1", [jr.call_static("System", "currentTimeMillis_0", [])]), "toString_0", []), this, jr.get_field(jr.get_inherited(this, "MusicThreadPool", "commonStrings"), "RUN")])
    jr.JNull
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_pool_name, l_num_threads, l_priority] = jargs
    let l_num_threads = jr.as_i(l_num_threads)
    let l_priority = jr.as_i(l_priority)
        jr.super_init("ThreadPool", this, [l_pool_name, l_num_threads, l_priority])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "MusicThreadPool",
        "org.allbinary.thread.MusicThreadPool",
        "ThreadPool",
        [],
        False,
        [],
        [#("THREAD_POOL", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("runTask_1", ["Runnable"], False, c1_m4__runtask), 
            jr.Method("startTask_1", ["Runnable"], False, c1_m5__starttask), 
            jr.Method("completedTask_1", ["Runnable"], False, c1_m6__completedtask), 
            jr.Method("jinit_3", ["String", "int", "int"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

