// Generated Code Do Not Modify
// package org.allbinary.game.combat.destroy.event
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class DestroyedEvent

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "allBinaryGameCanvas", jr.call_static("NullGameCanvas", "getInstance_0", []))
    jr.set_field(this, "allBinaryLayerInterface", jr.get_static("AllBinaryLayer", "NULL_ALLBINARY_LAYER"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__getallbinarygamecanvas(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "allBinaryGameCanvas")
}

fn c1_m5__getlayerinterface(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "allBinaryLayerInterface")
}

fn c1_m6__setallbinarygamecanvas(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_all_binary_game_canvas] = jargs
        jr.set_field(this, "allBinaryGameCanvas", l_all_binary_game_canvas)
    jr.JNull
}

fn c1_m7__setlayerinterfaceforcircularstaticpool(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_all_binary_layer_interface] = jargs
        jr.set_field(this, "allBinaryLayerInterface", l_all_binary_layer_interface)
    jr.JNull
}

fn c1_m8__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_string_buffer = jr.new("StringMaker", [])
        jr.call(l_string_buffer, "append_1", [jr.JStr("DestroyedEvent: \n")])
        jr.call(l_string_buffer, "append_1", [jr.JStr("AllBinaryLayerInterface: ")])
        jr.call(l_string_buffer, "append_1", [jr.call(jr.get_field(this, "allBinaryLayerInterface"), "toString_0", [])])
        jr.call(l_string_buffer, "append_1", [jr.JStr("\nAllBinaryGameCanvas: ")])
        jr.call(l_string_buffer, "append_1", [jr.call(jr.call_static("StringUtil", "getInstance_0", []), "toString_1", [jr.call(this, "getAllBinaryGameCanvas_0", [])])])
    jr.call(l_string_buffer, "toString_0", [])
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_combat_game_canvas] = jargs
        jr.super_init("AllBinaryEventObject", this, [jr.call_static("DestroyedEventHandler", "getInstance_0", [])])
        c1_jfields(this)
        jr.call(this, "setAllBinaryGameCanvas_1", [l_combat_game_canvas])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "DestroyedEvent",
        "org.allbinary.game.combat.destroy.event.DestroyedEvent",
        "AllBinaryEventObject",
        [],
        False,
        [#("allBinaryGameCanvas", jr.JNull), #("allBinaryLayerInterface", jr.JNull)],
        [],
        [
            jr.Method("getAllBinaryGameCanvas_0", [], False, c1_m4__getallbinarygamecanvas), 
            jr.Method("getLayerInterface_0", [], False, c1_m5__getlayerinterface), 
            jr.Method("setAllBinaryGameCanvas_1", ["AllBinaryGameCanvas"], False, c1_m6__setallbinarygamecanvas), 
            jr.Method("setLayerInterfaceForCircularStaticPool_1", ["AllBinaryLayer"], False, c1_m7__setlayerinterfaceforcircularstaticpool), 
            jr.Method("toString_0", [], False, c1_m8__tostring), 
            jr.Method("jinit_1", ["AllBinaryGameCanvas"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

