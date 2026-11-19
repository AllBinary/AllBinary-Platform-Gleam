// Generated Code Do Not Modify
// package org.allbinary.game.layer.weapon
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class WeaponLayer

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "animationInterface", jr.call(jr.call_static("NullAnimationFactory", "getFactoryInstance_0", []), "getInstance_1", [jr.JInt(0)]))
    jr.set_field(this, "sourceLayerInterface", jr.get_static("AllBinaryLayer", "NULL_ALLBINARY_LAYER"))
    jr.set_field(this, "destroyed", jr.JBool(True))
    jr.set_field(this, "scoreableInterface", jr.call_static("NoScoreable", "getInstance_0", []))
    jr.set_field(this, "weaponProperties", jr.get_static("WeaponProperties", "NULL_WEAPON_PROPERTIES"))
    jr.set_field(this, "collidableWeaponBehavior", jr.call_static("CollidableWeaponBehavior", "getNullInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m14__setcollidableinferface(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_collidable_inferface] = jargs
        jr.call_super("MultiPlayerGameLayer", this, "setCollidableInferface_1", [l_collidable_inferface])
        jr.set_field(this, "collidableWeaponBehavior", jr.call_inherited(this, "WeaponLayer", "getCollidableInferface_0", []))
    jr.JNull
}

fn c1_m15__initxyz(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_x, l_y, l_z] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    let l_z = jr.as_i(l_z)
        jr.set_inherited(this, "WeaponLayer", "x", l_x)
        jr.set_inherited(this, "WeaponLayer", "y", l_y)
        jr.set_inherited(this, "WeaponLayer", "z", l_z)
    jr.JNull
}

fn c1_m16__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_source_layer_interface, l_angle, l_other_angle, l_weapon_properties, l_scoreable] = jargs
    let l_angle = jr.as_i(l_angle)
    let l_other_angle = jr.as_i(l_other_angle)
        jr.call(this, "setWeaponPropertiesP_1", [l_weapon_properties])
        jr.call_inherited(this, "WeaponLayer", "setReadyForExplosion_1", [jr.JBool(False)])
        jr.call(this, "setAnimationInterface_1", [jr.call(this, "getInitAnimationInterfaceP_0", [])])
        jr.call(this, "setOwnerLayerInterface_1", [l_source_layer_interface])
        jr.call(jr.get_field(this, "collidableWeaponBehavior"), "init_1", [l_source_layer_interface])
        jr.call(this, "setGroupInterfaces_0", [])
        case jr.truth(jr.ne(l_scoreable, jr.JNull)) {
            True -> {
            jr.set_field(this, "scoreableInterface", l_scoreable)
            Nil
        }
            False -> Nil
        }
        jr.set_field(this, "totalDamage", jr.as_i(jr.JInt(0)))
        jr.set_field(this, "initDamage", jr.as_i(jr.call(l_weapon_properties, "getDamage_0", [])))
        jr.call(this, "setDestroyed_1", [jr.JBool(False)])
        jr.call(jr.get_field(this, "movement"), "init_3", [jr.call(l_weapon_properties, "getSpeed_0", []), l_angle, l_other_angle])
    jr.JNull
}

fn c1_m17__setgroupinterfaces(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_basic_group_factory = jr.call_static("BasicGroupFactory", "getInstance_0", [])
        case jr.truth(jr.eq(jr.aget(jr.call(jr.get_field(this, "sourceLayerInterface"), "getGroupInterface_0", []), jr.JInt(0)), jr.get_field(l_basic_group_factory, "ENEMY"))) {
            True -> {
            jr.call_inherited(this, "WeaponLayer", "setGroupInterface_1", [jr.get_field(l_basic_group_factory, "ENEMY_ARRAY")])
            Nil
        }
            False -> {
            jr.call_inherited(this, "WeaponLayer", "setGroupInterface_1", [jr.call(jr.get_field(this, "sourceLayerInterface"), "getGroupInterface_0", [])])
            Nil
        }
        }
    jr.JNull
}

