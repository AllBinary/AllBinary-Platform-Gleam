// Generated Code Do Not Modify
// package org.allbinary.logic.io.file
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class FileWrapperUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__wrapfiles(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_files] = jargs
    jr.method(fn() {
            jr.try_catch(fn() {
            let l_ab_file_array = jr.new_array("L", 1, [jr.alen(l_files)])
            {
                let l_index = jr.cell(jr.as_i(jr.sub(jr.alen(l_files), jr.JInt(1))))
                jr.for_loop("", fn() { jr.ge(jr.get(l_index), jr.JInt(0)) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, True) Nil }, fn() {
                jr.aset(l_ab_file_array, jr.get(l_index), jr.new("AbFile", [jr.aget(l_files, jr.get(l_index))]))
                Nil
            })
                Nil
            }
            jr.ret(l_ab_file_array)
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call_static("PreLogUtil", "putSE_4", [jr.JStr("Exception Wrapping Files"), jr.JStr("FileWrapperUtil"), jr.JStr("wrapFiles"), l_e])
            jr.ret(jr.new_array("L", 1, [jr.JInt(0)]))
            Nil
        } })], fn() { Nil })
        jr.JNull
    })
}

fn c1_m2__wrapfile(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_file] = jargs
    jr.method(fn() {
            jr.try_catch(fn() {
            jr.ret(jr.new("AbFile", [l_file]))
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call_static("PreLogUtil", "putSE_4", [jr.JStr("Exception Wrapping File"), jr.JStr("FileWrapperUtil"), jr.JStr("wrapFile"), l_e])
            jr.ret(jr.get_static("AbFile", "NULL_FILE"))
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
        "FileWrapperUtil",
        "org.allbinary.logic.io.file.FileWrapperUtil",
        "Object",
        [],
        False,
        [],
        [],
        [
            jr.Method("wrapFiles_1", ["ObjectArr"], True, c1_m1__wrapfiles), 
            jr.Method("wrapFile_1", ["File"], True, c1_m2__wrapfile), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

