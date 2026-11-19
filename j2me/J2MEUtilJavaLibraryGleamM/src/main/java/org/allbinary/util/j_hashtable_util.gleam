// Generated Code Do Not Modify
// package org.allbinary.util
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class HashtableUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "enumerationUtil", jr.call_static("EnumerationUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("HashtableUtil", "instance", jr.new("HashtableUtil", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("HashtableUtil", "instance")
}

fn c1_m4__putall(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_from_hashtable, l_hashtable] = jargs
        let l_enumeration = jr.call(l_from_hashtable, "keys_0", [])
        let l_key_can_be_null = jr.cell(jr.JNull)
        let l_value_can_be_null = jr.cell(jr.JNull)
        jr.while_loop("", fn() { jr.call(jr.get_field(this, "enumerationUtil"), "hasMoreElements_1", [l_enumeration]) }, fn() {
            jr.set(l_key_can_be_null, jr.call(jr.get_field(this, "enumerationUtil"), "nextElement_1", [l_enumeration]))
            jr.set(l_value_can_be_null, jr.call(l_hashtable, "get_1", [jr.get(l_key_can_be_null)]))
            case jr.truth(jr.eq(jr.get(l_value_can_be_null), jr.JNull)) {
                True -> {
                Nil
            }
                False -> {
                jr.call(l_hashtable, "put_2", [jr.get(l_key_can_be_null), jr.get(l_value_can_be_null)])
                Nil
            }
            }
            Nil
        })
    jr.JNull
}

fn c1_m5__getkeysasarray(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_hashtable] = jargs
        let l_object_array = jr.new_array("L", 1, [jr.call(l_hashtable, "size_0", [])])
        let l_index = jr.cell(jr.as_i(jr.JInt(0)))
        let l_enumeration = jr.call(l_hashtable, "keys_0", [])
        jr.while_loop("", fn() { jr.call(jr.get_field(this, "enumerationUtil"), "hasMoreElements_1", [l_enumeration]) }, fn() {
            jr.aset(l_object_array, jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True), jr.call(jr.get_field(this, "enumerationUtil"), "nextElement_1", [l_enumeration]))
            Nil
        })
    l_object_array
}

fn c1_m6__getkeysaslist(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_hashtable] = jargs
        let l_list = jr.new("BasicArrayListS", [jr.call(l_hashtable, "size_0", [])])
        let l_enumeration = jr.call(l_hashtable, "keys_0", [])
        jr.while_loop("", fn() { jr.call(jr.get_field(this, "enumerationUtil"), "hasMoreElements_1", [l_enumeration]) }, fn() {
            jr.call(l_list, "add_1", [jr.call(jr.get_field(this, "enumerationUtil"), "nextElement_1", [l_enumeration])])
            Nil
        })
    l_list
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "HashtableUtil",
        "org.allbinary.util.HashtableUtil",
        "Object",
        [],
        False,
        [#("enumerationUtil", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("putAll_2", ["ABHashtable", "ABHashtable"], False, c1_m4__putall), 
            jr.Method("getKeysAsArray_1", ["ABHashtable"], False, c1_m5__getkeysasarray), 
            jr.Method("getKeysAsList_1", ["ABHashtable"], False, c1_m6__getkeysaslist), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

