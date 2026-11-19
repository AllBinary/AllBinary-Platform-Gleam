// Generated Code Do Not Modify
// package org.allbinary.logic.math
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class PrimitiveLongSingleton

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "UNK", jr.array_of("C", [jr.JChar(85), jr.JChar(110), jr.JChar(107)]))
    jr.set_field(this, "NUMBER_ARRAY", jr.array_of("B", [jr.JInt(0), jr.JInt(1), jr.JInt(2), jr.JInt(3), jr.JInt(4), jr.JInt(5), jr.JInt(6), jr.JInt(7), jr.JInt(8), jr.JInt(9)]))
    jr.set_field(this, "NUMBER_CHAR_ARRAY", jr.array_of("C", [jr.JChar(48), jr.JChar(49), jr.JChar(50), jr.JChar(51), jr.JChar(52), jr.JChar(53), jr.JChar(54), jr.JChar(55), jr.JChar(56), jr.JChar(57)]))
    jr.set_field(this, "NUMBER_CHAR_ARRAYS", jr.array_of("L", [jr.array_of("C", [jr.JChar(48)]), jr.array_of("C", [jr.JChar(49)]), jr.array_of("C", [jr.JChar(50)]), jr.array_of("C", [jr.JChar(51)]), jr.array_of("C", [jr.JChar(52)]), jr.array_of("C", [jr.JChar(53)]), jr.array_of("C", [jr.JChar(54)]), jr.array_of("C", [jr.JChar(55)]), jr.array_of("C", [jr.JChar(56)]), jr.array_of("C", [jr.JChar(57)])]))
    jr.set_field(this, "ZERO", jr.array_of("C", [jr.aget(jr.get_field(this, "NUMBER_CHAR_ARRAY"), jr.JInt(0))]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("PrimitiveLongSingleton", "instance", jr.new("PrimitiveLongSingleton", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("PrimitiveLongSingleton", "instance")
}

fn c1_m8__getnumberfromchar(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_number_as_char] = jargs
    let l_number_as_char = jr.as_c(l_number_as_char)
    jr.method(fn() {
            let l_size = jr.as_i(jr.alen(jr.get_field(this, "NUMBER_CHAR_ARRAY")))
            {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            case jr.truth(jr.eq(jr.aget(jr.get_field(this, "NUMBER_CHAR_ARRAY"), jr.get(l_index)), l_number_as_char)) {
                True -> {
                jr.ret(jr.as_b(jr.aget(jr.get_field(this, "NUMBER_ARRAY"), jr.get(l_index))))
                Nil
            }
                False -> Nil
            }
            Nil
        })
            Nil
        }
            jr.throw(jr.new("Exception", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.JStr("numberAsChar was not in array: ")]), "appendchar_1", [l_number_as_char]), "toString_0", [])]))
        jr.JNull
    })
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "PrimitiveLongSingleton",
        "org.allbinary.logic.math.PrimitiveLongSingleton",
        "Object",
        [],
        False,
        [#("UNK", jr.JNull), #("NUMBER_ARRAY", jr.JNull), #("NUMBER_CHAR_ARRAY", jr.JNull), #("NUMBER_CHAR_ARRAYS", jr.JNull), #("ZERO", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("getNumberFromChar_1", ["char"], False, c1_m8__getnumberfromchar), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

