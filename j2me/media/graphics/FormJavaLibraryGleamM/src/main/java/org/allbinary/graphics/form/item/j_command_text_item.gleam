// Generated Code Do Not Modify
// package org.allbinary.graphics.form.item
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CommandTextItem

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__isfocusable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JBool(True)
}

fn c1_m4__getcommand(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "command")
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_command, l_layout, l_alt_text, l_background_basic_color, l_foreground_basic_color] = jargs
    let l_layout = jr.as_i(l_layout)
        jr.super_init("ABTextItem", this, [jr.call(l_command, "getLabel_0", []), l_layout, l_alt_text, l_background_basic_color, l_foreground_basic_color])
        c1_jfields(this)
        jr.set_field(this, "command", l_command)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CommandTextItem",
        "org.allbinary.graphics.form.item.CommandTextItem",
        "ABTextItem",
        [],
        False,
        [#("command", jr.JNull)],
        [],
        [
            jr.Method("isFocusable_0", [], False, c1_m3__isfocusable), 
            jr.Method("getCommand_0", [], False, c1_m4__getcommand), 
            jr.Method("jinit_5", ["Command", "int", "String", "BasicColor", "BasicColor"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

