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
        let l_file = jr.new("File", [l_path])
    case jr.truth(jr.call(l_file, "isDirectory_0", [])) { True -> jr.JBool(True) False -> jr.call(l_file, "isFile_0", []) }
}

fn c1_m6__isdirectory(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_path] = jargs
    jr.call(jr.new("File", [l_path]), "isDirectory_0", [])
}

fn c1_m7__getfilesasstringarrayforpath(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_current_dir_path] = jargs
    jr.method(fn() {
            let l_file = jr.new("File", [l_current_dir_path])
            case jr.truth(jr.call(l_file, "exists_0", [])) {
            True -> {
            jr.ret(jr.call(l_file, "list_0", []))
            Nil
        }
            False -> {
            jr.ret(jr.call(jr.call_static("StringUtil", "getInstance_0", []), "getArrayInstance_0", []))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_m8__readasstring(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_file_name] = jargs
        let l_bytes = jr.new_array("B", 1, [jr.JInt(1000000)])
    jr.call(this, "readAsString_2", [l_file_name, l_bytes])
}

fn c1_m9__readasstring(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_file_name, l_bytes] = jargs
    jr.method(fn() {
            let l_closeable = jr.cell(jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))
            jr.try_catch(fn() {
            let l_id_file = jr.new("FileInputStream", [l_file_name])
            jr.set(l_closeable, l_id_file)
            let l_size = jr.as_i(jr.call(l_id_file, "read_1", [l_bytes]))
            case jr.truth(jr.gt(l_size, jr.JInt(0))) {
                True -> {
                jr.ret(jr.new("String", [l_bytes, jr.JInt(0), l_size]))
                Nil
            }
                False -> Nil
            }
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(jr.get_field(this, "commonStrings"), "EXCEPTION"), this, jr.JStr("readAsString"), l_e])
            Nil
        } })], fn() {
            jr.call(this, "close_1", [jr.get(l_closeable)])
            Nil
        })
            jr.ret(jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"))
        jr.JNull
    })
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

fn c1_m11__main(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_args] = jargs
        let l_is_directory = jr.call(jr.call_static("AbFileSystem", "getInstance_0", []), "isDirectory_1", [jr.JStr("c:")])
        jr.call(jr.get_static("System", "out"), "println_1", [jr.concat(jr.JStr("isDirectory: "), l_is_directory)])
    jr.JNull
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
            jr.Method("main_1", ["StringArr"], True, c1_m11__main), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