fn c1_m18__processtick(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_all_binary_layer_manager] = jargs
        case jr.truth(case jr.truth(jr.call(this, "isExhausted_0", [])) { True -> jr.not(jr.call(this, "isDestroyed_0", [])) False -> jr.JBool(False) }) {
            True -> {
            case jr.truth(jr.call_inherited(this, "WeaponLayer", "isReadyForExplosion_0", [])) {
                True -> {
                let l_indexed_animation_interface = jr.call(this, "getAnimationInterface_0", [])
                let l_current_frame = jr.as_i(jr.call(l_indexed_animation_interface, "getFrame_0", []))
                case jr.truth(jr.lt(l_current_frame, jr.sub(jr.call(l_indexed_animation_interface, "getAnimationSize_0", []), jr.JInt(1)))) {
                    True -> {
                    jr.call(l_indexed_animation_interface, "nextFrame_0", [])
                    Nil
                }
                    False -> {
                    jr.call(this, "setDestroyed_1", [jr.JBool(True)])
                    Nil
                }
                }
                Nil
            }
                False -> {
                let l_collidable_weapon_behavior = jr.call_inherited(this, "WeaponLayer", "getCollidableInferface_0", [])
                case jr.truth(jr.call(l_collidable_weapon_behavior, "isCollided_0", [])) {
                    True -> {
                    jr.call(this, "setAnimationInterface_1", [jr.get_field(this, "destroyedAnimationInterface")])
                    jr.call(jr.call(this, "getMovement_0", []), "stop_0", [])
                    jr.call_inherited(this, "WeaponLayer", "setReadyForExplosion_1", [jr.JBool(True)])
                    Nil
                }
                    False -> {
                    jr.call(this, "setDestroyed_1", [jr.JBool(True)])
                    Nil
                }
                }
                Nil
            }
            }
            Nil
        }
            False -> Nil
        }
        jr.call(jr.get_field(this, "movement"), "process_1", [this])
        jr.compound(fn() { jr.get_field(this, "totalDamage") }, fn(jv) { jr.add(jv, jr.to_i(jr.call(jr.get_field(this, "weaponProperties"), "getDissipation_0", []))) }, fn(jv) { jr.set_field(this, "totalDamage", jv) })
    jr.JNull
}

fn c1_m19__isdestroyed(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "destroyed")
}

fn c1_m20__damage(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_damage, l_damage_type] = jargs
    let l_damage = jr.as_i(l_damage)
    let l_damage_type = jr.as_i(l_damage_type)
        jr.compound(fn() { jr.get_field(this, "totalDamage") }, fn(jv) { jr.add(jv, jr.mul(l_damage, l_damage)) }, fn(jv) { jr.set_field(this, "totalDamage", jv) })
    jr.JNull
}

fn c1_m21__givepoints(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_total] = jargs
    let l_total = jr.as_i(l_total)
        jr.call(jr.get_field(this, "scoreableInterface"), "addPoints_1", [jr.mul(jr.call(jr.call_static("GameConfigurationUtil", "getInstance_0", []), "getCompetitionValue_0", []), l_total)])
    jr.JNull
}

fn c1_m22__isexhausted(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.method(fn() {
            case jr.truth(case jr.truth(jr.gt(jr.get_field(this, "totalDamage"), jr.call(this, "getInitDamage_0", []))) { True -> jr.JBool(True) False -> jr.lt(jr.get_field(this, "totalDamage"), jr.JInt(0)) }) {
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

fn c1_m23__getdamage(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_damage_type] = jargs
    let l_damage_type = jr.as_i(l_damage_type)
    jr.method(fn() {
            case jr.truth(jr.not(jr.call(this, "isExhausted_0", []))) {
            True -> {
            let l_total = jr.as_i(jr.sub(jr.call(this, "getInitDamage_0", []), jr.get_field(this, "totalDamage")))
            jr.call(this, "givePoints_1", [l_total])
            jr.ret(jr.as_i(l_total))
            Nil
        }
            False -> Nil
        }
            jr.ret(jr.as_i(jr.JInt(0)))
        jr.JNull
    })
}

fn c1_m24__setdestroyed(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_destroyed] = jargs
        jr.set_field(this, "destroyed", l_destroyed)
        case jr.truth(jr.call(this, "isDestroyed_0", [])) {
            True -> {
            jr.set_field(this, "scoreableInterface", jr.call_static("NoScoreable", "getInstance_0", []))
            jr.call(jr.call_static("DestroyedLayerProcessor", "getInstance_0", []), "add_1", [this])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m25__getinitdamage(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "initDamage"))
}

fn c1_m26__setanimationinterface(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_animation_interface] = jargs
        jr.set_field(this, "animationInterface", l_animation_interface)
    jr.JNull
}

fn c1_m27__getanimationinterface(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "animationInterface")
}

fn c1_m28__getinitanimationinterfacep(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "initAnimationInterface")
}

