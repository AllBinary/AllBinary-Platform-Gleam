// Generated Code Do Not Modify
// package org.allbinary.input.motion.button
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BasicTouchButtonsBuilder

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("BasicTouchButtonsBuilder", "SINGLETON", jr.new("BasicTouchButtonsBuilder", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("BasicTouchButtonsBuilder", "SINGLETON")
}

fn c1_m4__getlist(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.method(fn() {
            jr.try_catch(fn() {
            jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.get_field(jr.get_inherited(this, "BasicTouchButtonsBuilder", "commonStrings"), "START"), this, jr.get_field(jr.get_inherited(this, "BasicTouchButtonsBuilder", "commonStrings"), "GET_LIST")])
            let l_list = jr.new("BasicArrayListD", [])
            jr.ret(l_list)
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(jr.get_inherited(this, "BasicTouchButtonsBuilder", "commonStrings"), "EXCEPTION"), this, jr.get_field(jr.get_inherited(this, "BasicTouchButtonsBuilder", "commonStrings"), "GET_LIST"), l_e])
            jr.ret(jr.call(jr.call_static("BasicArrayListUtil", "getInstance_0", []), "getImmutableInstance_0", []))
            Nil
        } })], fn() { Nil })
        jr.JNull
    })
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("BaseTouchInput", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "BasicTouchButtonsBuilder",
        "org.allbinary.input.motion.button.BasicTouchButtonsBuilder",
        "BaseTouchInput",
        [],
        False,
        [#("logUtil", jr.JNull)],
        [#("SINGLETON", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("getList_0", [], False, c1_m4__getlist), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

