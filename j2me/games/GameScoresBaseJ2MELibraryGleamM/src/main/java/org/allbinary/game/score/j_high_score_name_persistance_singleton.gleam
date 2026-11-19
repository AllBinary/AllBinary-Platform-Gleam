// Generated Code Do Not Modify
// package org.allbinary.game.score
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class HighScoreNamePersistanceSingleton

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "tsUtil", jr.call_static("TsUtil", "getInstance_0", []))
    jr.set_field(this, "commonStrings", jr.call_static("CommonStrings", "getInstance_0", []))
    jr.set_field(this, "platformRecordIdUtil", jr.call_static("PlatformRecordIdUtil", "getInstance_0", []))
    jr.set_field(this, "RECORD_ID", jr.JStr("_SN"))
    jr.set_field(this, "name", jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"))
    jr.set_field(this, "nameBasicArrayList", jr.new("BasicArrayListD", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("HighScoreNamePersistanceSingleton", "SINGLETON", jr.new("HighScoreNamePersistanceSingleton", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("HighScoreNamePersistanceSingleton", "SINGLETON")
}

fn c1_m10__clear(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.set_field(this, "name", jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"))
    jr.JNull
}

fn c1_m11__deleteall(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_abe_client_information, l_game_info] = jargs
        let l_size = jr.as_i(jr.call(jr.get_field(this, "nameBasicArrayList"), "size_0", []))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            let l_integer = jr.aget(jr.get_field(jr.get_field(this, "nameBasicArrayList"), "objectArray"), jr.get(l_index))
            jr.call(this, "delete_3", [l_abe_client_information, l_game_info, jr.call(l_integer, "intValue_0", [])])
            Nil
        })
            Nil
        }
        jr.call(this, "clear_0", [])
    jr.JNull
}

fn c1_m12__getrecordid(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_abe_client_information] = jargs
    jr.call(jr.get_field(this, "platformRecordIdUtil"), "getRecordId_2", [l_abe_client_information, jr.get_field(this, "RECORD_ID")])
}

fn c1_m13__delete(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_abe_client_information, l_game_info, l_delete_id] = jargs
    let l_delete_id = jr.as_i(l_delete_id)
        let l_record_store = jr.cell(jr.get_static("NullRecordStore", "NULL_RECORD_STORE"))
        jr.try_catch(fn() {
            jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.JStr("Deleting: ")]), "appendint_1", [l_delete_id]), "toString_0", []), this, jr.get_field(jr.get_field(this, "commonStrings"), "delete")])
            jr.set(l_record_store, jr.call_static("RecordStore", "openRecordStore_2", [jr.call(this, "getRecordId_1", [l_abe_client_information]), jr.JBool(True)]))
            jr.call(jr.get(l_record_store), "deleteRecord_1", [l_delete_id])
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.throw(l_e)
            Nil
        } })], fn() {
            case jr.truth(jr.ne(jr.get(l_record_store), jr.JNull)) {
                True -> {
                jr.call_static("PreLogUtil", "put_3", [jr.JStr("Closing RecordStore"), this, jr.get_field(jr.get_field(this, "commonStrings"), "delete")])
                jr.call(jr.get(l_record_store), "closeRecordStore_0", [])
                Nil
            }
                False -> Nil
            }
            Nil
        })
    jr.JNull
}

fn c1_m14__getids(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "nameBasicArrayList")
}

