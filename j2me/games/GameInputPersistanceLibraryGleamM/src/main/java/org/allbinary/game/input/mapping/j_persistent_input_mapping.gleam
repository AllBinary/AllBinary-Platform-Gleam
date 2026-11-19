// Generated Code Do Not Modify
// package org.allbinary.game.input.mapping
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class PersistentInputMapping

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "commonStrings", jr.call_static("CommonStrings", "getInstance_0", []))
    jr.set_field(this, "enumerationUtil", jr.call_static("EnumerationUtil", "getInstance_0", []))
    jr.set_field(this, "inputMapping", jr.new("InputToGameKeyMapping", []))
    jr.set_field(this, "inputMappingEventListenerInterface", jr.get_static("NullInputMappingEventListener", "NULL_INPUT_MAPPING_EVENT_LISTENER"))
    jr.set_field(this, "inputMappingEvent", jr.new("InputMappingEvent", [this]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("PersistentInputMapping", "instance", jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))
    jr.JNull
}

fn c1_m2__getnullinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.eq(jr.get_static("PersistentInputMapping", "instance"), jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))) {
            True -> {
            jr.set_static("PersistentInputMapping", "instance", jr.new("PersistentInputMapping", [jr.get_field(jr.call_static("GamePersistanceStrings", "getInstance_0", []), "SAVED_INPUT_CONFIGURATION_RECORD_ID")]))
            Nil
        }
            False -> Nil
        }
    jr.get_static("PersistentInputMapping", "instance")
}

fn c1_m10__gettotalmapped(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.call(jr.call(jr.call(this, "getInputMapping_0", []), "getHashtable_0", []), "size_0", []))
}

fn c1_m11__isdefaultnew(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JBool(False)
}

fn c1_m12__getdefault(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call_static("InputToGameKeyMapping", "getNullInstance_0", [])
}

fn c1_m13__setdefault(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_abe_client_information] = jargs
        jr.call(jr.call(this, "getInputMapping_0", []), "removeAll_0", [])
        jr.call(jr.call(this, "getInputMapping_0", []), "addMapping_1", [jr.call(this, "getDefault_0", [])])
        jr.call(this, "save_1", [l_abe_client_information])
    jr.JNull
}

fn c1_m14__update(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_abe_client_information] = jargs
        jr.call(jr.get_field(this, "inputPersistance"), "deleteAll_1", [l_abe_client_information])
        jr.call(this, "save_1", [l_abe_client_information])
    jr.JNull
}

fn c1_m16__save(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_abe_client_information] = jargs
        jr.call(jr.get_field(this, "inputPersistance"), "save_2", [l_abe_client_information, jr.call(jr.call(this, "getInputMapping_0", []), "getHashtable_0", [])])
        jr.call(jr.get_field(this, "inputMappingEvent"), "setInputToGameKeyMapping_1", [jr.call(this, "getInputMapping_0", [])])
        case jr.truth(jr.ne(jr.call(this, "getInputMappingEventListenerInterface_0", []), jr.JNull)) {
            True -> {
            jr.call(jr.call(this, "getInputMappingEventListenerInterface_0", []), "onInputMappingEvent_1", [jr.get_field(this, "inputMappingEvent")])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m17__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_abe_client_information] = jargs
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.get_field(jr.get_field(this, "commonStrings"), "START"), this, jr.get_field(jr.get_field(this, "commonStrings"), "INIT")])
        jr.try_catch(fn() {
            jr.call(jr.get_field(this, "inputPersistance"), "loadAll_1", [l_abe_client_information])
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call_static("PreLogUtil", "putOE_4", [jr.get_field(jr.get_field(this, "commonStrings"), "EXCEPTION"), this, jr.get_field(jr.get_field(this, "commonStrings"), "INIT"), l_e])
            jr.call(jr.get_field(this, "inputPersistance"), "deleteRecoreStore_1", [l_abe_client_information])
            jr.call(this, "setDefault_1", [l_abe_client_information])
            jr.call(jr.get_field(this, "inputPersistance"), "loadAll_1", [l_abe_client_information])
            Nil
        } })], fn() { Nil })
        let l_list = jr.call(jr.get_field(this, "inputPersistance"), "getList_0", [])
        let l_total_mapped_to = jr.cell(jr.as_i(jr.JInt(0)))
        let l_size = jr.as_i(jr.call(l_list, "size_0", []))
        let l_hashtable = jr.cell(jr.JNull)
        let l_enumeration = jr.cell(jr.JNull)
        let l_mapped_to_input = jr.cell(jr.JNull)
        let l_game_action_input = jr.cell(jr.JNull)
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.set(l_hashtable, jr.aget(jr.get_field(l_list, "objectArray"), jr.get(l_index)))
            jr.set(l_enumeration, jr.call(jr.get(l_hashtable), "keys_0", []))
            jr.while_loop("", fn() { jr.call(jr.get_field(this, "enumerationUtil"), "hasMoreElements_1", [jr.get(l_enumeration)]) }, fn() {
                jr.set(l_mapped_to_input, jr.call(jr.get_field(this, "enumerationUtil"), "nextElement_1", [jr.get(l_enumeration)]))
                jr.set(l_game_action_input, jr.call(jr.get(l_hashtable), "get_1", [jr.get(l_mapped_to_input)]))
                jr.incr(fn() { jr.get(l_total_mapped_to) }, fn(jv) { jr.set(l_total_mapped_to, jv) }, 1, True)
                jr.call(jr.call(this, "getInputMapping_0", []), "add_2", [jr.get(l_game_action_input), jr.get(l_mapped_to_input)])
                Nil
            })
            Nil
        })
            Nil
        }
        let l_string_buffer = jr.new("StringMaker", [])
        jr.call(l_string_buffer, "append_1", [jr.JStr("End - Total Loaded Keys Mapped: ")])
        jr.call(l_string_buffer, "appendint_1", [jr.call(this, "getTotalMapped_0", [])])
        jr.call(l_string_buffer, "append_1", [jr.JStr(" to: ")])
        jr.call(l_string_buffer, "appendint_1", [jr.get(l_total_mapped_to)])
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(l_string_buffer, "toString_0", []), this, jr.get_field(jr.get_field(this, "commonStrings"), "INIT")])
    jr.JNull
}

