// Generated Code Do Not Modify
// package org.allbinary.content
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CommandUriAction

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("CommandUriAction", "instance", jr.new("CommandUriAction", []))
    jr.JNull
}

fn c1_m3__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("CommandUriAction", "instance")
}

fn c1_m4__add(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_command, l_url] = jargs
    jr.JNull
}

fn c1_m5__process(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_command] = jargs
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CommandUriAction",
        "org.allbinary.content.CommandUriAction",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m3__getinstance), 
            jr.Method("add_2", ["Command", "String"], False, c1_m4__add), 
            jr.Method("process_1", ["Command"], False, c1_m5__process), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

