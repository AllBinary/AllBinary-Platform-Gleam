// Generated Code Do Not Modify
// package org.allbinary.util
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ArrayUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "mathUtil", jr.call_static("MathUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("ArrayUtil", "instance", jr.new("ArrayUtil", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("ArrayUtil", "instance")
}

fn c1_m4__copyof(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_original, l_new_length] = jargs
    let l_new_length = jr.as_i(l_new_length)
    jr.call(this, "copyOfType_3", [l_original, l_new_length, jr.call(l_original, "getClass_0", [])])
}

fn c1_m5__copyoftype(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_original, l_new_length, l_new_type] = jargs
    let l_new_length = jr.as_i(l_new_length)
        let l_copy = jr.new_array("L", 1, [l_new_length])
        jr.call_static("System", "arraycopy_5", [l_original, jr.JInt(0), l_copy, jr.JInt(0), jr.call(jr.get_field(this, "mathUtil"), "min_2", [jr.alen(l_original), l_new_length])])
    l_copy
}

fn c1_m6__copyofbyte(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_original, l_new_length] = jargs
    let l_new_length = jr.as_i(l_new_length)
        let l_copy = jr.new_array("B", 1, [l_new_length])
        jr.call_static("System", "arraycopy_5", [l_original, jr.JInt(0), l_copy, jr.JInt(0), jr.call(jr.get_field(this, "mathUtil"), "min_2", [jr.alen(l_original), l_new_length])])
    l_copy
}

fn c1_m7__copyofshort(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_original, l_new_length] = jargs
    let l_new_length = jr.as_i(l_new_length)
        let l_copy = jr.new_array("S", 1, [l_new_length])
        jr.call_static("System", "arraycopy_5", [l_original, jr.JInt(0), l_copy, jr.JInt(0), jr.call(jr.get_field(this, "mathUtil"), "min_2", [jr.alen(l_original), l_new_length])])
    l_copy
}

fn c1_m8__copyofint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_original, l_new_length] = jargs
    let l_new_length = jr.as_i(l_new_length)
        let l_copy = jr.new_array("I", 1, [l_new_length])
        jr.call_static("System", "arraycopy_5", [l_original, jr.JInt(0), l_copy, jr.JInt(0), jr.call(jr.get_field(this, "mathUtil"), "min_2", [jr.alen(l_original), l_new_length])])
    l_copy
}

fn c1_m9__copyoflong(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_original, l_new_length] = jargs
    let l_new_length = jr.as_i(l_new_length)
        let l_copy = jr.new_array("J", 1, [l_new_length])
        jr.call_static("System", "arraycopy_5", [l_original, jr.JInt(0), l_copy, jr.JInt(0), jr.call(jr.get_field(this, "mathUtil"), "min_2", [jr.alen(l_original), l_new_length])])
    l_copy
}

fn c1_m10__copyofchar(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_original, l_new_length] = jargs
    let l_new_length = jr.as_i(l_new_length)
        let l_copy = jr.new_array("C", 1, [l_new_length])
        jr.call_static("System", "arraycopy_5", [l_original, jr.JInt(0), l_copy, jr.JInt(0), jr.call(jr.get_field(this, "mathUtil"), "min_2", [jr.alen(l_original), l_new_length])])
    l_copy
}

fn c1_m11__copyoffloat(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_original, l_new_length] = jargs
    let l_new_length = jr.as_i(l_new_length)
        let l_copy = jr.new_array("F", 1, [l_new_length])
        jr.call_static("System", "arraycopy_5", [l_original, jr.JInt(0), l_copy, jr.JInt(0), jr.call(jr.get_field(this, "mathUtil"), "min_2", [jr.alen(l_original), l_new_length])])
    l_copy
}

