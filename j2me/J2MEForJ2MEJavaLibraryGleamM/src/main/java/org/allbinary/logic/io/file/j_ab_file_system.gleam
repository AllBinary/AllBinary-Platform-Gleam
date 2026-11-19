// Generated Code Do Not Modify
// package org.allbinary.logic.io.file
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AbFileSystem

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "commonStrings", jr.call_static("CommonStrings", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("AbFileSystem", "instance", jr.new("AbFileSystem", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("AbFileSystem", "instance")
}

fn c1_m5__isdirectoryorfile(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_path] = jargs
    jr.JBool(False)
}

fn c1_m6__isdirectory(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_path] = jargs
    jr.JBool(False)
}

fn c1_m7__getfilesasstringarrayforpath(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_current_dir_path] = jargs
    jr.call(jr.call_static("StringUtil", "getInstance_0", []), "getArrayInstance_0", [])
}

fn c1_m8__readasstring(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_file_name] = jargs
        let l_bytes = jr.new_array("B", 1, [jr.JInt(1000000)])
    jr.call(this, "readAsString_2", [l_file_name, l_bytes])
}

fn c1_m9__readasstring(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_file_name, l_bytes] = jargs
    jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING")
}

fn c1_m10__close(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_closeable] = jargs
    jr.method(fn() {
            jr.try_catch(fn() {
            case jr.truth(jr.ne(l_closeable, jr.JNull)) {
                True -> {
                let l_input_stream = l_closeable
                jr.call(l_input_stream, "close_0", [])
                Nil
            }
                False -> Nil
            }
            jr.ret(jr.JBool(True))
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(jr.get_field(this, "commonStrings"), "EXCEPTION"), this, jr.get_field(jr.get_field(this, "commonStrings"), "CLOSE"), l_e])
            jr.ret(jr.JBool(False))
            Nil
        } })], fn() { Nil })
        jr.JNull
    })
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AbFileSystem",
        "org.allbinary.logic.io.file.AbFileSystem",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull), #("commonStrings", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("isDirectoryOrFile_1", ["String"], False, c1_m5__isdirectoryorfile), 
            jr.Method("isDirectory_1", ["String"], False, c1_m6__isdirectory), 
            jr.Method("getFilesAsStringArrayForPath_1", ["String"], False, c1_m7__getfilesasstringarrayforpath), 
            jr.Method("readAsString_1", ["String"], False, c1_m8__readasstring), 
            jr.Method("readAsString_2", ["String", "byteArr"], False, c1_m9__readasstring), 
            jr.Method("close_1", ["Object"], False, c1_m10__close), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

