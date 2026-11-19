// Generated Code Do Not Modify
// package org.allbinary.logic.system.security.licensing
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class LicenseServerInitFileUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "commonStrings", jr.call_static("CommonStrings", "getInstance_0", []))
    jr.set_field(this, "NULL_OUTPUT_STREAM", jr.call_static("SimpleFileUtil", "nullOutputStream_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.try_catch(fn() {
            let l_file_path = jr.get_field(jr.call_static("LicenseInitInfoUtil", "getInstance_0", []), "INITFILENAME")
            jr.call(jr.call_static("LicenseInitInfoUtil", "getInstance_0", []), "setFilePath_1", [jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING")])
            case jr.truth(jr.call(jr.call_static("FileFactory", "getInstance_0", []), "isFile_1", [l_file_path])) {
                True -> {
                jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.JStr("Using Existing License File"), this, jr.get_field(jr.get_field(this, "commonStrings"), "INIT")])
                Nil
            }
                False -> {
                jr.call(this, "write_0", [])
                Nil
            }
            }
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(jr.get_field(this, "commonStrings"), "EXCEPTION"), this, jr.get_field(jr.get_field(this, "commonStrings"), "INIT"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_m5__write(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_file_output_stream = jr.cell(jr.get_field(this, "NULL_OUTPUT_STREAM"))
        jr.try_catch(fn() {
            let l_resource_util = jr.call_static("ResourceUtil", "getInstance_0", [])
            let l_file_path = jr.get_field(jr.call_static("LicenseInitInfoUtil", "getInstance_0", []), "INITFILENAME")
            let l_input_stream = jr.call(l_resource_util, "getResourceAsStream_1", [l_file_path])
            jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.JStr("Writing Default License File"), this, jr.get_field(jr.get_field(this, "commonStrings"), "INIT")])
            let l_file_stream_factory = jr.call_static("FileStreamFactory", "getInstance_0", [])
            jr.set(l_file_output_stream, jr.call(l_file_stream_factory, "getFileOutputStreamInstance_2", [jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), l_file_path]))
            let l_b = jr.cell(jr.as_i(jr.JInt(0)))
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.while_loop("", fn() { jr.JBool(True) }, fn() {
                jr.set(l_b, jr.as_i(jr.call(l_input_stream, "read_0", [])))
                case jr.truth(jr.eq(jr.get(l_b), jr.JInt(-1))) {
                    True -> {
                    jr.brk("")
                    Nil
                }
                    False -> Nil
                }
                jr.call(jr.get(l_file_output_stream), "write_1", [jr.get(l_b)])
                jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True)
                Nil
            })
            jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.concat(jr.JStr("Wrote Bytes: "), jr.get(l_index)), this, jr.get_field(jr.get_field(this, "commonStrings"), "INIT")])
            jr.call(jr.get(l_file_output_stream), "flush_0", [])
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(jr.get_field(this, "commonStrings"), "EXCEPTION"), this, jr.get_field(jr.get_field(this, "commonStrings"), "INIT"), l_e])
            Nil
        } })], fn() {
            jr.call(jr.call_static("StreamUtil", "getInstance_0", []), "close_1", [jr.get(l_file_output_stream)])
            Nil
        })
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "LicenseServerInitFileUtil",
        "org.allbinary.logic.system.security.licensing.LicenseServerInitFileUtil",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull), #("commonStrings", jr.JNull), #("NULL_OUTPUT_STREAM", jr.JNull)],
        [],
        [
            jr.Method("init_0", [], False, c1_m4__init), 
            jr.Method("write_0", [], False, c1_m5__write), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

