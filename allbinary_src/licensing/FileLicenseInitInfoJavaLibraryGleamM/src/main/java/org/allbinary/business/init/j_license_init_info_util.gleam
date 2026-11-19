// Generated Code Do Not Modify
// package org.allbinary.business.init
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class LicenseInitInfoUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "stringUtil", jr.call_static("StringUtil", "getInstance_0", []))
    jr.set_field(this, "INITFILENAME", jr.JStr("licenseinitdata.dat"))
    jr.set_field(this, "ABOUT", jr.JStr("about"))
    jr.set_field(this, "PRIVACY_POLICY", jr.JStr("privacy_policy"))
    jr.set_field(this, "filePath", jr.get_field(jr.get_field(this, "stringUtil"), "EMPTY_STRING"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("LicenseInitInfoUtil", "instance", jr.new("LicenseInitInfoUtil", []))
    jr.JNull
}

fn c1_m3__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("LicenseInitInfoUtil", "instance")
}

fn c1_m9__setfilepath(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_file_path] = jargs
        jr.set_field(this, "filePath", l_file_path)
    jr.JNull
}

fn c1_m10__write(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_init_data] = jargs
        case jr.truth(jr.eq(jr.get_field(this, "filePath"), jr.get_field(jr.get_field(this, "stringUtil"), "EMPTY_STRING"))) {
            True -> {
            jr.set_field(this, "filePath", jr.concat(jr.call_static("URLGLOBALS", "getMainPath_0", []), jr.get_field(jr.call_static("PATH_GLOBALS", "getInstance_0", []), "INIT_PATH")))
            Nil
        }
            False -> Nil
        }
        jr.try_catch(fn() {
            let l_ts_util = jr.call_static("TsUtil", "getInstance_0", [])
            let l_data_output_stream = jr.call(jr.call_static("DataOutputStreamFactory", "getInstance_0", []), "getInstance_2", [jr.get_field(this, "filePath"), jr.get_field(this, "INITFILENAME")])
            let l_license_id_crypted = jr.call(l_ts_util, "getByteArray_1", [jr.call(jr.new("WeakCrypt", [jr.JInt(1)]), "encrypt_1", [jr.call(l_init_data, "getLicenseId_0", [])])])
            jr.call(l_data_output_stream, "writeUTF_1", [jr.call_static("DatabaseEncoder", "encode_1", [l_license_id_crypted])])
            let l_number_of_license_servers = jr.as_i(jr.call(l_init_data, "getNumberOfServers_0", []))
            jr.call(l_data_output_stream, "writeInt_1", [l_number_of_license_servers])
            let l_license_server_crypted = jr.cell(jr.JNull)
            {
                let l_index = jr.cell(jr.as_i(jr.JInt(0)))
                jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_number_of_license_servers) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
                jr.set(l_license_server_crypted, jr.call(l_ts_util, "getByteArray_1", [jr.call(jr.new("WeakCrypt", [jr.JInt(3)]), "encrypt_1", [jr.call(l_init_data, "getServer_1", [jr.get(l_index)])])]))
                jr.call(l_data_output_stream, "writeUTF_1", [jr.call_static("DatabaseEncoder", "encode_1", [jr.get(l_license_server_crypted)])])
                Nil
            })
                Nil
            }
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.concat(jr.JStr("Command Failed: "), jr.get_field(this, "INITFILENAME")), this, jr.JStr("write"), l_e])
            jr.call(jr.call_static("FileStreamFactory", "getInstance_0", []), "delete_2", [jr.get_field(this, "filePath"), jr.get_field(this, "INITFILENAME")])
            jr.throw(l_e)
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_m11__read(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call(this, "readAgain_1", [jr.JInt(0)])
}

