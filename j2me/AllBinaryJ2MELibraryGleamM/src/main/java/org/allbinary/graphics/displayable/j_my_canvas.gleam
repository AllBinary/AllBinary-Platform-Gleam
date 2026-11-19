// Generated Code Do Not Modify
// package org.allbinary.graphics.displayable
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class MyCanvas

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "commonStrings", jr.call_static("CommonStrings", "getInstance_0", []))
    jr.set_field(this, "canvasStrings", jr.call_static("CanvasStrings", "getInstance_0", []))
    jr.set_field(this, "stringUtil", jr.call_static("StringUtil", "getInstance_0", []))
    jr.set_field(this, "displayInfo", jr.call_static("DisplayInfoSingleton", "getInstance_0", []))
    jr.set_field(this, "commandListener", jr.get_static("NullCommandListener", "NULL_COMMAND_LISTENER"))
    jr.set_field(this, "touchME", jr.new("TouchJ2ME", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m12__getwidth(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.call_super("Canvas", this, "getWidth_0", []))
}

fn c1_m13__getheight(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.call_super("Canvas", this, "getHeight_0", []))
}

fn c1_m14__setfullscreenmode(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_mode] = jargs
        jr.call_super("Canvas", this, "setFullScreenMode_1", [l_mode])
        jr.call(jr.get_field(this, "displayInfo"), "update_2", [this, jr.get_field(jr.get_field(this, "canvasStrings"), "SET_FULL_SCREEN_MODE")])
    jr.JNull
}

fn c1_m15__sizechanged(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_w, l_h] = jargs
    let l_w = jr.as_i(l_w)
    let l_h = jr.as_i(l_h)
        jr.call(jr.get_field(this, "displayInfo"), "update_2", [this, jr.get_field(jr.get_field(this, "canvasStrings"), "SIZE_CHANGED")])
    jr.JNull
}

fn c1_m16__getcommandstack(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "commandStack")
}

fn c1_m17__iscommand(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_command] = jargs
    jr.call(jr.get_field(this, "commandStack"), "contains_1", [l_command])
}

fn c1_m18__addcommand(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_command] = jargs
        case jr.truth(jr.not(jr.call(jr.get_field(this, "commandStack"), "contains_1", [l_command]))) {
            True -> {
            jr.call(jr.get_field(this, "commandStack"), "push_1", [l_command])
            jr.call_super("Canvas", this, "addCommand_1", [l_command])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m19__removecommand(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_command] = jargs
        jr.call(jr.get_field(this, "commandStack"), "removeElement_1", [l_command])
        jr.call_super("Canvas", this, "removeCommand_1", [l_command])
    jr.JNull
}

fn c1_m20__removeallcommands(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_size = jr.as_i(jr.call(jr.get_field(this, "commandStack"), "size_0", []))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.call_super("Canvas", this, "removeCommand_1", [jr.call(jr.get_field(this, "commandStack"), "pop_0", [])])
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_m21__setcommandlistener(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_l] = jargs
        jr.call_super("Canvas", this, "setCommandListener_1", [l_l])
        jr.set_field(this, "commandListener", l_l)
    jr.JNull
}

fn c1_m22__getcustomcommandlistener(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "commandListener")
}

fn c1_m23__ispaused(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "paused")
}

fn c1_m24__removepausecommand(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(this, "removeCommand_1", [jr.get_field(jr.call_static("MyCommandsFactory", "getInstance_0", []), "PAUSE_COMMAND")])
    jr.JNull
}

fn c1_m25__pause(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.get_field(jr.get_field(this, "commonStrings"), "START"), this, jr.get_field(jr.get_field(this, "canvasStrings"), "PAUSE")])
        jr.call(this, "removePauseCommand_0", [])
        jr.call(this, "addCommand_1", [jr.get_field(jr.call_static("MyCommandsFactory", "getInstance_0", []), "RESUME_COMMAND")])
        jr.call(this, "setPaused_1", [jr.JBool(True)])
    jr.JNull
}

fn c1_m26__unpause(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.get_field(jr.get_field(this, "commonStrings"), "START"), this, jr.get_field(jr.get_field(this, "canvasStrings"), "UN_PAUSE")])
        jr.call(this, "removeCommand_1", [jr.get_field(jr.call_static("MyCommandsFactory", "getInstance_0", []), "RESUME_COMMAND")])
        jr.call(this, "addCommand_1", [jr.get_field(jr.call_static("MyCommandsFactory", "getInstance_0", []), "PAUSE_COMMAND")])
        jr.call(this, "setPaused_1", [jr.JBool(False)])
    jr.JNull
}

fn c1_m27__process(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "displayInfo"), "process_0", [])
    jr.JNull
}

fn c1_m28__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
    jr.JNull
}

fn c1_m29__draw(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
    jr.JNull
}

fn c1_m30__haschild(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_displayable] = jargs
    jr.call(jr.get_field(this, "childNameList"), "contains_1", [jr.get_field(l_displayable, "name")])
}

fn c1_m31__destroy(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.JStr("Destroyed MyCanvas"), this, jr.JStr("destroy")])
    jr.JNull
}

fn c1_m32__setpaused(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_is_paused] = jargs
        jr.set_field(this, "paused", l_is_paused)
    jr.JNull
}

fn c1_m33__keypressedbydevice(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_key_code, l_device_id] = jargs
    let l_key_code = jr.as_i(l_key_code)
    let l_device_id = jr.as_i(l_device_id)
    jr.JNull
}

