// Generated Code Do Not Modify
// package org.allbinary.game.layer.weapon
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class WeaponLayerArrayLayerCircularStaticPool

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "MAX", jr.as_i(jr.JInt(5)))
    jr.set_field(this, "circularIndexUtil", jr.call_static("CircularIndexUtil", "createInstance_1", [jr.get_field(this, "MAX")]))
    jr.set_field(this, "WEAPONLAYER_ARRAY", jr.new_array("L", 2, [jr.mul(jr.get_field(this, "MAX"), jr.JInt(2))]))
    jr.set_field(this, "TWO_WEAPONLAYER_ARRAY", jr.new_array("L", 2, [jr.get_field(this, "MAX")]))
    jr.set_field(this, "THREE_WEAPONLAYER_ARRAY", jr.new_array("L", 2, [jr.get_field(this, "MAX")]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("WeaponLayerArrayLayerCircularStaticPool", "instance", jr.new("WeaponLayerArrayLayerCircularStaticPool", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("WeaponLayerArrayLayerCircularStaticPool", "instance")
}

fn c1_m8__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), jr.get_field(this, "MAX")) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.aset(jr.get_field(this, "WEAPONLAYER_ARRAY"), jr.get(l_index), jr.new_array("L", 1, [jr.JInt(1)]))
            jr.aset(jr.get_field(this, "TWO_WEAPONLAYER_ARRAY"), jr.get(l_index), jr.new_array("L", 1, [jr.JInt(2)]))
            jr.aset(jr.get_field(this, "THREE_WEAPONLAYER_ARRAY"), jr.get(l_index), jr.new_array("L", 1, [jr.JInt(3)]))
            Nil
        })
            Nil
        }
        jr.set_field(this, "WEAPONLAYER_ARRAY", jr.get_field(this, "WEAPONLAYER_ARRAY"))
        jr.set_field(this, "TWO_WEAPONLAYER_ARRAY", jr.get_field(this, "TWO_WEAPONLAYER_ARRAY"))
        jr.set_field(this, "THREE_WEAPONLAYER_ARRAY", jr.get_field(this, "THREE_WEAPONLAYER_ARRAY"))
    jr.JNull
}

fn c1_m9__getweaponlayerarrays(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_size] = jargs
    let l_size = jr.as_i(l_size)
    jr.method(fn() {
            case jr.truth(jr.eq(l_size, jr.JInt(1))) {
            True -> {
            jr.ret(jr.get_field(this, "WEAPONLAYER_ARRAY"))
            Nil
        }
            False -> case jr.truth(jr.eq(l_size, jr.JInt(2))) {
            True -> {
            jr.ret(jr.get_field(this, "TWO_WEAPONLAYER_ARRAY"))
            Nil
        }
            False -> case jr.truth(jr.eq(l_size, jr.JInt(3))) {
            True -> {
            jr.ret(jr.get_field(this, "THREE_WEAPONLAYER_ARRAY"))
            Nil
        }
            False -> Nil
        }
        }
        }
            jr.throw(jr.new("RuntimeException", []))
        jr.JNull
    })
}

fn c1_m10__getinstancearray(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_size] = jargs
    let l_size = jr.as_i(l_size)
        let l_weapon_layer_array = jr.aget(jr.call(this, "getWeaponLayerArrays_1", [l_size]), jr.call(jr.get_field(this, "circularIndexUtil"), "getIndex_0", []))
        jr.call(jr.get_field(this, "circularIndexUtil"), "next_0", [])
    l_weapon_layer_array
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "WeaponLayerArrayLayerCircularStaticPool",
        "org.allbinary.game.layer.weapon.WeaponLayerArrayLayerCircularStaticPool",
        "Object",
        [],
        False,
        [#("MAX", jr.JInt(0)), #("circularIndexUtil", jr.JNull), #("WEAPONLAYER_ARRAY", jr.JNull), #("TWO_WEAPONLAYER_ARRAY", jr.JNull), #("THREE_WEAPONLAYER_ARRAY", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("init_0", [], False, c1_m8__init), 
            jr.Method("getWeaponLayerArrays_1", ["int"], False, c1_m9__getweaponlayerarrays), 
            jr.Method("getInstanceArray_1", ["int"], False, c1_m10__getinstancearray), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

