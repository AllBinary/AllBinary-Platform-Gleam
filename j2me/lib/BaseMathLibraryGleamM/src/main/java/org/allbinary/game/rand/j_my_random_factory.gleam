// Generated Code Do Not Modify
// package org.allbinary.game.rand
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class MyRandomFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "mathUtil", jr.call_static("MathUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("MyRandomFactory", "instance", jr.new("MyRandomFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("MyRandomFactory", "instance")
}

fn c1_m6__setseed(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_seed] = jargs
    let l_seed = jr.as_j(l_seed)
        jr.set_field(this, "rand", jr.new("Random", [l_seed]))
    jr.JNull
}

fn c1_m7__getnextint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_range] = jargs
    let l_range = jr.as_i(l_range)
        let l_div = jr.as_i(jr.add(jr.div(jr.get_static("Integer", "MAX_VALUE"), l_range), jr.JInt(1)))
    jr.as_i(jr.div(jr.call(jr.get_field(this, "rand"), "nextInt_0", []), l_div))
}

fn c1_m8__getabsolutenextint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_range] = jargs
    let l_range = jr.as_i(l_range)
    jr.as_i(jr.call(jr.get_field(this, "mathUtil"), "abs_1", [jr.call(this, "getNextInt_1", [l_range])]))
}

fn c1_m9__getabsolutenextintallowzero(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_range] = jargs
    let l_range = jr.as_i(l_range)
    jr.method(fn() {
            case jr.truth(jr.eq(l_range, jr.JInt(0))) {
            True -> {
            jr.ret(jr.as_i(jr.JInt(0)))
            Nil
        }
            False -> {
            jr.ret(jr.as_i(jr.call(jr.get_field(this, "mathUtil"), "abs_1", [jr.call(this, "getNextInt_1", [l_range])])))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_m10__shuffle(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_int_array] = jargs
        jr.call(this, "shuffleTotal_2", [l_int_array, jr.mul(jr.alen(l_int_array), jr.JInt(7))])
    jr.JNull
}

fn c1_m11__shuffletotal(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_int_array, l_shuffle_total] = jargs
    let l_shuffle_total = jr.as_i(l_shuffle_total)
        let l_size = jr.as_i(jr.alen(l_int_array))
        let l_random_index = jr.cell(jr.as_i(jr.JInt(0)))
        let l_random_index2 = jr.cell(jr.as_i(jr.JInt(0)))
        let l_value = jr.cell(jr.as_i(jr.JInt(0)))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_shuffle_total) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.set(l_random_index, jr.as_i(jr.call(this, "getAbsoluteNextIntAllowZero_1", [l_size])))
            jr.set(l_random_index2, jr.as_i(jr.call(this, "getAbsoluteNextIntAllowZero_1", [l_size])))
            jr.set(l_value, jr.as_i(jr.aget(l_int_array, jr.get(l_random_index))))
            jr.aset(l_int_array, jr.get(l_random_index), jr.as_i(jr.aget(l_int_array, jr.get(l_random_index2))))
            jr.aset(l_int_array, jr.get(l_random_index2), jr.as_i(jr.get(l_value)))
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_m12__shuffle2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_int_array, l_int_array2] = jargs
        jr.call(this, "shuffle2Total_3", [l_int_array, l_int_array2, jr.mul(jr.alen(l_int_array), jr.JInt(7))])
    jr.JNull
}