fn c1_m12__readagain(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_initialize_counter] = jargs
    let l_initialize_counter = jr.as_i(l_initialize_counter)
    jr.method(fn() {
            let l__m_e_t_h_o_d___n_a_m_e = jr.JStr("readAgain")
            case jr.truth(jr.eq(jr.get_field(this, "filePath"), jr.get_field(jr.get_field(this, "stringUtil"), "EMPTY_STRING"))) {
            True -> {
            jr.set_field(this, "filePath", jr.concat(jr.call_static("URLGLOBALS", "getMainPath_0", []), jr.get_field(jr.call_static("PATH_GLOBALS", "getInstance_0", []), "INIT_PATH")))
            Nil
        }
            False -> Nil
        }
            jr.try_catch(fn() {
            jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.concat(jr.JStr("LicenseInitInfo File: "), jr.get_field(this, "INITFILENAME")), this, l__m_e_t_h_o_d___n_a_m_e])
            let l_file_stream_factory = jr.call_static("FileStreamFactory", "getInstance_0", [])
            let l_i_file = jr.call(l_file_stream_factory, "getFileInputStreamInstance_2", [jr.get_field(this, "filePath"), jr.get_field(this, "INITFILENAME")])
            case jr.truth(jr.ne(l_i_file, jr.JNull)) {
                True -> {
                let l_i_data = jr.new("AbDataInputStream", [l_i_file])
                let l_init_info = jr.new("LicenseInitInfo", [])
                let l_decoded_byte_array = jr.cell(jr.call_static("DatabaseEncoder", "decode_1", [jr.call(l_i_data, "readUTF_0", [])]))
                let l_license_id_decoded = jr.new("String", [jr.get(l_decoded_byte_array)])
                jr.call(l_init_info, "setLicenseId_1", [jr.call(jr.new("WeakCrypt", [jr.JInt(1)]), "decrypt_1", [l_license_id_decoded])])
                let l_number_of_license_servers = jr.as_i(jr.call(l_i_data, "readInt_0", []))
                let l__n_e_x_t___f_i_l_e = jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(jr.call_static("CommonLabels", "getInstance_0", []), "NEXT")]), "append_1", [jr.JStr(" License Server From File: ")]), "toString_0", [])
                let l_license_server_decoded = jr.cell(jr.JNull)
                {
                    let l_index = jr.cell(jr.as_i(jr.JInt(0)))
                    jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_number_of_license_servers) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
                    jr.set(l_decoded_byte_array, jr.call_static("DatabaseEncoder", "decode_1", [jr.call(l_i_data, "readUTF_0", [])]))
                    jr.set(l_license_server_decoded, jr.new("String", [jr.get(l_decoded_byte_array)]))
                    jr.call(l_init_info, "setServer_2", [jr.call(jr.new("WeakCrypt", [jr.JInt(3)]), "decrypt_1", [jr.get(l_license_server_decoded)]), jr.get(l_index)])
                    jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.concat(l__n_e_x_t___f_i_l_e, jr.call(l_init_info, "getServer_1", [jr.get(l_index)])), this, l__m_e_t_h_o_d___n_a_m_e])
                    Nil
                })
                    Nil
                }
                jr.ret(l_init_info)
                Nil
            }
                False -> {
                jr.throw(jr.new("Exception", [jr.concat(jr.JStr("Could Not Load License InitInfo: "), jr.get_field(this, "INITFILENAME"))]))
                Nil
            }
            }
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.try_catch(fn() {
                jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.concat(jr.JStr("Command Failed: "), jr.get_field(this, "INITFILENAME")), this, l__m_e_t_h_o_d___n_a_m_e, l_e])
                Nil
            }, [#(["Exception"], fn(l_e2) { {
                jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.concat(jr.JStr("LicenseInitInfo Read Retry: "), jr.get_field(this, "INITFILENAME")), this, jr.JStr("readAgain()"), l_e2])
                Nil
            } })], fn() { Nil })
            jr.throw(jr.new("Exception", [jr.concat(jr.JStr("LicenseInitInfo Read Error: "), jr.get_field(this, "INITFILENAME"))]))
            Nil
        } })], fn() { Nil })
        jr.JNull
    })
}

fn c1_m13__getfilepath(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "filePath")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "LicenseInitInfoUtil",
        "org.allbinary.business.init.LicenseInitInfoUtil",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull), #("stringUtil", jr.JNull), #("INITFILENAME", jr.JNull), #("ABOUT", jr.JNull), #("PRIVACY_POLICY", jr.JNull), #("filePath", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m3__getinstance), 
            jr.Method("setFilePath_1", ["String"], False, c1_m9__setfilepath), 
            jr.Method("write_1", ["LicenseInitInfo"], False, c1_m10__write), 
            jr.Method("read_0", [], False, c1_m11__read), 
            jr.Method("readAgain_1", ["int"], False, c1_m12__readagain), 
            jr.Method("getFilePath_0", [], False, c1_m13__getfilepath), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

