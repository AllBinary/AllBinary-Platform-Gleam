// Generated Code Do Not Modify
// package org.allbinary.content
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class NotificationUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("NotificationUtil", "SINGLETON", jr.new("NotificationUtil", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("NotificationUtil", "SINGLETON")
}

fn c1_m3__notify(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_command, l_resource, l_message] = jargs
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "NotificationUtil",
        "org.allbinary.content.NotificationUtil",
        "Object",
        [],
        False,
        [],
        [#("SINGLETON", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("notify_3", ["Command", "String", "String"], False, c1_m3__notify), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

