// Generated Code Do Not Modify
// package org.allbinary.game.part.weapon
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BasicWeaponPart

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "animationInterface", jr.call(jr.call_static("NullAnimationFactory", "getFactoryInstance_0", []), "getInstance_1", [jr.JInt(0)]))
    jr.set_field(this, "ownerLayerInterface", jr.get_static("AllBinaryLayer", "NULL_ALLBINARY_LAYER"))
    jr.set_field(this, "weaponProperties", jr.get_static("WeaponProperties", "NULL_WEAPON_PROPERTIES"))
    jr.set_field(this, "scoreableInterface", jr.call_static("NoScoreable", "getInstance_0", []))
    jr.set_field(this, "relativeRelationship", jr.get_static("RelativeRelationship", "NULL_RELATIVE_RELATIONSHIP"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("BasicWeaponPart", "NULL_BASIC_WEAPON_PART", jr.call_static("BasicWeaponPart", "createBasicWeaponPart_1", [jr.call(jr.call_static("NullAnimationFactory", "getFactoryInstance_0", []), "getInstance_1", [jr.JInt(0)])]))
    jr.JNull
}

fn c1_m1__createbasicweaponpart(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_animation_interface] = jargs
    jr.new("BasicWeaponPart", [l_animation_interface, jr.get_static("AllBinaryLayer", "NULL_ALLBINARY_LAYER"), jr.get_static("WeaponProperties", "NULL_WEAPON_PROPERTIES"), jr.call_static("NoScoreable", "getInstance_0", []), jr.get_static("RelativeRelationship", "NULL_RELATIVE_RELATIONSHIP")])
}

fn c1_m9__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_source_layer_interface, l_weapon_properties, l_scoreable_interface, l_relative_relationship] = jargs
        jr.call(this, "setOwnerLayerInterface_1", [l_source_layer_interface])
        jr.call(this, "setWeaponProperties_1", [l_weapon_properties])
        jr.set_field(this, "scoreableInterface", l_scoreable_interface)
        jr.set_field(this, "relativeRelationship", l_relative_relationship)
    jr.JNull
}

fn c1_m10__process(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_allbinary_layer_manager, l_angle, l_other_angle] = jargs
    let l_angle = jr.as_s(l_angle)
    let l_other_angle = jr.as_s(l_other_angle)
        jr.call(this, "processScore_5", [l_allbinary_layer_manager, l_angle, l_other_angle, jr.call(this, "getWeaponProperties_0", []), jr.get_field(this, "scoreableInterface")])
    jr.JNull
}

fn c1_m11__processscore(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_allbinary_layer_manager, l_angle, l_other_angle, l_weapon_properties, l_scoreable_interface] = jargs
    let l_angle = jr.as_s(l_angle)
    let l_other_angle = jr.as_s(l_other_angle)
        jr.throw(jr.new("Exception", [jr.get_field(jr.call_static("CommonStrings", "getInstance_0", []), "NOT_IMPLEMENTED")]))
    jr.JNull
}

fn c1_m12__getownerlayerinterface(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "ownerLayerInterface")
}

fn c1_m13__setownerlayerinterface(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_owner_layer_interface] = jargs
        jr.set_field(this, "ownerLayerInterface", l_owner_layer_interface)
    jr.JNull
}

fn c1_m14__getanimationinterface(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "animationInterface")
}

fn c1_m15__setanimationinterface(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_animation_interface] = jargs
        jr.set_field(this, "animationInterface", l_animation_interface)
    jr.JNull
}

fn c1_m16__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        let l_view_position = jr.call(jr.call(this, "getOwnerLayerInterface_0", []), "getViewPosition_0", [])
        let l_view_x = jr.as_i(jr.call(l_view_position, "getX_0", []))
        let l_view_y = jr.as_i(jr.call(l_view_position, "getY_0", []))
        jr.call(jr.get_field(this, "animationInterface"), "paintXY_3", [l_graphics, l_view_x, l_view_y])
    jr.JNull
}

fn c1_m17__paintthreed(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
    jr.JNull
}

fn c1_m18__getweaponproperties(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "weaponProperties")
}

fn c1_m19__setweaponproperties(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_weapon_properties] = jargs
        jr.set_field(this, "weaponProperties", l_weapon_properties)
    jr.JNull
}

fn c1_jinit8(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_animation_interface, l_source_layer_interface, l_weapon_properties, l_scoreable_interface, l_relative_relationship] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.call(this, "init_4", [l_source_layer_interface, l_weapon_properties, l_scoreable_interface, l_relative_relationship])
        jr.call(this, "setAnimationInterface_1", [l_animation_interface])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "BasicWeaponPart",
        "org.allbinary.game.part.weapon.BasicWeaponPart",
        "Object",
        ["PartInterface", "SalvoInterface"],
        False,
        [#("animationInterface", jr.JNull), #("ownerLayerInterface", jr.JNull), #("weaponProperties", jr.JNull), #("scoreableInterface", jr.JNull), #("relativeRelationship", jr.JNull)],
        [#("NULL_BASIC_WEAPON_PART", jr.JNull)],
        [
            jr.Method("createBasicWeaponPart_1", ["Animation"], True, c1_m1__createbasicweaponpart), 
            jr.Method("init_4", ["AllBinaryLayer", "WeaponProperties", "ScoreableInterface", "RelativeRelationship"], False, c1_m9__init), 
            jr.Method("process_3", ["AllBinaryLayerManager", "short", "short"], False, c1_m10__process), 
            jr.Method("processScore_5", ["AllBinaryLayerManager", "short", "short", "WeaponProperties", "ScoreableInterface"], False, c1_m11__processscore), 
            jr.Method("getOwnerLayerInterface_0", [], False, c1_m12__getownerlayerinterface), 
            jr.Method("setOwnerLayerInterface_1", ["AllBinaryLayer"], False, c1_m13__setownerlayerinterface), 
            jr.Method("getAnimationInterface_0", [], False, c1_m14__getanimationinterface), 
            jr.Method("setAnimationInterface_1", ["Animation"], False, c1_m15__setanimationinterface), 
            jr.Method("paint_1", ["Graphics"], False, c1_m16__paint), 
            jr.Method("paintThreed_1", ["Graphics"], False, c1_m17__paintthreed), 
            jr.Method("getWeaponProperties_0", [], False, c1_m18__getweaponproperties), 
            jr.Method("setWeaponProperties_1", ["WeaponProperties"], False, c1_m19__setweaponproperties), 
            jr.Method("jinit_5", ["Animation", "AllBinaryLayer", "WeaponProperties", "ScoreableInterface", "RelativeRelationship"], False, c1_jinit8)],
        c1_jfields,
        c1_jclinit,
    )
}