fn c1_m29__setinitanimationinterfacep(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_init_animation_interface] = jargs
        jr.set_field(this, "initAnimationInterface", l_init_animation_interface)
    jr.JNull
}

fn c1_m30__getdestroyedanimationinterface(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "destroyedAnimationInterface")
}

fn c1_m31__getownerlayerinterface(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "sourceLayerInterface")
}

fn c1_m32__setownerlayerinterface(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_source_layer_interface] = jargs
        jr.set_field(this, "sourceLayerInterface", l_source_layer_interface)
    jr.JNull
}

fn c1_m33__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        let l_view_position = jr.call_inherited(this, "WeaponLayer", "getViewPosition_0", [])
        jr.call(jr.get_field(this, "animationInterface"), "paintXY_3", [l_graphics, jr.sub(jr.call(l_view_position, "getX_0", []), jr.call_inherited(this, "WeaponLayer", "getHalfWidth_0", [])), jr.sub(jr.call(l_view_position, "getY_0", []), jr.call_inherited(this, "WeaponLayer", "getHalfHeight_0", []))])
    jr.JNull
}

fn c1_m34__paintthreed(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        let l_view_position = jr.call_inherited(this, "WeaponLayer", "getViewPosition_0", [])
        jr.call(jr.get_field(this, "animationInterface"), "paintThreedXYZ_4", [l_graphics, jr.sub(jr.call(l_view_position, "getX_0", []), jr.call_inherited(this, "WeaponLayer", "getHalfWidth_0", [])), jr.sub(jr.call(l_view_position, "getY_0", []), jr.call_inherited(this, "WeaponLayer", "getHalfHeight_0", [])), jr.sub(jr.call(l_view_position, "getZ_0", []), jr.call_inherited(this, "WeaponLayer", "getHalfDepth_0", []))])
    jr.JNull
}

fn c1_m35__getmovement(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "movement")
}

fn c1_m36__setmovement(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_movement] = jargs
        jr.set_field(this, "movement", l_movement)
    jr.JNull
}

fn c1_m37__gettype(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.call_static("WeaponLayer", "getStaticType_0", []))
}

fn c1_m38__getstatictype(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.JInt(0))
}

fn c1_m39__getmultiplayertype(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "multiPlayerType"))
}

fn c1_m40__setweaponpropertiesp(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_weapon_properties] = jargs
        jr.set_field(this, "weaponProperties", l_weapon_properties)
    jr.JNull
}

fn c1_m41__getweaponpropertiesp(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "weaponProperties")
}

fn c1_m42__implmentstickableinterface(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JBool(True)
}

fn c1_m43__set(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_gl] = jargs
        jr.call(jr.get_field(this, "initAnimationInterface"), "set_1", [l_gl])
    jr.JNull
}