fn c1_m12__copyofdouble(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_original, l_new_length] = jargs
    let l_new_length = jr.as_i(l_new_length)
        let l_copy = jr.new_array("D", 1, [l_new_length])
        jr.call_static("System", "arraycopy_5", [l_original, jr.JInt(0), l_copy, jr.JInt(0), jr.call(jr.get_field(this, "mathUtil"), "min_2", [jr.alen(l_original), l_new_length])])
    l_copy
}

fn c1_m13__copyofboolean(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_original, l_new_length] = jargs
    let l_new_length = jr.as_i(l_new_length)
        let l_copy = jr.new_array("Z", 1, [l_new_length])
        jr.call_static("System", "arraycopy_5", [l_original, jr.JInt(0), l_copy, jr.JInt(0), jr.call(jr.get_field(this, "mathUtil"), "min_2", [jr.alen(l_original), l_new_length])])
    l_copy
}

fn c1_m14__reverse(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_int_array] = jargs
        let l_length = jr.as_i(jr.sub(jr.alen(l_int_array), jr.JInt(1)))
        let l_temp = jr.cell(jr.as_i(jr.JInt(0)))
        let l_size = jr.as_i(jr.div(l_length, jr.JInt(2)))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.le(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.set(l_temp, jr.as_i(jr.aget(l_int_array, jr.get(l_index))))
            jr.aset(l_int_array, jr.get(l_index), jr.as_i(jr.aget(l_int_array, jr.sub(l_length, jr.get(l_index)))))
            jr.aset(l_int_array, jr.sub(l_length, jr.get(l_index)), jr.as_i(jr.get(l_temp)))
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_m15__flip(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_int_array, l_width, l_height] = jargs
    let l_width = jr.as_i(l_width)
    let l_height = jr.as_i(l_height)
        let l_length = jr.as_i(jr.sub(l_height, jr.JInt(1)))
        let l_temp = jr.cell(jr.as_i(jr.JInt(0)))
        let l_index = jr.cell(jr.as_i(jr.JInt(0)))
        let l_row_index = jr.cell(jr.as_i(jr.JInt(0)))
        {
            let l_y = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.le(jr.get(l_y), jr.div(l_length, jr.JInt(2))) }, fn() { jr.incr(fn() { jr.get(l_y) }, fn(jv) { jr.set(l_y, jv) }, 1, True) Nil }, fn() {
            {
                let l_x = jr.cell(jr.as_i(jr.JInt(0)))
                jr.for_loop("", fn() { jr.lt(jr.get(l_x), l_width) }, fn() { jr.incr(fn() { jr.get(l_x) }, fn(jv) { jr.set(l_x, jv) }, 1, True) Nil }, fn() {
                jr.set(l_row_index, jr.as_i(jr.mul(jr.sub(l_length, jr.get(l_y)), l_width)))
                jr.set(l_index, jr.as_i(jr.add(jr.get(l_x), jr.mul(jr.get(l_y), l_width))))
                jr.set(l_temp, jr.as_i(jr.aget(l_int_array, jr.get(l_index))))
                jr.aset(l_int_array, jr.get(l_index), jr.as_i(jr.aget(l_int_array, jr.add(jr.get(l_row_index), jr.get(l_x)))))
                jr.aset(l_int_array, jr.add(jr.get(l_row_index), jr.get(l_x)), jr.as_i(jr.get(l_temp)))
                Nil
            })
                Nil
            }
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_m16__tostringfromtwodimensionaarray(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_two_dimensional_int_array] = jargs
        let l_string_buffer = jr.new("StringMaker", [])
        let l_common_seps = jr.call_static("CommonSeps", "getInstance_0", [])
        let l_end_index = jr.as_i(jr.alen(l_two_dimensional_int_array))
        let l_end_index2 = jr.as_i(jr.alen(jr.aget(l_two_dimensional_int_array, jr.JInt(0))))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_end_index) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.call(l_string_buffer, "append_1", [jr.get_field(l_common_seps, "BRACE_OPEN")])
            {
                let l_index2 = jr.cell(jr.as_i(jr.JInt(0)))
                jr.for_loop("", fn() { jr.lt(jr.get(l_index2), l_end_index2) }, fn() { jr.incr(fn() { jr.get(l_index2) }, fn(jv) { jr.set(l_index2, jv) }, 1, True) Nil }, fn() {
                jr.call(l_string_buffer, "appendint_1", [jr.to_i(jr.aget(jr.aget(l_two_dimensional_int_array, jr.get(l_index)), jr.get(l_index2)))])
                jr.call(l_string_buffer, "append_1", [jr.get_field(l_common_seps, "COMMA_SEP")])
                Nil
            })
                Nil
            }
            jr.call(l_string_buffer, "append_1", [jr.get_field(l_common_seps, "BRACE_CLOSE")])
            jr.call(l_string_buffer, "append_1", [jr.get_field(l_common_seps, "NEW_LINE")])
            Nil
        })
            Nil
        }
    jr.call(l_string_buffer, "toString_0", [])
}

