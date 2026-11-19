// Generated Code Do Not Modify
// package org.allbinary.midlet
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ProgressMidlet

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__preinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m4__exitprogress(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_is_progress] = jargs
        let l_processor = jr.call(jr.call_static("MidletExitProcessorFactory", "getInstance_0", []), "getExitInstance_1", [this])
        jr.try_catch(fn() {
            let l_primary_thread_pool = jr.call_static("PrimaryThreadPool", "getInstance_0", [])
            let l_runnable = jr.new("ExitRunnable", [this, l_processor, l_is_progress])
            jr.call(l_primary_thread_pool, "runTask_1", [l_runnable])
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call(jr.get_inherited(this, "ProgressMidlet", "logUtil"), "put_4", [jr.get_field(jr.get_inherited(this, "ProgressMidlet", "commonStrings"), "EXCEPTION"), this, jr.JStr("exit"), l_e])
            jr.try_catch(fn() {
                jr.call(l_processor, "process_0", [])
                Nil
            }, [#(["Exception"], fn(l_e2) { {
                jr.call(jr.get_inherited(this, "ProgressMidlet", "logUtil"), "put_4", [jr.get_field(jr.get_inherited(this, "ProgressMidlet", "commonStrings"), "EXCEPTION"), this, jr.JStr("exit"), l_e])
                Nil
            } })], fn() { Nil })
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_client_information_factory] = jargs
    jr.super_init("AllBinaryMidlet", this, [])
    c1_jfields(this)
        jr.call(this, "preInit_0", [])
        jr.set_field(this, "abeClientInformation", jr.call(l_client_information_factory, "getInstance_0", []))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ProgressMidlet",
        "org.allbinary.midlet.ProgressMidlet",
        "AllBinaryMidlet",
        [],
        False,
        [#("abeClientInformation", jr.JNull)],
        [],
        [
            jr.Method("preInit_0", [], False, c1_m3__preinit), 
            jr.Method("exitProgress_1", ["boolean"], False, c1_m4__exitprogress), 
            jr.Method("jinit_1", ["ClientInformationFactory"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

