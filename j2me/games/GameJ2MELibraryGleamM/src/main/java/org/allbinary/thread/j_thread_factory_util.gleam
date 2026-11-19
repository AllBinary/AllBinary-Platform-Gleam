// Generated Code Do Not Modify
// package org.allbinary.thread
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ThreadFactoryUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("ThreadFactoryUtil", "instance", jr.new("ThreadFactoryUtil", []))
    jr.JNull
}

fn c1_m3__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("ThreadFactoryUtil", "instance")
}

fn c1_m4__getinstancegamecanvasrunnable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_runnable] = jargs
    jr.call(this, "getInstanceType_2", [l_runnable, jr.call(l_runnable, "getType_0", [])])
}

fn c1_m5__getinstanceforrunnable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_runnable] = jargs
    jr.call(this, "getInstanceType_2", [l_runnable, jr.call(l_runnable, "getType_0", [])])
}

fn c1_m6__getinstancetype(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_runnable, l_type] = jargs
    let l_type = jr.as_i(l_type)
        let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
        case jr.truth(jr.call_static("J2MEUtil", "isHTML_0", [])) {
            True -> {
            case jr.truth(case jr.truth(jr.eq(l_type, jr.get_static("DemoCanvas", "TYPE"))) { True -> jr.JBool(True) False -> jr.eq(l_type, jr.get_static("AllBinaryGameCanvas", "TYPE")) }) {
                True -> {
                let l_demo_game_single_thread_start_runnable = jr.new("RunnableCanvasSingleThreadStartRunnable", [l_runnable])
                jr.call_static("PreLogUtil", "put_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.JStr("Using Pseudo Thread for DemoCanvas/AllBinaryGameCanvas under PlayN/HTML5: ")]), "append_1", [jr.call(jr.call_static("StringUtil", "getInstance_0", []), "toString_1", [l_runnable])]), "toString_0", []), this, jr.get_field(l_common_strings, "CONSTRUCTOR")])
                let l_primary_thread_pool = jr.call_static("PrimaryThreadPool", "getInstance_0", [])
                jr.call(l_primary_thread_pool, "runTask_1", [l_demo_game_single_thread_start_runnable])
                Nil
            }
                False -> {
                jr.call_static("PreLogUtil", "put_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.JStr("Using Pseudo Thread for Runnable under PlayN/HTML5: ")]), "append_1", [jr.call(jr.call_static("StringUtil", "getInstance_0", []), "toString_1", [l_runnable])]), "toString_0", []), this, jr.get_field(l_common_strings, "CONSTRUCTOR")])
                let l_primary_thread_pool = jr.call_static("PrimaryThreadPool", "getInstance_0", [])
                jr.call(l_primary_thread_pool, "runTask_1", [l_runnable])
                Nil
            }
            }
            Nil
        }
            False -> Nil
        }
        let l_thread = jr.new("Thread", [l_runnable, jr.call(l_runnable, "toString_0", [])])
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(l_thread, "toString_0", []), this, jr.get_field(l_common_strings, "CONSTRUCTOR")])
    l_thread
}

fn c1_m7__start(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_thread] = jargs
        jr.call(l_thread, "start_0", [])
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ThreadFactoryUtil",
        "org.allbinary.thread.ThreadFactoryUtil",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m3__getinstance), 
            jr.Method("getInstanceGameCanvasRunnable_1", ["GameCanvasRunnableInterface"], False, c1_m4__getinstancegamecanvasrunnable), 
            jr.Method("getInstanceForRunnable_1", ["ABRunnable"], False, c1_m5__getinstanceforrunnable), 
            jr.Method("getInstanceType_2", ["Runnable", "int"], False, c1_m6__getinstancetype), 
            jr.Method("start_1", ["Thread"], False, c1_m7__start), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