fn c1_m34__keyrepeatedbydevice(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_key_code, l_device_id] = jargs
    let l_key_code = jr.as_i(l_key_code)
    let l_device_id = jr.as_i(l_device_id)
    jr.JNull
}

fn c1_m35__keyreleasedbydevice(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_key_code, l_device_id] = jargs
    let l_key_code = jr.as_i(l_key_code)
    let l_device_id = jr.as_i(l_device_id)
    jr.JNull
}

fn c1_m37__pointerdragged(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_x, l_y] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
        jr.call(jr.get_field(this, "touchME"), "pointerDragged_2", [l_x, l_y])
    jr.JNull
}

fn c1_m38__pointerpressed(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_x, l_y] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
        jr.call(jr.get_field(this, "touchME"), "pointerPressed_2", [l_x, l_y])
    jr.JNull
}

fn c1_m39__pointerreleased(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_x, l_y] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
        jr.call(jr.get_field(this, "touchME"), "pointerReleased_2", [l_x, l_y])
    jr.JNull
}

fn c1_m40__nextsong(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_next_song_sound, l_left_volume, l_right_volume] = jargs
    let l_left_volume = jr.as_i(l_left_volume)
    let l_right_volume = jr.as_i(l_right_volume)
    jr.JNull
}

fn c1_jinit11(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_name, l_child_name_list] = jargs
    jr.super_init("Canvas", this, [])
    c1_jfields(this)
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.get_field(jr.get_field(this, "commonStrings"), "CONSTRUCTOR"), this, jr.get_field(jr.get_field(this, "commonStrings"), "CONSTRUCTOR")])
        jr.call(jr.get_field(this, "displayInfo"), "update_2", [this, jr.get_field(jr.get_field(this, "canvasStrings"), "CONSTRUCTOR")])
        jr.set_field(this, "name", l_name)
        jr.set_field(this, "childNameList", l_child_name_list)
        jr.set_field(this, "commandStack", jr.call(jr.call_static("StdUtil", "getInstance_0", []), "createStack_0", []))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "MyCanvas",
        "org.allbinary.graphics.displayable.MyCanvas",
        "Canvas",
        ["DisplayableInterface", "MyCommandInterface"],
        False,
        [#("logUtil", jr.JNull), #("commonStrings", jr.JNull), #("canvasStrings", jr.JNull), #("stringUtil", jr.JNull), #("displayInfo", jr.JNull), #("name", jr.JNull), #("childNameList", jr.JNull), #("commandStack", jr.JNull), #("commandListener", jr.JNull), #("paused", jr.JBool(False)), #("touchME", jr.JNull)],
        [],
        [
            jr.Method("getWidth_0", [], False, c1_m12__getwidth), 
            jr.Method("getHeight_0", [], False, c1_m13__getheight), 
            jr.Method("setFullScreenMode_1", ["boolean"], False, c1_m14__setfullscreenmode), 
            jr.Method("sizeChanged_2", ["int", "int"], False, c1_m15__sizechanged), 
            jr.Method("getCommandStack_0", [], False, c1_m16__getcommandstack), 
            jr.Method("isCommand_1", ["Command"], False, c1_m17__iscommand), 
            jr.Method("addCommand_1", ["Command"], False, c1_m18__addcommand), 
            jr.Method("removeCommand_1", ["Command"], False, c1_m19__removecommand), 
            jr.Method("removeAllCommands_0", [], False, c1_m20__removeallcommands), 
            jr.Method("setCommandListener_1", ["CommandListener"], False, c1_m21__setcommandlistener), 
            jr.Method("getCustomCommandListener_0", [], False, c1_m22__getcustomcommandlistener), 
            jr.Method("isPaused_0", [], False, c1_m23__ispaused), 
            jr.Method("removePauseCommand_0", [], False, c1_m24__removepausecommand), 
            jr.Method("pause_0", [], False, c1_m25__pause), 
            jr.Method("unPause_0", [], False, c1_m26__unpause), 
            jr.Method("process_0", [], False, c1_m27__process), 
            jr.Method("paint_1", ["Graphics"], False, c1_m28__paint), 
            jr.Method("draw_1", ["Graphics"], False, c1_m29__draw), 
            jr.Method("hasChild_1", ["MyCanvas"], False, c1_m30__haschild), 
            jr.Method("destroy_0", [], False, c1_m31__destroy), 
            jr.Method("setPaused_1", ["boolean"], False, c1_m32__setpaused), 
            jr.Method("keyPressedByDevice_2", ["int", "int"], False, c1_m33__keypressedbydevice), 
            jr.Method("keyRepeatedByDevice_2", ["int", "int"], False, c1_m34__keyrepeatedbydevice), 
            jr.Method("keyReleasedByDevice_2", ["int", "int"], False, c1_m35__keyreleasedbydevice), 
            jr.Method("pointerDragged_2", ["int", "int"], False, c1_m37__pointerdragged), 
            jr.Method("pointerPressed_2", ["int", "int"], False, c1_m38__pointerpressed), 
            jr.Method("pointerReleased_2", ["int", "int"], False, c1_m39__pointerreleased), 
            jr.Method("nextSong_3", ["Sound", "int", "int"], False, c1_m40__nextsong), 
            jr.Method("jinit_2", ["String", "BasicArrayList"], False, c1_jinit11)],
        c1_jfields,
        c1_jclinit,
    )
}

