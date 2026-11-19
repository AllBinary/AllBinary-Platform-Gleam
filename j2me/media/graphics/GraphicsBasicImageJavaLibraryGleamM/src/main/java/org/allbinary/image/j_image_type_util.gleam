// Generated Code Do Not Modify
// package org.allbinary.image
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ImageTypeUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "PNG", jr.JStr("png"))
    jr.set_field(this, "JPG", jr.JStr("jpg"))
    jr.set_field(this, "GIF", jr.JStr("gif"))
    jr.set_field(this, "list", jr.new("BasicArrayListD", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("ImageTypeUtil", "SINGLETON", jr.new("ImageTypeUtil", []))
    jr.JNull
}

fn c1_m7__issupported(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_media_file_type] = jargs
    let l_media_file_type = jr.cell(l_media_file_type)
    jr.method(fn() {
            jr.set(l_media_file_type, jr.call(jr.get(l_media_file_type), "toLowerCase_0", []))
            {
            let l_index = jr.cell(jr.as_i(jr.sub(jr.call(jr.get_field(this, "list"), "size_0", []), jr.JInt(1))))
            jr.for_loop("", fn() { jr.ge(jr.get(l_index), jr.JInt(0)) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, True) Nil }, fn() {
            let l_name = jr.call(jr.get_field(this, "list"), "get_1", [jr.get(l_index)])
            case jr.truth(jr.eq(jr.call(jr.get(l_media_file_type), "compareTo_1", [l_name]), jr.JInt(0))) {
                True -> {
                jr.ret(jr.JBool(True))
                Nil
            }
                False -> Nil
            }
            Nil
        })
            Nil
        }
            jr.ret(jr.JBool(False))
        jr.JNull
    })
}

fn c1_m8__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("ImageTypeUtil", "SINGLETON")
}

fn c1_jinit6(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.call(jr.get_field(this, "list"), "add_1", [jr.get_field(this, "JPG")])
        jr.call(jr.get_field(this, "list"), "add_1", [jr.get_field(this, "GIF")])
        jr.call(jr.get_field(this, "list"), "add_1", [jr.get_field(this, "PNG")])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ImageTypeUtil",
        "org.allbinary.image.ImageTypeUtil",
        "Object",
        [],
        False,
        [#("PNG", jr.JNull), #("JPG", jr.JNull), #("GIF", jr.JNull), #("list", jr.JNull)],
        [#("SINGLETON", jr.JNull)],
        [
            jr.Method("isSupported_1", ["String"], False, c1_m7__issupported), 
            jr.Method("getInstance_0", [], True, c1_m8__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit6)],
        c1_jfields,
        c1_jclinit,
    )
}