fn c1_m13__shuffle2total(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_int_array, l_int_array2, l_shuffle_total] = jargs
    let l_shuffle_total = jr.as_i(l_shuffle_total)
        let l_size = jr.as_i(jr.alen(l_int_array))
        let l_random_index = jr.cell(jr.as_i(jr.JInt(0)))
        let l_random_index2 = jr.cell(jr.as_i(jr.JInt(0)))
        let l_value = jr.cell(jr.as_i(jr.JInt(0)))
        let l_value2 = jr.cell(jr.as_i(jr.JInt(0)))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_shuffle_total) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.set(l_random_index, jr.as_i(jr.call(this, "getAbsoluteNextIntAllowZero_1", [l_size])))
            jr.set(l_random_index2, jr.as_i(jr.call(this, "getAbsoluteNextIntAllowZero_1", [l_size])))
            jr.set(l_value, jr.as_i(jr.aget(l_int_array, jr.get(l_random_index))))
            jr.set(l_value2, jr.as_i(jr.aget(l_int_array2, jr.get(l_random_index))))
            jr.aset(l_int_array, jr.get(l_random_index), jr.as_i(jr.aget(l_int_array, jr.get(l_random_index2))))
            jr.aset(l_int_array, jr.get(l_random_index2), jr.as_i(jr.get(l_value)))
            jr.aset(l_int_array2, jr.get(l_random_index), jr.as_i(jr.aget(l_int_array2, jr.get(l_random_index2))))
            jr.aset(l_int_array2, jr.get(l_random_index2), jr.as_i(jr.get(l_value2)))
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_m14__main(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_args] = jargs
        let l_random_factory = jr.call_static("MyRandomFactory", "getInstance_0", [])
        let l_string_builder = jr.new("StringMaker", [])
        let l_common_seps = jr.call_static("CommonSeps", "getInstance_0", [])
        let l_size2 = jr.as_i(jr.JInt(100))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size2) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.call(jr.call(l_string_builder, "appendint_1", [jr.call(l_random_factory, "getAbsoluteNextInt_1", [jr.JInt(3)])]), "append_1", [jr.get_field(l_common_seps, "COMMA")])
            Nil
        })
            Nil
        }
        jr.call(jr.get_static("System", "out"), "println_1", [jr.call(l_string_builder, "toString_0", [])])
        jr.call(l_string_builder, "delete_2", [jr.JInt(0), jr.call(l_string_builder, "length_0", [])])
        let l_int_array = jr.new_array("I", 1, [jr.JInt(52)])
        let l_int_array2 = jr.new_array("I", 1, [jr.JInt(52)])
        let l_size = jr.as_i(jr.alen(l_int_array))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.aset(l_int_array, jr.get(l_index), jr.as_i(jr.get(l_index)))
            jr.aset(l_int_array2, jr.get(l_index), jr.as_i(jr.get(l_index)))
            Nil
        })
            Nil
        }
        jr.call(l_random_factory, "shuffle2_2", [l_int_array, l_int_array2])
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.call(jr.call(l_string_builder, "appendint_1", [jr.aget(l_int_array, jr.get(l_index))]), "append_1", [jr.get_field(l_common_seps, "COMMA")])
            Nil
        })
            Nil
        }
        jr.call(jr.get_static("System", "out"), "println_1", [jr.call(l_string_builder, "toString_0", [])])
        jr.call(l_string_builder, "delete_2", [jr.JInt(0), jr.call(l_string_builder, "length_0", [])])
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.call(jr.call(l_string_builder, "appendint_1", [jr.aget(l_int_array2, jr.get(l_index))]), "append_1", [jr.get_field(l_common_seps, "COMMA")])
            Nil
        })
            Nil
        }
        jr.call(jr.get_static("System", "out"), "println_1", [jr.call(l_string_builder, "toString_0", [])])
        let l_found = jr.cell(jr.JBool(False))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.set(l_found, jr.JBool(False))
            {
                let l_index2 = jr.cell(jr.as_i(jr.JInt(0)))
                jr.for_loop("", fn() { jr.lt(jr.get(l_index2), l_size) }, fn() { jr.incr(fn() { jr.get(l_index2) }, fn(jv) { jr.set(l_index2, jv) }, 1, True) Nil }, fn() {
                case jr.truth(jr.eq(jr.aget(l_int_array, jr.get(l_index2)), jr.get(l_index))) {
                    True -> {
                    jr.set(l_found, jr.JBool(True))
                    Nil
                }
                    False -> Nil
                }
                Nil
            })
                Nil
            }
            case jr.truth(jr.not(jr.get(l_found))) {
                True -> {
                jr.throw(jr.new("RuntimeException", []))
                Nil
            }
                False -> Nil
            }
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_jinit5(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "rand", jr.new("Random", [jr.call_static("System", "currentTimeMillis_0", [])]))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "MyRandomFactory",
        "org.allbinary.game.rand.MyRandomFactory",
        "Object",
        [],
        False,
        [#("mathUtil", jr.JNull), #("rand", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("setSeed_1", ["long"], False, c1_m6__setseed), 
            jr.Method("getNextInt_1", ["int"], False, c1_m7__getnextint), 
            jr.Method("getAbsoluteNextInt_1", ["int"], False, c1_m8__getabsolutenextint), 
            jr.Method("getAbsoluteNextIntAllowZero_1", ["int"], False, c1_m9__getabsolutenextintallowzero), 
            jr.Method("shuffle_1", ["intArr"], False, c1_m10__shuffle), 
            jr.Method("shuffleTotal_2", ["intArr", "int"], False, c1_m11__shuffletotal), 
            jr.Method("shuffle2_2", ["intArr", "intArr"], False, c1_m12__shuffle2), 
            jr.Method("shuffle2Total_3", ["intArr", "intArr", "int"], False, c1_m13__shuffle2total), 
            jr.Method("main_1", ["StringArr"], True, c1_m14__main), 
            jr.Method("jinit_0", [], False, c1_jinit5)],
        c1_jfields,
        c1_jclinit,
    )
}

