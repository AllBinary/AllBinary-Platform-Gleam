// Generated Code Do Not Modify
// package org.allbinary.game.input
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class InputPersistance

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "hashtableUtil", jr.call_static("HashtableUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__loadall(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_abe_client_information] = jargs
        let l_record_store = jr.call_static("RecordStore", "openRecordStore_2", [jr.call_inherited(this, "InputPersistance", "getRecordId_1", [l_abe_client_information]), jr.JBool(True)])
        let l_record_enum = jr.call(l_record_store, "enumerateRecords_3", [jr.get_static("NullRecordFilter", "NULL_RECORD_FILTER"), jr.get_static("NullRecordComparator", "NULL_RECORD_COMPARATOR"), jr.JBool(True)])
        let l_hashtable = jr.cell(jr.JNull)
        let l_string_buffer = jr.new("StringMaker", [])
        let l_small_integer_singleton_factory = jr.call_static("SmallIntegerSingletonFactory", "getInstance_0", [])
        let l_id = jr.cell(jr.as_i(jr.JInt(0)))
        jr.while_loop("", fn() { jr.call(l_record_enum, "hasNextElement_0", []) }, fn() {
            jr.set(l_id, jr.as_i(jr.call(l_record_enum, "nextRecordId_0", [])))
            jr.call(l_string_buffer, "delete_2", [jr.JInt(0), jr.call(l_string_buffer, "length_0", [])])
            jr.call(jr.get_inherited(this, "InputPersistance", "logUtil"), "putF_3", [jr.call(jr.call(jr.call(l_string_buffer, "append_1", [jr.get_field(jr.get_inherited(this, "InputPersistance", "persistanceStrings"), "LOADING_ID")]), "appendint_1", [jr.get(l_id)]), "toString_0", []), this, jr.get_field(jr.get_inherited(this, "InputPersistance", "persistanceStrings"), "LOAD_ALL")])
            jr.set(l_hashtable, jr.call(jr.call_static("StdUtil", "getInstance_0", []), "createHashtable_0", []))
            jr.call(jr.get_inherited(this, "InputPersistance", "valueList"), "add_1", [jr.get(l_hashtable)])
            jr.call(jr.get_inherited(this, "InputPersistance", "idList"), "add_1", [jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.get(l_id)])])
            Nil
        })
        jr.call(l_record_store, "closeRecordStore_0", [])
    jr.JNull
}

fn c1_m4__save(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_abe_client_information, l_hashtable] = jargs
        jr.call_static("PreLogUtil", "put_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(jr.get_inherited(this, "InputPersistance", "persistanceStrings"), "NOT_SAVING")]), "append_1", [jr.call(jr.call_static("StringUtil", "getInstance_0", []), "toString_1", [l_hashtable])]), "toString_0", []), this, jr.get_field(jr.get_inherited(this, "InputPersistance", "commonStrings"), "SAVE")])
        let l_record_store = jr.call_static("RecordStore", "openRecordStore_2", [jr.call_inherited(this, "InputPersistance", "getRecordId_1", [l_abe_client_information]), jr.JBool(True)])
        let l_game_action_input = jr.cell(jr.JNull)
        let l_list = jr.cell(jr.JNull)
        let l_input = jr.cell(jr.JNull)
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
                jr.set(l_input, jr.call(jr.get(l_list), "get_1", [jr.get(l_index2)]))
                Nil
            })
                Nil
            }
            Nil
        })
            Nil
        }
        jr.call(l_record_store, "closeRecordStore_0", [])
    jr.JNull
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
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
        [#("hashtableUtil", jr.JNull)],
        [],
        [
            jr.Method("loadAll_1", ["AbeClientInformationInterface"], False, c1_m3__loadall), 
            jr.Method("save_2", ["AbeClientInformationInterface", "ABHashtable"], False, c1_m4__save), 
            jr.Method("jinit_1", ["String"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

