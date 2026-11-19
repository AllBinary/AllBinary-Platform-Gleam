// Generated Code Do Not Modify
// package org.allbinary.game.input
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class InputPersistance

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "tsUtil", jr.call_static("TsUtil", "getInstance_0", []))
    jr.set_field(this, "hashtableUtil", jr.call_static("HashtableUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__loadall(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_abe_client_information] = jargs
        let l_record_store = jr.cell(jr.get_static("NullRecordStore", "NULL_RECORD_STORE"))
        jr.try_catch(fn() {
            jr.set(l_record_store, jr.call_static("RecordStore", "openRecordStore_2", [jr.call_inherited(this, "InputPersistance", "getRecordId_1", [l_abe_client_information]), jr.JBool(True)]))
            let l_record_enum = jr.call(jr.get(l_record_store), "enumerateRecords_3", [jr.get_static("NullRecordFilter", "NULL_RECORD_FILTER"), jr.get_static("NullRecordComparator", "NULL_RECORD_COMPARATOR"), jr.JBool(True)])
            let l_game_action_input_id = jr.cell(jr.as_j(jr.JLong(0)))
            let l_input_id = jr.cell(jr.as_j(jr.JLong(0)))
            let l_game_action_input = jr.cell(jr.JNull)
            let l_input = jr.cell(jr.JNull)
            let l_hashtable = jr.cell(jr.JNull)
            let l_game_key_factory = jr.call_static("GameKeyMappingFactory", "getInstance_0", [])
            let l_string_buffer = jr.new("StringMaker", [])
            let l_input_factory = jr.call_static("InputFactory", "getInstance_0", [])
            let l_small_integer_singleton_factory = jr.call_static("SmallIntegerSingletonFactory", "getInstance_0", [])
            let l_std_util = jr.call_static("StdUtil", "getInstance_0", [])
            let l_record_as_bytes = jr.cell(jr.JNull)
            let l_byte_array_input_stream = jr.cell(jr.JNull)
            let l_input_stream = jr.cell(jr.JNull)
            jr.while_loop("", fn() { jr.call(l_record_enum, "hasNextElement_0", []) }, fn() {
                let l_id = jr.as_i(jr.call(l_record_enum, "nextRecordId_0", []))
                jr.call(l_string_buffer, "delete_2", [jr.JInt(0), jr.call(l_string_buffer, "length_0", [])])
                jr.call(jr.get_inherited(this, "InputPersistance", "logUtil"), "putF_3", [jr.call(jr.call(jr.call(l_string_buffer, "append_1", [jr.get_field(jr.get_inherited(this, "InputPersistance", "persistanceStrings"), "LOADING_ID")]), "appendint_1", [l_id]), "toString_0", []), this, jr.get_field(jr.get_inherited(this, "InputPersistance", "persistanceStrings"), "LOAD_ALL")])
                jr.set(l_record_as_bytes, jr.call(jr.get_field(this, "tsUtil"), "getRecord_2", [jr.get(l_record_store), l_id]))
                case jr.truth(jr.ne(jr.get(l_record_as_bytes), jr.JNull)) {
                    True -> {
                    jr.set(l_byte_array_input_stream, jr.new("ByteArrayInputStream", [jr.get(l_record_as_bytes)]))
                    jr.set(l_input_stream, jr.new("DataInputStream", [jr.get(l_byte_array_input_stream)]))
                    jr.set(l_hashtable, jr.call(l_std_util, "createHashtable_0", []))
                    let l_value = jr.cell(jr.as_i(jr.JInt(0)))
                    jr.while_loop("", fn() { jr.gt(jr.call(jr.get(l_input_stream), "available_0", []), jr.JInt(0)) }, fn() {
                        let l_game_action_input_id_as_string = jr.call(jr.get(l_input_stream), "readUTF_0", [])
                        jr.set(l_value, jr.as_i(jr.call_static("Integer", "parseInt_1", [l_game_action_input_id_as_string])))
                        jr.set(l_game_action_input_id, jr.as_j(jr.to_j(jr.get(l_value))))
                        jr.call(jr.get(l_input_stream), "readUTF_0", [])
                        jr.set(l_value, jr.as_i(jr.call_static("Integer", "parseInt_1", [jr.call(jr.get(l_input_stream), "readUTF_0", [])])))
                        jr.set(l_input_id, jr.as_j(jr.to_j(jr.get(l_value))))
                        jr.set(l_game_action_input, jr.call(l_game_key_factory, "getGameKey_1", [jr.to_i(jr.get(l_game_action_input_id))]))
                        jr.set(l_input, jr.call(l_input_factory, "getInstanceById_1", [jr.to_i(jr.get(l_input_id))]))
                        case jr.truth(case jr.truth(jr.eq(jr.get(l_input), jr.get_field(l_input_factory, "NO_INPUT"))) { True -> jr.JBool(True) False -> jr.eq(jr.get(l_game_action_input), jr.JNull) }) {
                            True -> {
                            jr.call(l_string_buffer, "delete_2", [jr.JInt(0), jr.call(l_string_buffer, "length_0", [])])
                            case jr.truth(jr.eq(jr.get(l_input), jr.get_field(l_input_factory, "NO_INPUT"))) {
                                True -> {
                                jr.call(l_string_buffer, "append_1", [jr.get_field(jr.get_inherited(this, "InputPersistance", "persistanceStrings"), "ERROR_LOADING_ID")])
                                jr.call(l_string_buffer, "appendlong_1", [jr.get(l_input_id)])
                                jr.call(l_string_buffer, "append_1", [jr.get_field(jr.get_inherited(this, "InputPersistance", "persistanceStrings"), "GAME_ACTION_INPUT")])
                                jr.call(l_string_buffer, "appendlong_1", [jr.get(l_game_action_input_id)])
                                jr.call_static("PreLogUtil", "put_3", [jr.call(l_string_buffer, "toString_0", []), this, jr.get_field(jr.get_inherited(this, "InputPersistance", "persistanceStrings"), "LOAD_ALL")])
                                Nil
                            }
                                False -> Nil
                            }
                            case jr.truth(jr.eq(jr.get(l_game_action_input), jr.JNull)) {
                                True -> {
                                jr.call(l_string_buffer, "delete_2", [jr.JInt(0), jr.call(l_string_buffer, "length_0", [])])
                                jr.call(l_string_buffer, "append_1", [jr.get_field(jr.get_inherited(this, "InputPersistance", "persistanceStrings"), "ERROR_LOADING")])
                                jr.call(l_string_buffer, "appendlong_1", [jr.get(l_game_action_input_id)])
                                jr.call(l_string_buffer, "append_1", [jr.get_field(jr.get_inherited(this, "InputPersistance", "persistanceStrings"), "ID")])
                                jr.call(l_string_buffer, "appendlong_1", [jr.get(l_input_id)])
                                jr.call_static("PreLogUtil", "put_3", [jr.call(l_string_buffer, "toString_0", []), this, jr.get_field(jr.get_inherited(this, "InputPersistance", "persistanceStrings"), "LOAD_ALL")])
                                Nil
                            }
                                False -> Nil
                            }
                            Nil
                        }
                            False -> {
                            Nil
                        }
                        }
                        jr.call(jr.get(l_hashtable), "put_2", [jr.get(l_input), jr.get(l_game_action_input)])
                        Nil
                    })
                    jr.call(jr.get_inherited(this, "InputPersistance", "valueList"), "add_1", [jr.get(l_hashtable)])
                    jr.call(jr.get_inherited(this, "InputPersistance", "idList"), "add_1", [jr.call(l_small_integer_singleton_factory, "getAt_1", [l_id])])
                    Nil
                }
                    False -> {
                    Nil
                }
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
                jr.call_static("PreLogUtil", "put_3", [jr.get_field(jr.get_inherited(this, "InputPersistance", "persistanceStrings"), "CLOSING_RECORDSTORE"), this, jr.get_field(jr.get_inherited(this, "InputPersistance", "persistanceStrings"), "LOAD_ALL")])
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
            let l_string_buffer = jr.new("StringMaker", [])
            jr.call_static("PreLogUtil", "put_3", [jr.call(jr.call(jr.call(l_string_buffer, "append_1", [jr.get_field(jr.get_inherited(this, "InputPersistance", "persistanceStrings"), "SAVING")]), "append_1", [jr.call(jr.call_static("StringUtil", "getInstance_0", []), "toString_1", [l_hashtable])]), "toString_0", []), this, jr.get_field(jr.get_inherited(this, "InputPersistance", "commonStrings"), "SAVE")])
            jr.set(l_record_store, jr.call_static("RecordStore", "openRecordStore_2", [jr.call_inherited(this, "InputPersistance", "getRecordId_1", [l_abe_client_information]), jr.JBool(True)]))
            let l_byte_array_output_stream = jr.new("ByteArrayOutputStream", [])
            let l_output_stream = jr.new("DataOutputStream", [l_byte_array_output_stream])
            let l_game_action_input = jr.cell(jr.JNull)
            let l_list = jr.cell(jr.JNull)
            let l_input = jr.cell(jr.JNull)
            let l_saved_game_bytes = jr.cell(jr.JNull)
            let l_common_seps = jr.call_static("CommonSeps", "getInstance_0", [])
            let l_small_integer_singleton_factory = jr.call_static("SmallIntegerSingletonFactory", "getInstance_0", [])
            let l_input_object_array = jr.call(jr.get_field(this, "hashtableUtil"), "getKeysAsArray_1", [l_hashtable])
            let l_size = jr.as_i(jr.alen(l_input_object_array))
            {
                let l_index = jr.cell(jr.as_i(jr.JInt(0)))
                jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
                jr.set(l_game_action_input, jr.aget(l_input_object_array, jr.get(l_index)))
                jr.set(l_list, jr.call(l_hashtable, "get_1", [jr.aget(l_input_object_array, jr.get(l_index))]))
                {
                    let l_index2 = jr.cell(jr.as_i(jr.JInt(0)))
                    jr.for_loop("", fn() { jr.lt(jr.get(l_index2), jr.call(jr.get(l_list), "size_0", [])) }, fn() { jr.incr(fn() { jr.get(l_index2) }, fn(jv) { jr.set(l_index2, jv) }, 1, True) Nil }, fn() {
                    let l_game_action_input_id_as_string = jr.call(jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.call(jr.get(l_game_action_input), "getId_0", [])]), "toString_0", [])
                    jr.call(l_output_stream, "writeUTF_1", [l_game_action_input_id_as_string])
                    jr.call(l_output_stream, "writeUTF_1", [jr.get_field(l_common_seps, "EQUALS")])
                    jr.set(l_input, jr.aget(jr.get_field(jr.get(l_list), "objectArray"), jr.get(l_index2)))
                    let l_input_id_as_string = jr.call(jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.call(jr.get(l_input), "getId_0", [])]), "toString_0", [])
                    jr.call(l_output_stream, "writeUTF_1", [l_input_id_as_string])
                    Nil
                })
                    Nil
                }
                Nil
            })
                Nil
            }
            jr.set(l_saved_game_bytes, jr.call(l_byte_array_output_stream, "toByteArray_0", []))
            jr.call(jr.get(l_record_store), "addRecord_3", [jr.get(l_saved_game_bytes), jr.JInt(0), jr.alen(jr.get(l_saved_game_bytes))])
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.throw(l_e)
            Nil
        } })], fn() {
            case jr.truth(jr.ne(jr.get(l_record_store), jr.JNull)) {
                True -> {
                jr.call_static("PreLogUtil", "put_3", [jr.get_field(jr.get_inherited(this, "InputPersistance", "persistanceStrings"), "CLOSING_RECORDSTORE"), this, jr.get_field(jr.get_inherited(this, "InputPersistance", "commonStrings"), "SAVE")])
                jr.call(jr.get(l_record_store), "closeRecordStore_0", [])
                Nil
            }
                False -> Nil
            }
            Nil
        })
    jr.JNull
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_name] = jargs
        jr.super_init("BasicPersitance", this, [l_name])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "InputPersistance",
        "org.allbinary.game.input.InputPersistance",
        "BasicPersitance",
        [],
        False,
        [#("tsUtil", jr.JNull), #("hashtableUtil", jr.JNull)],
        [],
        [
            jr.Method("loadAll_1", ["AbeClientInformationInterface"], False, c1_m4__loadall), 
            jr.Method("save_2", ["AbeClientInformationInterface", "ABHashtable"], False, c1_m5__save), 
            jr.Method("jinit_1", ["String"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

