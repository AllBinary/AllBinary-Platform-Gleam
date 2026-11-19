// Generated Code Do Not Modify
// package org.allbinary.game.input.mapping
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class InputMapping

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "commonStrings", jr.call_static("CommonStrings", "getInstance_0", []))
    jr.set_field(this, "hashtable", jr.call(jr.call_static("StdUtil", "getInstance_0", []), "createHashtable_0", []))
    jr.set_field(this, "mappedList", jr.new("BasicArrayListD", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m6__gettotalmapped(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.call(jr.get_field(this, "hashtable"), "size_0", []))
}

fn c1_m7__isdefaultnew(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JBool(False)
}

fn c1_m8__getdefault(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call_static("InputToGameKeyMapping", "getNullInstance_0", [])
}

fn c1_m9__removeall(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "hashtable"), "clear_0", [])
        jr.call(jr.get_field(this, "mappedList"), "clear_0", [])
    jr.JNull
}

fn c1_m10__remove(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_input, l_mapped_to_input] = jargs
        let l_string_buffer = jr.new("StringMaker", [])
        let l_string_util = jr.call_static("StringUtil", "getInstance_0", [])
        jr.call(l_string_buffer, "append_1", [jr.get_field(jr.call_static("CommonLabels", "getInstance_0", []), "START_LABEL")])
        jr.call(l_string_buffer, "append_1", [jr.call(l_string_util, "toString_1", [l_input])])
        jr.call(l_string_buffer, "append_1", [jr.JStr(" == ")])
        jr.call(l_string_buffer, "append_1", [jr.call(l_string_util, "toString_1", [l_mapped_to_input])])
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(l_string_buffer, "toString_0", []), this, jr.JStr("InputMapping::remove")])
        let l_list = jr.call(this, "getMappedInput_1", [l_input])
        case jr.truth(jr.call(l_list, "contains_1", [l_mapped_to_input])) {
            True -> {
            jr.call(l_list, "remove_1", [l_mapped_to_input])
            jr.call(jr.get_field(this, "mappedList"), "remove_1", [l_mapped_to_input])
            jr.call(l_string_buffer, "delete_2", [jr.JInt(0), jr.call(l_string_buffer, "length_0", [])])
            jr.call(l_string_buffer, "append_1", [jr.JStr("Removed: ")])
            jr.call(l_string_buffer, "append_1", [jr.call(l_string_util, "toString_1", [l_input])])
            jr.call(l_string_buffer, "append_1", [jr.JStr(" == ")])
            jr.call(l_string_buffer, "append_1", [jr.call(l_string_util, "toString_1", [l_mapped_to_input])])
            jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(l_string_buffer, "toString_0", []), this, jr.JStr("InputMapping::remove")])
            Nil
        }
            False -> {
            jr.call(l_string_buffer, "delete_2", [jr.JInt(0), jr.call(l_string_buffer, "length_0", [])])
            jr.call(l_string_buffer, "append_1", [jr.JStr("Not Deleted: ")])
            jr.call(l_string_buffer, "append_1", [jr.call(l_string_util, "toString_1", [l_input])])
            jr.call(l_string_buffer, "append_1", [jr.JStr(" == ")])
            jr.call(l_string_buffer, "append_1", [jr.call(l_string_util, "toString_1", [l_mapped_to_input])])
            jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(l_string_buffer, "toString_0", []), this, jr.JStr("InputMapping::remove")])
            Nil
        }
        }
    jr.JNull
}

fn c1_m11__addmapping(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_input_to_game_key_mapping] = jargs
        jr.throw(jr.new("Exception", [jr.get_field(jr.get_field(this, "commonStrings"), "NOT_IMPLEMENTED")]))
    jr.JNull
}

fn c1_m12__add(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_input, l_mapped_to_input] = jargs
        let l_list = jr.call(this, "getMappedInput_1", [l_input])
        case jr.truth(jr.not(jr.call(l_list, "contains_1", [l_mapped_to_input]))) {
            True -> {
            jr.call(l_list, "add_1", [l_mapped_to_input])
            jr.call(jr.get_field(this, "mappedList"), "add_1", [l_mapped_to_input])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m13__ismapped(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_input] = jargs
    jr.call(jr.get_field(this, "mappedList"), "contains_1", [l_input])
}

fn c1_m14__getmappedinput(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_id] = jargs
    jr.method(fn() {
            let l_mapping_input_can_be_null_list = jr.call(jr.get_field(this, "hashtable"), "get_1", [l_id])
            case jr.truth(jr.eq(l_mapping_input_can_be_null_list, jr.JNull)) {
            True -> {
            let l_list = jr.new("BasicArrayListD", [])
            jr.call(jr.get_field(this, "hashtable"), "put_2", [l_id, l_list])
            jr.ret(l_list)
            Nil
        }
            False -> Nil
        }
            jr.ret(l_mapping_input_can_be_null_list)
        jr.JNull
    })
}

fn c1_m15__gethashtable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "hashtable")
}

fn c1_jinit5(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "InputMapping",
        "org.allbinary.game.input.mapping.InputMapping",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull), #("commonStrings", jr.JNull), #("hashtable", jr.JNull), #("mappedList", jr.JNull)],
        [],
        [
            jr.Method("getTotalMapped_0", [], False, c1_m6__gettotalmapped), 
            jr.Method("isDefaultNew_0", [], False, c1_m7__isdefaultnew), 
            jr.Method("getDefault_0", [], False, c1_m8__getdefault), 
            jr.Method("removeAll_0", [], False, c1_m9__removeall), 
            jr.Method("remove_2", ["Input", "Input"], False, c1_m10__remove), 
            jr.Method("addMapping_1", ["InputToGameKeyMapping"], False, c1_m11__addmapping), 
            jr.Method("add_2", ["Input", "Input"], False, c1_m12__add), 
            jr.Method("isMapped_1", ["Input"], False, c1_m13__ismapped), 
            jr.Method("getMappedInput_1", ["Input"], False, c1_m14__getmappedinput), 
            jr.Method("getHashtable_0", [], False, c1_m15__gethashtable), 
            jr.Method("jinit_0", [], False, c1_jinit5)],
        c1_jfields,
        c1_jclinit,
    )
}

