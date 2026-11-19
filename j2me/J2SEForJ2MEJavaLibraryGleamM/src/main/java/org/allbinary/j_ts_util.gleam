// Generated Code Do Not Modify
// package org.allbinary
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class TsUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("TsUtil", "instance", jr.new("TsUtil", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("TsUtil", "instance")
}

fn c1_m3__longbitstodouble(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_bits] = jargs
    let l_bits = jr.as_j(l_bits)
    jr.as_d(jr.call_static("Double", "longBitsToDouble_1", [l_bits]))
}

fn c1_m4__intbitstofloat(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_bits] = jargs
    let l_bits = jr.as_i(l_bits)
    jr.as_f(jr.call_static("Float", "intBitsToFloat_1", [l_bits]))
}

fn c1_m5__hashcode(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_any_type] = jargs
    jr.as_i(jr.call(l_any_type, "hashCode_0", []))
}

fn c1_m6__waitfor(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_any, l_timeout_millis] = jargs
    let l_timeout_millis = jr.as_j(l_timeout_millis)
        let l_any_type = l_any
        jr.call(l_any_type, "wait_1", [l_timeout_millis])
    jr.JNull
}

fn c1_m7__getrecord(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_any_type, l_record_id] = jargs
    let l_record_id = jr.as_i(l_record_id)
        let l_record_store = l_any_type
        let l_data = jr.cell(jr.JNull)
        {
            jr.set(l_data, jr.new_array("B", 1, [jr.call(l_record_store, "getRecordSize_1", [l_record_id])]))
            jr.call(l_record_store, "getRecord_3", [l_record_id, jr.get(l_data), jr.JInt(0)])
            Nil
        }
    case jr.truth(jr.lt(jr.alen(jr.get(l_data)), jr.JInt(1))) { True -> jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_BYTE_ARRAY") False -> jr.get(l_data) }
}

fn c1_m8__compareto(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_a, l_b] = jargs
    jr.as_i(jr.call(l_a, "compareTo_1", [l_b]))
}

fn c1_m9__equalignorecase(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_a, l_b] = jargs
    jr.call(l_a, "equalsIgnoreCase_1", [l_b])
}

fn c1_m10__equalsnotstring(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_any_type, l_object2] = jargs
    jr.call(l_any_type, "equals_1", [l_object2])
}

fn c1_m11__getclassclassloader(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_any_type] = jargs
    jr.call(jr.call(l_any_type, "getClass_0", []), "getClassLoader_0", [])
}

fn c1_m12__tonumberfromchar(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_value] = jargs
    let l_value = jr.as_c(l_value)
    jr.as_i(jr.to_i(l_value))
}

fn c1_m13__tonumber(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_value] = jargs
    let l_value = jr.as_i(l_value)
    jr.as_i(l_value)
}

fn c1_m14__getbytearray(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_string] = jargs
    jr.call(l_string, "getBytes_0", [])
}

fn c1_m15__isitemlistener(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_owner] = jargs
    jr.method(fn() {
            case jr.truth(jr.instance_of(l_owner, "Form")) {
            True -> {
            jr.ret(jr.JBool(True))
            Nil
        }
            False -> {
            jr.ret(jr.JBool(False))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_m16__gc(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call_static("System", "gc_0", [])
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "TsUtil",
        "org.allbinary.TsUtil",
        "Object",
        [],
        False,
        [],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("longBitsToDouble_1", ["long"], False, c1_m3__longbitstodouble), 
            jr.Method("intBitsToFloat_1", ["int"], False, c1_m4__intbitstofloat), 
            jr.Method("hashCode_1", ["Object"], False, c1_m5__hashcode), 
            jr.Method("waitFor_2", ["Object", "long"], False, c1_m6__waitfor), 
            jr.Method("getRecord_2", ["Object", "int"], False, c1_m7__getrecord), 
            jr.Method("compareTo_2", ["String", "String"], False, c1_m8__compareto), 
            jr.Method("equalIgnoreCase_2", ["String", "String"], False, c1_m9__equalignorecase), 
            jr.Method("equalsNotstring_2", ["Object", "Object"], False, c1_m10__equalsnotstring), 
            jr.Method("getClassClassLoader_1", ["Object"], False, c1_m11__getclassclassloader), 
            jr.Method("toNumberFromChar_1", ["char"], False, c1_m12__tonumberfromchar), 
            jr.Method("toNumber_1", ["int"], False, c1_m13__tonumber), 
            jr.Method("getByteArray_1", ["String"], False, c1_m14__getbytearray), 
            jr.Method("isItemListener_1", ["Displayable"], False, c1_m15__isitemlistener), 
            jr.Method("gc_0", [], False, c1_m16__gc), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