fn c1_jinit12(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_name, l_remote_info, l_multi_player_type, l_movement, l_animation_interface, l_destroyed_animation_interface, l_rectangle, l_view_position] = jargs
    let l_multi_player_type = jr.as_i(l_multi_player_type)
        jr.super_init("MultiPlayerGameLayer", this, [l_remote_info, jr.get_field(jr.call_static("BasicGroupFactory", "getInstance_0", []), "NONE_ARRAY"), l_name, l_rectangle, l_view_position])
        c1_jfields(this)
        jr.set_field(this, "initAnimationInterface", l_animation_interface)
        jr.call(this, "setAnimationInterface_1", [l_animation_interface])
        jr.set_field(this, "destroyedAnimationInterface", l_destroyed_animation_interface)
        jr.set_field(this, "movement", l_movement)
        jr.set_field(this, "multiPlayerType", jr.as_i(l_multi_player_type))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "WeaponLayer",
        "org.allbinary.game.layer.weapon.WeaponLayer",
        "MultiPlayerGameLayer",
        ["TickableInterface"],
        False,
        [#("animationInterface", jr.JNull), #("initAnimationInterface", jr.JNull), #("destroyedAnimationInterface", jr.JNull), #("sourceLayerInterface", jr.JNull), #("totalDamage", jr.JInt(0)), #("initDamage", jr.JInt(0)), #("destroyed", jr.JBool(False)), #("scoreableInterface", jr.JNull), #("movement", jr.JNull), #("weaponProperties", jr.JNull), #("multiPlayerType", jr.JInt(0)), #("collidableWeaponBehavior", jr.JNull)],
        [],
        [
            jr.Method("setCollidableInferface_1", ["CollidableBaseBehavior"], False, c1_m14__setcollidableinferface), 
            jr.Method("initXYZ_3", ["int", "int", "int"], False, c1_m15__initxyz), 
            jr.Method("init_5", ["AllBinaryLayer", "int", "int", "WeaponProperties", "ScoreableInterface"], False, c1_m16__init), 
            jr.Method("setGroupInterfaces_0", [], False, c1_m17__setgroupinterfaces), 
            jr.Method("processTick_1", ["AllBinaryLayerManager"], False, c1_m18__processtick), 
            jr.Method("isDestroyed_0", [], False, c1_m19__isdestroyed), 
            jr.Method("damage_2", ["int", "int"], False, c1_m20__damage), 
            jr.Method("givePoints_1", ["int"], False, c1_m21__givepoints), 
            jr.Method("isExhausted_0", [], False, c1_m22__isexhausted), 
            jr.Method("getDamage_1", ["int"], False, c1_m23__getdamage), 
            jr.Method("setDestroyed_1", ["boolean"], False, c1_m24__setdestroyed), 
            jr.Method("getInitDamage_0", [], False, c1_m25__getinitdamage), 
            jr.Method("setAnimationInterface_1", ["Animation"], False, c1_m26__setanimationinterface), 
            jr.Method("getAnimationInterface_0", [], False, c1_m27__getanimationinterface), 
            jr.Method("getInitAnimationInterfaceP_0", [], False, c1_m28__getinitanimationinterfacep), 
            jr.Method("setInitAnimationInterfaceP_1", ["Animation"], False, c1_m29__setinitanimationinterfacep), 
            jr.Method("getDestroyedAnimationInterface_0", [], False, c1_m30__getdestroyedanimationinterface), 
            jr.Method("getOwnerLayerInterface_0", [], False, c1_m31__getownerlayerinterface), 
            jr.Method("setOwnerLayerInterface_1", ["AllBinaryLayer"], False, c1_m32__setownerlayerinterface), 
            jr.Method("paint_1", ["Graphics"], False, c1_m33__paint), 
            jr.Method("paintThreed_1", ["Graphics"], False, c1_m34__paintthreed), 
            jr.Method("getMovement_0", [], False, c1_m35__getmovement), 
            jr.Method("setMovement_1", ["Movement"], False, c1_m36__setmovement), 
            jr.Method("getType_0", [], False, c1_m37__gettype), 
            jr.Method("getStaticType_0", [], True, c1_m38__getstatictype), 
            jr.Method("getMultiPlayerType_0", [], False, c1_m39__getmultiplayertype), 
            jr.Method("setWeaponPropertiesP_1", ["WeaponProperties"], False, c1_m40__setweaponpropertiesp), 
            jr.Method("getWeaponPropertiesP_0", [], False, c1_m41__getweaponpropertiesp), 
            jr.Method("implmentsTickableInterface_0", [], False, c1_m42__implmentstickableinterface), 
            jr.Method("set_1", ["GL"], False, c1_m43__set), 
            jr.Method("jinit_8", ["String", "RemoteInfo", "int", "Movement", "Animation", "Animation", "Rectangle", "ViewPositionBase"], False, c1_jinit12)],
        c1_jfields,
        c1_jclinit,
    )
}

