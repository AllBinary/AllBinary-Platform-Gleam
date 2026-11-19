// Generated Code Do Not Modify
// package org.allbinary.game.combat.damage
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class PtsDamageFloaters

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "basicSetColorUtil", jr.call_static("BasicColorSetUtil", "getInstance_0", []))
    jr.set_field(this, "lastDamage", jr.new_array("I", 1, [jr.JInt(5)]))
    jr.set_field(this, "lastDamageString", jr.new_array("C", 2, [jr.JInt(5), jr.JInt(0)]))
    jr.set_field(this, "lastDamageStringSizeArray", jr.new_array("I", 1, [jr.JInt(5)]))
    jr.set_field(this, "circularIndexUtil", jr.call_static("CircularIndexUtil", "createInstance_1", [jr.JInt(5)]))
    jr.set_field(this, "myRandomFactory", jr.call_static("MyRandomFactory", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("PtsDamageFloaters", "basicColorArrayIndexer", jr.new("BasicColorArrayIndexer", [jr.array_of("L", [jr.get_field(jr.call_static("BasicColorFactory", "getInstance_0", []), "WHITE"), jr.get_field(jr.call_static("BasicColorFactory", "getInstance_0", []), "RED"), jr.get_field(jr.call_static("BasicColorFactory", "getInstance_0", []), "YELLOW"), jr.get_field(jr.call_static("BasicColorFactory", "getInstance_0", []), "BLUE")])]))
    jr.JNull
}

fn c1_m10__add(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_damage] = jargs
    let l_damage = jr.as_i(l_damage)
        let l_index = jr.as_i(jr.call(jr.get_field(this, "circularIndexUtil"), "getIndex_0", []))
        jr.aset(jr.get_field(this, "lastDamage"), l_index, jr.as_i(l_damage))
        jr.aset(jr.get_field(this, "lastDamageString"), l_index, jr.call(jr.get_field(this, "primitiveLongUtil"), "getCharArray_1", [jr.aget(jr.get_field(this, "lastDamage"), l_index)]))
        jr.aset(jr.get_field(this, "lastDamageStringSizeArray"), l_index, jr.as_i(jr.call(jr.get_field(this, "primitiveLongUtil"), "getCurrentTotalDigits_0", [])))
        jr.call(jr.get_field(this, "circularIndexUtil"), "next_0", [])
    jr.JNull
}

fn c1_m12__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        let l_view_position = jr.call(jr.get_field(this, "layerInterface"), "getViewPosition_0", [])
        let l_x = jr.as_i(jr.call(l_view_position, "getX_0", []))
        let l_y = jr.as_i(jr.call(l_view_position, "getY_0", []))
        {
            let l_index = jr.cell(jr.as_i(jr.sub(jr.alen(jr.get_field(this, "lastDamage")), jr.JInt(1))))
            jr.for_loop("", fn() { jr.ge(jr.get(l_index), jr.JInt(0)) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, True) Nil }, fn() {
            case jr.truth(jr.ne(jr.aget(jr.get_field(this, "lastDamage"), jr.get(l_index)), jr.JInt(0))) {
                True -> {
                let l_delta = jr.as_i(jr.mul(jr.JInt(10), jr.add(jr.get(l_index), jr.JInt(2))))
                jr.call(jr.get_field(this, "basicSetColorUtil"), "setBasicColorP_2", [l_graphics, jr.call(jr.get_static("PtsDamageFloaters", "basicColorArrayIndexer"), "get_0", [])])
                jr.call(l_graphics, "drawChars_6", [jr.aget(jr.get_field(this, "lastDamageString"), jr.get(l_index)), jr.JInt(0), jr.aget(jr.get_field(this, "lastDamageStringSizeArray"), jr.get(l_index)), jr.sub(l_x, jr.call(jr.get_field(this, "myRandomFactory"), "getNextInt_1", [l_delta])), jr.sub(l_y, l_delta), jr.JInt(0)])
                jr.call(jr.get_static("PtsDamageFloaters", "basicColorArrayIndexer"), "next_0", [])
                Nil
            }
                False -> Nil
            }
            jr.aset(jr.get_field(this, "lastDamage"), jr.get(l_index), jr.as_i(jr.JInt(0)))
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_jinit9(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_interface] = jargs
    jr.super_init("DamageFloaters", this, [])
    c1_jfields(this)
        jr.set_field(this, "primitiveLongUtil", jr.call_static("PrimitiveLongUtil", "createPowerOfTen_1", [jr.JInt(100000)]))
        jr.set_field(this, "layerInterface", l_layer_interface)
        let l__c_h_a_r___a_r_r_a_y = jr.call(jr.call_static("CharArrayFactory", "getInstance_0", []), "getZeroCharArray_0", [])
        {
            let l_index = jr.cell(jr.as_i(jr.sub(jr.alen(jr.get_field(this, "lastDamageString")), jr.JInt(1))))
            jr.for_loop("", fn() { jr.ge(jr.get(l_index), jr.JInt(0)) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, True) Nil }, fn() {
            jr.aset(jr.get_field(this, "lastDamageString"), jr.get(l_index), l__c_h_a_r___a_r_r_a_y)
            Nil
        })
            Nil
        }
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "PtsDamageFloaters",
        "org.allbinary.game.combat.damage.PtsDamageFloaters",
        "DamageFloaters",
        [],
        False,
        [#("basicSetColorUtil", jr.JNull), #("layerInterface", jr.JNull), #("lastDamage", jr.JNull), #("lastDamageString", jr.JNull), #("lastDamageStringSizeArray", jr.JNull), #("circularIndexUtil", jr.JNull), #("primitiveLongUtil", jr.JNull), #("myRandomFactory", jr.JNull)],
        [#("basicColorArrayIndexer", jr.JNull)],
        [
            jr.Method("add_1", ["int"], False, c1_m10__add), 
            jr.Method("paint_1", ["Graphics"], False, c1_m12__paint), 
            jr.Method("jinit_1", ["AllBinaryLayer"], False, c1_jinit9)],
        c1_jfields,
        c1_jclinit,
    )
}

