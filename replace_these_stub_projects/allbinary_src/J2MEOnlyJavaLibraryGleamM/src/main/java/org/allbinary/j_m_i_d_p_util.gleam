// Generated Code Do Not Modify
// package org.allbinary
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class MIDPUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("MIDPUtil", "instance", jr.new("MIDPUtil", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("MIDPUtil", "instance")
}

fn c1_m3__createimagewh(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_width, l_height] = jargs
    let l_width = jr.as_i(l_width)
    let l_height = jr.as_i(l_height)
    jr.call_static("Image", "createImage_2", [l_width, l_height])
}

fn c1_m4__createimagefrombytearray(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image_data, l_image_offset, l_image_length] = jargs
    let l_image_offset = jr.as_i(l_image_offset)
    let l_image_length = jr.as_i(l_image_length)
    jr.call_static("Image", "createImage_3", [l_image_data, l_image_offset, l_image_length])
}

fn c1_m5__createimagefrominputstream(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_input_stream] = jargs
    jr.call_static("Image", "createImage_1", [l_input_stream])
}

fn c1_m6__createplayerfrominputstream(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_input_stream, l_type] = jargs
    jr.call_static("Manager", "createPlayer_2", [l_input_stream, l_type])
}

fn c1_m7__appenditem(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_form, l_item] = jargs
    jr.as_i(jr.call(l_form, "append_1", [l_item]))
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "MIDPUtil",
        "org.allbinary.MIDPUtil",
        "Object",
        [],
        False,
        [],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("createImageWH_2", ["int", "int"], False, c1_m3__createimagewh), 
            jr.Method("createImageFromByteArray_3", ["byteArr", "int", "int"], False, c1_m4__createimagefrombytearray), 
            jr.Method("createImageFromInputStream_1", ["InputStream"], False, c1_m5__createimagefrominputstream), 
            jr.Method("createPlayerFromInputStream_2", ["InputStream", "String"], False, c1_m6__createplayerfrominputstream), 
            jr.Method("appendItem_2", ["Form", "LcduiItem"], False, c1_m7__appenditem), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

