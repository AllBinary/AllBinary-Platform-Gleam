// Generated Code Do Not Modify
// package javax.microedition.lcdui
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class NullCommandListener

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("NullCommandListener", "NULL_COMMAND_LISTENER", jr.new("NullCommandListener", []))
    jr.JNull
}

fn c1_m2__commandaction(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_c, l_d] = jargs
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "NullCommandListener",
        "javax.microedition.lcdui.NullCommandListener",
        "Object",
        ["CommandListener"],
        False,
        [],
        [#("NULL_COMMAND_LISTENER", jr.JNull)],
        [
            jr.Method("commandAction_2", ["Command", "Displayable"], False, c1_m2__commandaction), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

