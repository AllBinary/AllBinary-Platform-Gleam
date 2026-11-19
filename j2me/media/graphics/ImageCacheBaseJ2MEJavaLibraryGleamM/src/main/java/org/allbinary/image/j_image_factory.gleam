// Generated Code Do Not Modify
// package org.allbinary.image
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ImageFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("ImageFactory", "instance", jr.new("ImageFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("ImageFactory", "instance")
}

fn c1_m3__createimageurl(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_url] = jargs
    jr.call_static("Image", "createImage_1", [l_url])
}

fn c1_m4__createimage(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_caller, l_width, l_height] = jargs
    let l_width = jr.as_i(l_width)
    let l_height = jr.as_i(l_height)
    jr.call(jr.call_static("MIDPUtil", "getInstance_0", []), "createImageWH_2", [l_width, l_height])
}

fn c1_m5__createimagefrominputstream(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_key, l_input_stream] = jargs
        let l_image = jr.call(jr.call_static("MIDPUtil", "getInstance_0", []), "createImageFromInputStream_1", [l_input_stream])
    l_image
}

fn c1_m6__createimagefrominputstream(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_input_stream] = jargs
    jr.call(jr.call_static("MIDPUtil", "getInstance_0", []), "createImageFromInputStream_1", [l_input_stream])
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ImageFactory",
        "org.allbinary.image.ImageFactory",
        "Object",
        [],
        False,
        [],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("createImageUrl_1", ["String"], False, c1_m3__createimageurl), 
            jr.Method("createImage_3", ["String", "int", "int"], False, c1_m4__createimage), 
            jr.Method("createImageFromInputStream_2", ["Object", "InputStream"], False, c1_m5__createimagefrominputstream), 
            jr.Method("createImageFromInputStream_1", ["InputStream"], False, c1_m6__createimagefrominputstream), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

