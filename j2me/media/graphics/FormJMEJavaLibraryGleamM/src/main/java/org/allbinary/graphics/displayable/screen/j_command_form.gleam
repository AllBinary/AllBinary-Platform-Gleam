// Generated Code Do Not Modify
// package org.allbinary.graphics.displayable.screen
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CommandForm

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "commonStrings", jr.call_static("CommonStrings", "getInstance_0", []))
    jr.set_field(this, "repaintProcessor", jr.call(jr.call_static("ScreenRepaintProcessorFactory", "getInstance_0", []), "create_1", [this]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("CommandForm", "NULL_COMMAND_FORM", jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))
    jr.JNull
}

fn c1_m2__getnullcommandform(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.eq(jr.get_static("CommandForm", "NULL_COMMAND_FORM"), jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))) {
            True -> {
            jr.set_static("CommandForm", "NULL_COMMAND_FORM", jr.new("CommandForm", [jr.get_static("NullCommandListener", "NULL_COMMAND_LISTENER"), jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.get_field(jr.call_static("BasicColorFactory", "getInstance_0", []), "BLACK"), jr.get_field(jr.call_static("BasicColorFactory", "getInstance_0", []), "WHITE")]))
            Nil
        }
            False -> Nil
        }
    jr.get_static("CommandForm", "NULL_COMMAND_FORM")
}

fn c1_m8__initcommands(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_cmd_listener] = jargs
    jr.JNull
}

fn c1_m9__open(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.get_field(jr.get_field(this, "commonStrings"), "START"), this, jr.JStr("open")])
    jr.JNull
}

fn c1_m10__close(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.get_field(jr.get_field(this, "commonStrings"), "START"), this, jr.get_field(jr.get_field(this, "commonStrings"), "CLOSE")])
    jr.JNull
}

fn c1_m11__update(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "repaintProcessor"), "process_0", [])
    jr.JNull
}

fn c1_m12__getsourceid(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.JInt(0))
}

fn c1_m13__addcommand(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_command] = jargs
        jr.call(jr.get_field(this, "commandStack"), "push_1", [l_command])
        jr.call_super("Form", this, "addCommand_1", [l_command])
    jr.JNull
}

fn c1_m14__removeallcommands(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_size = jr.as_i(jr.call(jr.get_field(this, "commandStack"), "size_0", []))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.call_super("Form", this, "removeCommand_1", [jr.call(jr.get_field(this, "commandStack"), "pop_0", [])])
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_jinit7(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_command_listener, l_form_title, l_backgroun_basic_color, l_foreground_basic_color] = jargs
        jr.super_init("Form", this, [l_form_title])
        c1_jfields(this)
        jr.set_field(this, "commandStack", jr.call(jr.call_static("StdUtil", "getInstance_0", []), "createStack_0", []))
        jr.try_catch(fn() {
            jr.call(jr.get_field(this, "repaintProcessor"), "process_0", [])
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(jr.get_field(this, "commonStrings"), "EXCEPTION"), this, jr.get_field(jr.get_field(this, "commonStrings"), "CONSTRUCTOR"), l_e])
            Nil
        } })], fn() { Nil })
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CommandForm",
        "org.allbinary.graphics.displayable.screen.CommandForm",
        "Form",
        ["MyCommandInterface", "MenuListener"],
        False,
        [#("logUtil", jr.JNull), #("commonStrings", jr.JNull), #("repaintProcessor", jr.JNull), #("commandStack", jr.JNull)],
        [#("NULL_COMMAND_FORM", jr.JNull)],
        [
            jr.Method("getNullCommandForm_0", [], True, c1_m2__getnullcommandform), 
            jr.Method("initCommands_1", ["CommandListener"], False, c1_m8__initcommands), 
            jr.Method("open_0", [], False, c1_m9__open), 
            jr.Method("close_0", [], False, c1_m10__close), 
            jr.Method("update_0", [], False, c1_m11__update), 
            jr.Method("getSourceId_0", [], False, c1_m12__getsourceid), 
            jr.Method("addCommand_1", ["Command"], False, c1_m13__addcommand), 
            jr.Method("removeAllCommands_0", [], False, c1_m14__removeallcommands), 
            jr.Method("jinit_4", ["CommandListener", "String", "BasicColor", "BasicColor"], False, c1_jinit7)],
        c1_jfields,
        c1_jclinit,
    )
}

