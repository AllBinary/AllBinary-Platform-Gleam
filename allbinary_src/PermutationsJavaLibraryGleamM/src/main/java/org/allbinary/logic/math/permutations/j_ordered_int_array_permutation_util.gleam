// Generated Code Do Not Modify
// package org.allbinary.logic.math.permutations
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class OrderedIntArrayPermutationUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "TOTAL_ITERATIONS_TABLE", jr.JStr("Total Iterations: "))
    jr.set_field(this, "FINISHED", jr.JStr("\nFINISHED"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("OrderedIntArrayPermutationUtil", "instance", jr.new("OrderedIntArrayPermutationUtil", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("OrderedIntArrayPermutationUtil", "instance")
}

fn c1_m6__getnext(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_data] = jargs
        let l_length = jr.as_i(jr.alen(l_data))
        let l_i = jr.cell(jr.as_i(jr.sub(l_length, jr.JInt(1))))
        jr.while_loop("", fn() { jr.ge(jr.aget(l_data, jr.sub(jr.get(l_i), jr.JInt(1))), jr.aget(l_data, jr.get(l_i))) }, fn() {
            jr.set(l_i, jr.as_i(jr.sub(jr.get(l_i), jr.JInt(1))))
            Nil
        })
        let l_j = jr.cell(jr.as_i(l_length))
        jr.while_loop("", fn() { jr.le(jr.aget(l_data, jr.sub(jr.get(l_j), jr.JInt(1))), jr.aget(l_data, jr.sub(jr.get(l_i), jr.JInt(1)))) }, fn() {
            jr.set(l_j, jr.as_i(jr.sub(jr.get(l_j), jr.JInt(1))))
            Nil
        })
        jr.call(this, "swap_3", [l_data, jr.sub(jr.get(l_i), jr.JInt(1)), jr.sub(jr.get(l_j), jr.JInt(1))])
        jr.incr(fn() { jr.get(l_i) }, fn(jv) { jr.set(l_i, jv) }, 1, True)
        jr.set(l_j, jr.as_i(l_length))
        jr.while_loop("", fn() { jr.lt(jr.get(l_i), jr.get(l_j)) }, fn() {
            jr.call(this, "swap_3", [l_data, jr.sub(jr.get(l_i), jr.JInt(1)), jr.sub(jr.get(l_j), jr.JInt(1))])
            jr.incr(fn() { jr.get(l_i) }, fn(jv) { jr.set(l_i, jv) }, 1, True)
            jr.incr(fn() { jr.get(l_j) }, fn(jv) { jr.set(l_j, jv) }, -1, True)
            Nil
        })
    jr.JNull
}

fn c1_m7__swap(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_data, l_a, l_b] = jargs
    let l_a = jr.as_i(l_a)
    let l_b = jr.as_i(l_b)
        let l_temp = jr.as_i(jr.aget(l_data, l_a))
        jr.aset(l_data, l_a, jr.as_i(jr.aget(l_data, l_b)))
        jr.aset(l_data, l_b, jr.as_i(l_temp))
    jr.JNull
}

fn c1_m8__factorial(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_data_length] = jargs
    let l_data_length = jr.as_i(l_data_length)
        let l_temp = jr.cell(jr.as_j(jr.JLong(1)))
        case jr.truth(jr.gt(l_data_length, jr.JInt(1))) {
            True -> {
            {
                let l_i = jr.cell(jr.as_i(jr.JInt(1)))
                jr.for_loop("", fn() { jr.le(jr.get(l_i), l_data_length) }, fn() { jr.incr(fn() { jr.get(l_i) }, fn(jv) { jr.set(l_i, jv) }, 1, True) Nil }, fn() {
                jr.compound(fn() { jr.get(l_temp) }, fn(jv) { jr.mul(jv, jr.to_j(jr.get(l_i))) }, fn(jv) { jr.set(l_temp, jv) })
                Nil
            })
                Nil
            }
            Nil
        }
            False -> Nil
        }
    jr.as_j(jr.get(l_temp))
}

fn c1_m9__generate(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_data, l_visitor] = jargs
        let l_iterations = jr.as_j(jr.call(this, "factorial_1", [jr.alen(l_data)]))
        jr.call(jr.get_static("System", "out"), "print_1", [jr.get_field(this, "TOTAL_ITERATIONS_TABLE")])
        jr.call(jr.get_static("System", "out"), "println_1", [l_iterations])
        {
            let l_count = jr.cell(jr.as_j(jr.JLong(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_count), jr.sub(l_iterations, jr.JLong(1))) }, fn() { jr.incr(fn() { jr.get(l_count) }, fn(jv) { jr.set(l_count, jv) }, 1, True) Nil }, fn() {
            jr.call(this, "getNext_1", [l_data])
            jr.call(l_visitor, "visit_1", [this])
            Nil
        })
            Nil
        }
        jr.call(jr.get_static("System", "out"), "println_1", [jr.get_field(this, "FINISHED")])
    jr.JNull
}

fn c1_m10__main(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_args] = jargs
        let l__t_o_t_a_l = jr.as_i(jr.JInt(3))
        let l_data = jr.new_array("I", 1, [l__t_o_t_a_l])
        {
            let l_i = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_i), l__t_o_t_a_l) }, fn() { jr.incr(fn() { jr.get(l_i) }, fn(jv) { jr.set(l_i, jv) }, 1, True) Nil }, fn() {
            jr.aset(l_data, jr.get(l_i), jr.as_i(jr.get(l_i)))
            Nil
        })
            Nil
        }
        let l_permutation_visitor = jr.new("IntPermutationVisitor", [l_data])
        let l__o_r_i_g_i_n_a_l___d_a_t_a___l_a_b_e_l = jr.JStr("Original Data: ")
        jr.call(jr.get_static("System", "out"), "print_1", [l__o_r_i_g_i_n_a_l___d_a_t_a___l_a_b_e_l])
        jr.call(l_permutation_visitor, "print_2", [l_data, jr.new("StringMaker", [])])
        jr.call(jr.call_static("OrderedIntArrayPermutationUtil", "getInstance_0", []), "generate_2", [l_data, l_permutation_visitor])
    jr.JNull
}

fn c1_jinit5(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "OrderedIntArrayPermutationUtil",
        "org.allbinary.logic.math.permutations.OrderedIntArrayPermutationUtil",
        "Object",
        [],
        False,
        [#("TOTAL_ITERATIONS_TABLE", jr.JNull), #("FINISHED", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("getNext_1", ["intArr"], False, c1_m6__getnext), 
            jr.Method("swap_3", ["intArr", "int", "int"], False, c1_m7__swap), 
            jr.Method("factorial_1", ["int"], False, c1_m8__factorial), 
            jr.Method("generate_2", ["intArr", "Visitor"], False, c1_m9__generate), 
            jr.Method("main_1", ["StringArr"], True, c1_m10__main), 
            jr.Method("jinit_0", [], False, c1_jinit5)],
        c1_jfields,
        c1_jclinit,
    )
}

