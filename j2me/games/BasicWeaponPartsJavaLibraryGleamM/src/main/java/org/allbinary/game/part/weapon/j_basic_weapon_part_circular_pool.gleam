// Generated Code Do Not Modify
// package org.allbinary.game.part.weapon
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BasicWeaponPartCircularPool

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "basicWeaponPart", jr.get_static("BasicWeaponPart", "NULL_BASIC_WEAPON_PART"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("BasicWeaponPartCircularPool", "NULL_BASIC_WEAPON_PART_CIRCULAR_POOL", jr.new("BasicWeaponPartCircularPool", []))
    jr.JNull
}

fn c1_m3__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_basic_weapon_part_factory_interface] = jargs
        jr.set_field(this, "basicWeaponPart", jr.call(l_basic_weapon_part_factory_interface, "getInstance_0", []))
    jr.JNull
}

fn c1_m4__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_source_layer_interface, l_weapon_properties, l_scoreable_interface, l_relative_relationship] = jargs
        jr.call(jr.get_field(this, "basicWeaponPart"), "init_4", [l_source_layer_interface, l_weapon_properties, l_scoreable_interface, l_relative_relationship])
    jr.get_field(this, "basicWeaponPart")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "BasicWeaponPartCircularPool",
        "org.allbinary.game.part.weapon.BasicWeaponPartCircularPool",
        "Object",
        [],
        False,
        [#("basicWeaponPart", jr.JNull)],
        [#("NULL_BASIC_WEAPON_PART_CIRCULAR_POOL", jr.JNull)],
        [
            jr.Method("init_1", ["BasicWeaponPartFactoryInterface"], False, c1_m3__init), 
            jr.Method("getInstance_4", ["AllBinaryLayer", "WeaponProperties", "ScoreableInterface", "RelativeRelationship"], False, c1_m4__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

