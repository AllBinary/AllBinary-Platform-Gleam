// Generated Code Do Not Modify
// package org.allbinary.thread
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class PathFindingThreadPool

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("PathFindingThreadPool", "instance", jr.new("PathFindingThreadPool", [jr.JStr("PathFinding"), jr.JInt(1), jr.JInt(1)]))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("PathFindingThreadPool", "instance")
}

fn c1_m4__runtaskwithpriority(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_task] = jargs
        jr.call_super("ThreadPool", this, "runTaskWithPriority_1", [l_task])
    jr.JNull
}

fn c1_m5__runtask(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_task] = jargs
        jr.call_super("ThreadPool", this, "runTask_1", [l_task])
    jr.JNull
}

fn c1_m6__starttask(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_task] = jargs
    jr.JNull
}

fn c1_m7__completedtask(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_task] = jargs
    jr.JNull
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_pool_name, l_num_threads, l_priority] = jargs
    let l_num_threads = jr.as_i(l_num_threads)
    let l_priority = jr.as_i(l_priority)
        jr.super_init("ThreadPool", this, [l_pool_name, l_num_threads, jr.get_static("ThreadPool", "NORMAL_PRIORITY")])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "PathFindingThreadPool",
        "org.allbinary.thread.PathFindingThreadPool",
        "ThreadPool",
        [],
        False,
        [],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("runTaskWithPriority_1", ["PriorityRunnable"], False, c1_m4__runtaskwithpriority), 
            jr.Method("runTask_1", ["Runnable"], False, c1_m5__runtask), 
            jr.Method("startTask_1", ["Runnable"], False, c1_m6__starttask), 
            jr.Method("completedTask_1", ["Runnable"], False, c1_m7__completedtask), 
            jr.Method("jinit_3", ["String", "int", "int"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

