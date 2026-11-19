// Generated Code Do Not Modify
// package org.allbinary.game.configuration.persistance
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BasicPersitance

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "commonStrings", jr.call_static("CommonStrings", "getInstance_0", []))
    jr.set_field(this, "persistanceStrings", jr.call_static("PersistanceStrings", "getInstance_0", []))
    jr.set_field(this, "platformRecordIdUtil", jr.call_static("PlatformRecordIdUtil", "getInstance_0", []))
    jr.set_field(this, "valueList", jr.new("BasicArrayListD", []))
    jr.set_field(this, "idList", jr.new("BasicArrayListD", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m9__deleterecorestore(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_abe_client_information] = jargs
        jr.call_static("RecordStore", "deleteRecordStore_1", [jr.call(this, "getRecordId_1", [l_abe_client_information])])
    jr.JNull
}

fn c1_m10__deleteall(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_abe_client_information] = jargs
        let l_size = jr.as_i(jr.call(jr.get_field(this, "idList"), "size_0", []))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            let l_integer = jr.aget(jr.get_field(jr.get_field(this, "idList"), "objectArray"), jr.get(l_index))
            jr.call(this, "delete_2", [l_abe_client_information, jr.call(l_integer, "intValue_0", [])])
            Nil
        })
            Nil
        }
        jr.call(this, "clear_0", [])
    jr.JNull
}

fn c1_m11__delete(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_abe_client_information, l_delete_id] = jargs
    let l_delete_id = jr.as_i(l_delete_id)
        let l_record_store = jr.cell(jr.get_static("NullRecordStore", "NULL_RECORD_STORE"))
        jr.try_catch(fn() {
            jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(jr.get_field(this, "persistanceStrings"), "DELETING_WITH_ID")]), "appendint_1", [l_delete_id]), "toString_0", []), this, jr.get_field(jr.get_field(this, "commonStrings"), "delete")])
            jr.set(l_record_store, jr.call_static("RecordStore", "openRecordStore_2", [jr.call(this, "getRecordId_1", [l_abe_client_information]), jr.JBool(True)]))
            jr.call(jr.get(l_record_store), "deleteRecord_1", [l_delete_id])
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.throw(l_e)
            Nil
        } })], fn() {
            case jr.truth(jr.ne(jr.get(l_record_store), jr.JNull)) {
                True -> {
                jr.call_static("PreLogUtil", "put_3", [jr.get_field(jr.get_field(this, "persistanceStrings"), "CLOSING_RECORDSTORE"), this, jr.get_field(jr.get_field(this, "commonStrings"), "delete")])
                jr.call(jr.get(l_record_store), "closeRecordStore_0", [])
                Nil
            }
                False -> Nil
            }
            Nil
        })
    jr.JNull
}

fn c1_m12__getrecordid(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_abe_client_information] = jargs
    jr.call(jr.get_field(this, "platformRecordIdUtil"), "getRecordId_2", [l_abe_client_information, jr.get_field(this, "recordId")])
}

fn c1_m13__getlist(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "valueList")
}

fn c1_m14__getids(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "idList")
}

fn c1_m15__clear(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "valueList"), "clear_0", [])
        jr.call(jr.get_field(this, "idList"), "clear_0", [])
    jr.JNull
}

fn c1_jinit8(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_record_id] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "recordId", l_record_id)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "BasicPersitance",
        "org.allbinary.game.configuration.persistance.BasicPersitance",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull), #("commonStrings", jr.JNull), #("persistanceStrings", jr.JNull), #("platformRecordIdUtil", jr.JNull), #("recordId", jr.JNull), #("valueList", jr.JNull), #("idList", jr.JNull)],
        [],
        [
            jr.Method("deleteRecoreStore_1", ["AbeClientInformationInterface"], False, c1_m9__deleterecorestore), 
            jr.Method("deleteAll_1", ["AbeClientInformationInterface"], False, c1_m10__deleteall), 
            jr.Method("delete_2", ["AbeClientInformationInterface", "int"], False, c1_m11__delete), 
            jr.Method("getRecordId_1", ["AbeClientInformationInterface"], False, c1_m12__getrecordid), 
            jr.Method("getList_0", [], False, c1_m13__getlist), 
            jr.Method("getIds_0", [], False, c1_m14__getids), 
            jr.Method("clear_0", [], False, c1_m15__clear), 
            jr.Method("jinit_1", ["String"], False, c1_jinit8)],
        c1_jfields,
        c1_jclinit,
    )
}