fn c1_m18__setinputmappingeventlistenerinterface(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_input_mapping_event_listener_interface] = jargs
        jr.set_field(this, "inputMappingEventListenerInterface", l_input_mapping_event_listener_interface)
    jr.JNull
}

fn c1_m19__getinputmappingeventlistenerinterface(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "inputMappingEventListenerInterface")
}

fn c1_m20__getinputmapping(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "inputMapping")
}

fn c1_m21__isdelete(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_input] = jargs
        jr.throw(jr.new("Exception", [jr.get_field(jr.get_field(this, "commonStrings"), "NOT_IMPLEMENTED")]))
    jr.JNull
}

fn c1_m22__issysteminput(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_input] = jargs
        jr.throw(jr.new("Exception", [jr.get_field(jr.get_field(this, "commonStrings"), "NOT_IMPLEMENTED")]))
    jr.JNull
}

fn c1_jinit9(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_name] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "inputPersistance", jr.new("InputPersistance", [l_name]))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "PersistentInputMapping",
        "org.allbinary.game.input.mapping.PersistentInputMapping",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull), #("commonStrings", jr.JNull), #("enumerationUtil", jr.JNull), #("inputMapping", jr.JNull), #("inputMappingEventListenerInterface", jr.JNull), #("inputPersistance", jr.JNull), #("inputMappingEvent", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getNullInstance_0", [], True, c1_m2__getnullinstance), 
            jr.Method("getTotalMapped_0", [], False, c1_m10__gettotalmapped), 
            jr.Method("isDefaultNew_0", [], False, c1_m11__isdefaultnew), 
            jr.Method("getDefault_0", [], False, c1_m12__getdefault), 
            jr.Method("setDefault_1", ["AbeClientInformationInterface"], False, c1_m13__setdefault), 
            jr.Method("update_1", ["AbeClientInformationInterface"], False, c1_m14__update), 
            jr.Method("save_1", ["AbeClientInformationInterface"], False, c1_m16__save), 
            jr.Method("init_1", ["AbeClientInformationInterface"], False, c1_m17__init), 
            jr.Method("setInputMappingEventListenerInterface_1", ["InputMappingEventListenerInterface"], False, c1_m18__setinputmappingeventlistenerinterface), 
            jr.Method("getInputMappingEventListenerInterface_0", [], False, c1_m19__getinputmappingeventlistenerinterface), 
            jr.Method("getInputMapping_0", [], False, c1_m20__getinputmapping), 
            jr.Method("isDelete_1", ["Input"], False, c1_m21__isdelete), 
            jr.Method("isSystemInput_1", ["Input"], False, c1_m22__issysteminput), 
            jr.Method("jinit_1", ["String"], False, c1_jinit9)],
        c1_jfields,
        c1_jclinit,
    )
}

