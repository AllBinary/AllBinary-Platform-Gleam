// Generated Code Do Not Modify
// package org.allbinary.game.configuration.persistance
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class KeyValuePersistance

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "tsUtil", jr.call_static("TsUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__loadall(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_abe_client_information] = jargs
        jr.call(this, "loadAllSize_2", [l_abe_client_information, jr.JInt(1)])
    jr.JNull
}

fn c1_m4__loadallsize(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_abe_client_information, l_size] = jargs
    let l_size = jr.as_i(l_size)
        let l_record_store = jr.cell(jr.get_static("NullRecordStore", "NULL_RECORD_STORE"))
        jr.try_catch(fn() {
            jr.set(l_record_store, jr.call_static("RecordStore", "openRecordStore_2", [jr.call_inherited(this, "KeyValuePersistance", "getRecordId_1", [l_abe_client_information]), jr.JBool(True)]))
            let l_record_enum = jr.call(jr.get(l_record_store), "enumerateRecords_3", [jr.get_static("NullRecordFilter", "NULL_RECORD_FILTER"), jr.get_static("NullRecordComparator", "NULL_RECORD_COMPARATOR"), jr.JBool(True)])
            let l_hashtable = jr.cell(jr.JNull)
            let l_name = jr.cell(jr.JNull)
            let l_value = jr.cell(jr.JNull)
            let l_small_integer_singleton_factory = jr.call_static("SmallIntegerSingletonFactory", "getInstance_0", [])
            let l_string_buffer = jr.new("StringMaker", [])
            let l_record_as_bytes = jr.cell(jr.JNull)
            let l_byte_array_input_stream = jr.cell(jr.JNull)
            let l_input_stream = jr.cell(jr.JNull)
            jr.while_loop("", fn() { jr.call(l_record_enum, "hasNextElement_0", []) }, fn() {
                let l_id = jr.as_i(jr.call(l_record_enum, "nextRecordId_0", []))
                jr.call(l_string_buffer, "delete_2", [jr.JInt(0), jr.call(l_string_buffer, "length_0", [])])
                jr.call(jr.get_inherited(this, "KeyValuePersistance", "logUtil"), "putF_3", [jr.call(jr.call(jr.call(l_string_buffer, "append_1", [jr.get_field(jr.get_inherited(this, "KeyValuePersistance", "persistanceStrings"), "LOADING_ID")]), "appendint_1", [l_id]), "toString_0", []), this, jr.get_field(jr.get_inherited(this, "KeyValuePersistance", "persistanceStrings"), "LOAD_ALL")])
                jr.set(l_record_as_bytes, jr.call(jr.get_field(this, "tsUtil"), "getRecord_2", [jr.get(l_record_store), l_id]))
                case jr.truth(jr.ne(jr.get(l_record_as_bytes), jr.JNull)) {
                    True -> {
                    jr.set(l_byte_array_input_stream, jr.new("ByteArrayInputStream", [jr.get(l_record_as_bytes)]))
                    jr.set(l_input_stream, jr.new("DataInputStream", [jr.get(l_byte_array_input_stream)]))
                    jr.set(l_hashtable, jr.new("ABHashtable", []))
                    {
                        let l_index = jr.cell(jr.as_i(jr.JInt(0)))
                        jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
                        jr.set(l_name, jr.call(jr.get(l_input_stream), "readUTF_0", []))
                        jr.call(jr.get(l_input_stream), "readUTF_0", [])
                        jr.set(l_value, jr.call(jr.get(l_input_stream), "readUTF_0", []))
                        jr.call(jr.get(l_hashtable), "put_2", [jr.get(l_name), jr.get(l_value)])
                        Nil
                    })
                        Nil
                    }
                    jr.call(jr.get_inherited(this, "KeyValuePersistance", "valueList"), "add_1", [jr.get(l_hashtable)])
                    jr.call(jr.get_inherited(this, "KeyValuePersistance", "idList"), "add_1", [jr.call(l_small_integer_singleton_factory, "getAt_1", [l_id])])
                    Nil
                }
                    False -> Nil
                }
                Nil
            })
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.throw(l_e)
            Nil
        } })], fn() {
            case jr.truth(jr.ne(jr.get(l_record_store), jr.JNull)) {
                True -> {
                jr.call_static("PreLogUtil", "put_3", [jr.get_field(jr.get_inherited(this, "KeyValuePersistance", "persistanceStrings"), "CLOSING_RECORDSTORE"), this, jr.get_field(jr.get_inherited(this, "KeyValuePersistance", "persistanceStrings"), "LOAD_ALL")])
                jr.call(jr.get(l_record_store), "closeRecordStore_0", [])
                Nil
            }
                False -> Nil
            }
            Nil
        })
    jr.JNull
}