fn c1_m17__tostringfromobjectarray(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_object_array] = jargs
        let l_string_buffer = jr.new("StringMaker", [])
        let l_common_seps = jr.call_static("CommonSeps", "getInstance_0", [])
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), jr.alen(l_object_array)) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.call(l_string_buffer, "append_1", [jr.call(jr.call_static("StringUtil", "getInstance_0", []), "toString_1", [jr.aget(l_object_array, jr.get(l_index))])])
            jr.call(l_string_buffer, "append_1", [jr.get_field(l_common_seps, "COMMA_SEP")])
            Nil
        })
            Nil
        }
    jr.call(l_string_buffer, "toString_0", [])
}

fn c1_m18__tostringfrombytearray(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_byte_array] = jargs
        let l_string_buffer = jr.new("StringMaker", [])
        let l_common_seps = jr.call_static("CommonSeps", "getInstance_0", [])
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), jr.alen(l_byte_array)) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.call(l_string_buffer, "appendbyte_1", [jr.aget(l_byte_array, jr.get(l_index))])
            jr.call(l_string_buffer, "append_1", [jr.get_field(l_common_seps, "COMMA_SEP")])
            Nil
        })
            Nil
        }
    jr.call(l_string_buffer, "toString_0", [])
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ArrayUtil",
        "org.allbinary.util.ArrayUtil",
        "Object",
        [],
        False,
        [#("mathUtil", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("copyOf_2", ["ObjectArr", "int"], False, c1_m4__copyof), 
            jr.Method("copyOfType_3", ["ObjectArr", "int", "Class"], False, c1_m5__copyoftype), 
            jr.Method("copyOfbyte_2", ["byteArr", "int"], False, c1_m6__copyofbyte), 
            jr.Method("copyOfshort_2", ["shortArr", "int"], False, c1_m7__copyofshort), 
            jr.Method("copyOfint_2", ["intArr", "int"], False, c1_m8__copyofint), 
            jr.Method("copyOflong_2", ["longArr", "int"], False, c1_m9__copyoflong), 
            jr.Method("copyOfchar_2", ["charArr", "int"], False, c1_m10__copyofchar), 
            jr.Method("copyOffloat_2", ["floatArr", "int"], False, c1_m11__copyoffloat), 
            jr.Method("copyOfdouble_2", ["doubleArr", "int"], False, c1_m12__copyofdouble), 
            jr.Method("copyOfboolean_2", ["booleanArr", "int"], False, c1_m13__copyofboolean), 
            jr.Method("reverse_1", ["intArr"], False, c1_m14__reverse), 
            jr.Method("flip_3", ["intArr", "int", "int"], False, c1_m15__flip), 
            jr.Method("toStringFromTwoDimensionaArray_1", ["intArrArr"], False, c1_m16__tostringfromtwodimensionaarray), 
            jr.Method("toStringFromObjectArray_1", ["ObjectArr"], False, c1_m17__tostringfromobjectarray), 
            jr.Method("toStringFromByteArray_1", ["byteArr"], False, c1_m18__tostringfrombytearray), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