fn c1_m15__load(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_abe_client_information, l_game_info] = jargs
        let l_record_store = jr.cell(jr.get_static("NullRecordStore", "NULL_RECORD_STORE"))
        jr.try_catch(fn() {
            case jr.truth(jr.eq(jr.get_field(this, "name"), jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"))) {
                True -> {
                let l__l_o_a_d_i_n_g___i_d = jr.JStr("Loading id: ")
                jr.set(l_record_store, jr.call_static("RecordStore", "openRecordStore_2", [jr.call(this, "getRecordId_1", [l_abe_client_information]), jr.JBool(True)]))
                let l_record_enum = jr.call(jr.get(l_record_store), "enumerateRecords_3", [jr.get_static("NullRecordFilter", "NULL_RECORD_FILTER"), jr.get_static("NullRecordComparator", "NULL_RECORD_COMPARATOR"), jr.JBool(True)])
                let l_small_integer_singleton_factory = jr.call_static("SmallIntegerSingletonFactory", "getInstance_0", [])
                let l_record_as_bytes = jr.cell(jr.JNull)
                let l_byte_array_input_stream = jr.cell(jr.JNull)
                let l_input_stream = jr.cell(jr.JNull)
                jr.while_loop("", fn() { jr.call(l_record_enum, "hasNextElement_0", []) }, fn() {
                    let l_id = jr.as_i(jr.call(l_record_enum, "nextRecordId_0", []))
                    jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [l__l_o_a_d_i_n_g___i_d]), "appendint_1", [l_id]), "toString_0", []), this, jr.get_field(jr.get_field(this, "commonStrings"), "LOAD")])
                    jr.set(l_record_as_bytes, jr.call(jr.get_field(this, "tsUtil"), "getRecord_2", [jr.get(l_record_store), l_id]))
                    jr.set(l_byte_array_input_stream, jr.new("ByteArrayInputStream", [jr.get(l_record_as_bytes)]))
                    jr.set(l_input_stream, jr.new("DataInputStream", [jr.get(l_byte_array_input_stream)]))
                    jr.while_loop("", fn() { jr.gt(jr.call(jr.get(l_input_stream), "available_0", []), jr.JInt(0)) }, fn() {
                        jr.set_field(this, "name", jr.call(jr.get(l_input_stream), "readUTF_0", []))
                        Nil
                    })
                    jr.call(jr.get_field(this, "nameBasicArrayList"), "add_1", [jr.call(l_small_integer_singleton_factory, "getAt_1", [l_id])])
                    Nil
                })
                Nil
            }
                False -> Nil
            }
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call(this, "save_3", [l_abe_client_information, l_game_info, jr.get_field(this, "name")])
            jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(jr.get_field(this, "commonStrings"), "EXCEPTION_LABEL")]), "append_1", [jr.call(jr.call_static("ExceptionUtil", "getInstance_0", []), "getStackTrace_1", [l_e])]), "toString_0", []), this, jr.get_field(jr.get_field(this, "commonStrings"), "LOAD")])
            Nil
        } })], fn() {
            jr.try_catch(fn() {
                case jr.truth(jr.ne(jr.get(l_record_store), jr.JNull)) {
                    True -> {
                    jr.call_static("PreLogUtil", "put_3", [jr.JStr("Closing RecordStore"), this, jr.get_field(jr.get_field(this, "commonStrings"), "LOAD")])
                    jr.call(jr.get(l_record_store), "closeRecordStore_0", [])
                    Nil
                }
                    False -> Nil
                }
                Nil
            }, [#(["RecordStoreException"], fn(l_e) { {
                jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(jr.get_field(this, "commonStrings"), "EXCEPTION"), this, jr.get_field(jr.get_field(this, "commonStrings"), "LOAD"), l_e])
                Nil
            } })], fn() { Nil })
            Nil
        })
    jr.get_field(this, "name")
}

fn c1_m16__save(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_abe_client_information, l_game_info, l_name] = jargs
        let l_record_store = jr.cell(jr.get_static("NullRecordStore", "NULL_RECORD_STORE"))
        jr.try_catch(fn() {
            jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.JStr("Saving: ")]), "append_1", [l_name]), "toString_0", []), this, jr.get_field(jr.get_field(this, "commonStrings"), "SAVE")])
            jr.set(l_record_store, jr.call_static("RecordStore", "openRecordStore_2", [jr.call(this, "getRecordId_1", [l_abe_client_information]), jr.JBool(True)]))
            let l_byte_array_output_stream = jr.new("ByteArrayOutputStream", [])
            let l_output_stream = jr.new("DataOutputStream", [l_byte_array_output_stream])
            jr.call(l_output_stream, "writeUTF_1", [l_name])
            let l_saved_game_bytes = jr.call(l_byte_array_output_stream, "toByteArray_0", [])
            jr.call(jr.get(l_record_store), "addRecord_3", [l_saved_game_bytes, jr.JInt(0), jr.alen(l_saved_game_bytes)])
            jr.set_field(this, "name", l_name)
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(jr.get_field(this, "commonStrings"), "EXCEPTION"), this, jr.get_field(jr.get_field(this, "commonStrings"), "SAVE"), l_e])
            Nil
        } })], fn() {
            jr.try_catch(fn() {
                case jr.truth(jr.ne(jr.get(l_record_store), jr.JNull)) {
                    True -> {
                    jr.call_static("PreLogUtil", "put_3", [jr.JStr("Closing RecordStore"), this, jr.get_field(jr.get_field(this, "commonStrings"), "SAVE")])
                    jr.call(jr.get(l_record_store), "closeRecordStore_0", [])
                    Nil
                }
                    False -> Nil
                }
                Nil
            }, [#(["RecordStoreException"], fn(l_e) { {
                jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(jr.get_field(this, "commonStrings"), "EXCEPTION"), this, jr.get_field(jr.get_field(this, "commonStrings"), "SAVE"), l_e])
                Nil
            } })], fn() { Nil })
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
        "HighScoreNamePersistanceSingleton",
        "org.allbinary.game.score.HighScoreNamePersistanceSingleton",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull), #("tsUtil", jr.JNull), #("commonStrings", jr.JNull), #("platformRecordIdUtil", jr.JNull), #("RECORD_ID", jr.JNull), #("name", jr.JNull), #("nameBasicArrayList", jr.JNull)],
        [#("SINGLETON", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("clear_0", [], False, c1_m10__clear), 
            jr.Method("deleteAll_2", ["AbeClientInformationInterface", "GameInfo"], False, c1_m11__deleteall), 
            jr.Method("getRecordId_1", ["AbeClientInformationInterface"], False, c1_m12__getrecordid), 
            jr.Method("delete_3", ["AbeClientInformationInterface", "GameInfo", "int"], False, c1_m13__delete), 
            jr.Method("getIds_0", [], False, c1_m14__getids), 
            jr.Method("load_2", ["AbeClientInformationInterface", "GameInfo"], False, c1_m15__load), 
            jr.Method("save_3", ["AbeClientInformationInterface", "GameInfo", "String"], False, c1_m16__save), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