fn c1_m5__save(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_abe_client_information, l_hashtable] = jargs
        let l_record_store = jr.cell(jr.get_static("NullRecordStore", "NULL_RECORD_STORE"))
        jr.try_catch(fn() {
            jr.call(jr.get_inherited(this, "KeyValuePersistance", "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(jr.get_inherited(this, "KeyValuePersistance", "persistanceStrings"), "SAVING")]), "append_1", [jr.call(jr.call_static("StringUtil", "getInstance_0", []), "toString_1", [l_hashtable])]), "toString_0", []), this, jr.get_field(jr.get_inherited(this, "KeyValuePersistance", "commonStrings"), "SAVE")])
            jr.set(l_record_store, jr.call_static("RecordStore", "openRecordStore_2", [jr.call_inherited(this, "KeyValuePersistance", "getRecordId_1", [l_abe_client_information]), jr.JBool(True)]))
            let l_byte_array_output_stream = jr.new("ByteArrayOutputStream", [])
            let l_output_stream = jr.new("DataOutputStream", [l_byte_array_output_stream])
            let l_value = jr.cell(jr.JNull)
            let l_common_seps = jr.call_static("CommonSeps", "getInstance_0", [])
            let l_object_array = jr.call(jr.call_static("HashtableUtil", "getInstance_0", []), "getKeysAsArray_1", [l_hashtable])
            let l_any_type = jr.cell(jr.JNull)
            let l_size = jr.as_i(jr.alen(l_object_array))
            {
                let l_index = jr.cell(jr.as_i(jr.JInt(0)))
                jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
                jr.call(l_output_stream, "writeUTF_1", [jr.aget(l_object_array, jr.get(l_index))])
                jr.call(l_output_stream, "writeUTF_1", [jr.get_field(l_common_seps, "EQUALS")])
                jr.set(l_any_type, jr.aget(l_object_array, jr.get(l_index)))
                jr.set(l_value, jr.call(l_hashtable, "get_1", [jr.get(l_any_type)]))
                jr.call(l_output_stream, "writeUTF_1", [jr.get(l_value)])
                Nil
            })
                Nil
            }
            let l_ts_util = jr.call_static("TsUtil", "getInstance_0", [])
            let l_saved_game_bytes = jr.call(l_ts_util, "getByteArray_1", [jr.call(l_byte_array_output_stream, "toString_0", [])])
            jr.call(jr.get(l_record_store), "addRecord_3", [l_saved_game_bytes, jr.JInt(0), jr.alen(l_saved_game_bytes)])
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.throw(l_e)
            Nil
        } })], fn() {
            case jr.truth(jr.ne(jr.get(l_record_store), jr.JNull)) {
                True -> {
                jr.call_static("PreLogUtil", "put_3", [jr.get_field(jr.get_inherited(this, "KeyValuePersistance", "persistanceStrings"), "CLOSING_RECORDSTORE"), this, jr.get_field(jr.get_inherited(this, "KeyValuePersistance", "commonStrings"), "SAVE")])
                jr.call(jr.get(l_record_store), "closeRecordStore_0", [])
                Nil
            }
                False -> Nil
            }
            Nil
        })
    jr.JNull
}

fn c1_m6__get(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_index] = jargs
    let l_index = jr.as_i(l_index)
        let l_hashtable = jr.aget(jr.get_field(jr.get_inherited(this, "KeyValuePersistance", "valueList"), "objectArray"), l_index)
    l_hashtable
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_record_id] = jargs
        jr.super_init("BasicPersitance", this, [l_record_id])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "KeyValuePersistance",
        "org.allbinary.game.configuration.persistance.KeyValuePersistance",
        "BasicPersitance",
        [],
        False,
        [#("tsUtil", jr.JNull)],
        [],
        [
            jr.Method("loadAll_1", ["AbeClientInformationInterface"], False, c1_m3__loadall), 
            jr.Method("loadAllSize_2", ["AbeClientInformationInterface", "int"], False, c1_m4__loadallsize), 
            jr.Method("save_2", ["AbeClientInformationInterface", "ABHashtable"], False, c1_m5__save), 
            jr.Method("get_1", ["int"], False, c1_m6__get), 
            jr.Method("jinit_1", ["String"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

