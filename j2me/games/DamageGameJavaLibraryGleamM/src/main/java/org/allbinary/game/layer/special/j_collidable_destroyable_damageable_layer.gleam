// Generated Code Do Not Modify
// package org.allbinary.game.layer.special
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CollidableDestroyableDamageableLayer

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "partInterfaceArrayP", jr.call_static("PartInterfaceUtil", "getZeroArray_0", []))
    jr.set_field(this, "allBinaryGameLayerManagerP", jr.call_static("AllBinaryGameLayerManager", "getNullInstance_0", []))
    jr.set_field(this, "isDraggable", jr.JBool(False))
    jr.set_field(this, "isDragged", jr.JBool(False))
    jr.set_field(this, "isDropped", jr.JBool(False))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("CollidableDestroyableDamageableLayer", "NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER", jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))
    jr.JNull
}

fn c1_m2__getnullinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.eq(jr.get_static("CollidableDestroyableDamageableLayer", "NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER"), jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))) {
            True -> {
            jr.set_static("CollidableDestroyableDamageableLayer", "NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER", jr.new("CollidableDestroyableDamageableLayer", [jr.get_field(jr.call_static("BasicGroupFactory", "getInstance_0", []), "NONE_ARRAY"), jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.get_static("RectangleFactory", "SINGLETON"), jr.get_static("ViewPositionBase", "NULL_VIEW_POSITION")]))
            Nil
        }
            False -> Nil
        }
    jr.get_static("CollidableDestroyableDamageableLayer", "NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER")
}

fn c1_m17__initposition(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call_inherited(this, "CollidableDestroyableDamageableLayer", "setPosition_3", [jr.get_field(this, "initX"), jr.get_field(this, "initY"), jr.get_field(this, "initZ")])
    jr.JNull
}

fn c1_m18__initpositionxyz(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_x, l_y, l_z] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    let l_z = jr.as_i(l_z)
        jr.set_field(this, "initX", jr.as_i(l_x))
        jr.set_field(this, "initY", jr.as_i(l_y))
        jr.set_field(this, "initZ", jr.as_i(l_z))
    jr.JNull
}

fn c1_m19__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        jr.call_super("CollidableCompositeLayer", this, "paint_1", [l_graphics])
    jr.JNull
}

fn c1_m20__damage(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_damage, l_damage_type] = jargs
    let l_damage = jr.as_i(l_damage)
    let l_damage_type = jr.as_i(l_damage_type)
        jr.throw(jr.new("Exception", [jr.get_field(jr.get_inherited(this, "CollidableDestroyableDamageableLayer", "commonStrings"), "NOT_IMPLEMENTED")]))
    jr.JNull
}

fn c1_m21__getdamage(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_damage_type] = jargs
    let l_damage_type = jr.as_i(l_damage_type)
        jr.throw(jr.new("Exception", [jr.get_field(jr.get_inherited(this, "CollidableDestroyableDamageableLayer", "commonStrings"), "NOT_IMPLEMENTED")]))
    jr.JNull
}

fn c1_m22__isdestroyed(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.throw(jr.new("Exception", [jr.get_field(jr.get_inherited(this, "CollidableDestroyableDamageableLayer", "commonStrings"), "NOT_IMPLEMENTED")]))
    jr.JNull
}

fn c1_m23__getgroupinterface(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "groupInterface")
}

fn c1_m24__setgroupinterface(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_team_interface] = jargs
        jr.set_field(this, "groupInterface", l_team_interface)
    jr.JNull
}

fn c1_m25__setallbinarygamelayermanager(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_all_binary_game_layer_manager] = jargs
        jr.set_field(this, "allBinaryGameLayerManagerP", l_all_binary_game_layer_manager)
        case jr.truth(jr.eq(jr.get_field(this, "allBinaryGameLayerManagerP"), jr.JNull)) {
            True -> {
            jr.throw(jr.new("RuntimeException", []))
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m26__isreadyforexplosion(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "readyForExplosion")
}

fn c1_m27__setreadyforexplosion(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_is_ready_for_explosion] = jargs
        jr.set_field(this, "readyForExplosion", l_is_ready_for_explosion)
    jr.JNull
}

fn c1_m28__getinitwidth(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "initWidth"))
}

fn c1_m29__getinitheight(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "initHeight"))
}

fn c1_m30__getinitx(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "initX"))
}

fn c1_m31__getinity(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "initY"))
}

fn c1_m32__up(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m33__down(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m34__right(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m35__left(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m36__strafeleft(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m37__straferight(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m38__fire(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_manager, l_game_key_event] = jargs
    jr.JNull
}

fn c1_m39__special1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_manager, l_game_key_event] = jargs
    jr.JNull
}

fn c1_m40__special2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_manager, l_game_key_event] = jargs
    jr.JNull
}

fn c1_m41__special3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_manager, l_game_key_event] = jargs
    jr.JNull
}

fn c1_m42__special4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_manager, l_game_key_event] = jargs
    jr.JNull
}

fn c1_m43__special5(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_manager, l_game_key_event] = jargs
    jr.JNull
}

fn c1_m44__upanalog(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_y_analog_value] = jargs
    let l_y_analog_value = jr.as_i(l_y_analog_value)
    jr.JNull
}

fn c1_m45__downanalog(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_y_analog_value] = jargs
    let l_y_analog_value = jr.as_i(l_y_analog_value)
    jr.JNull
}

fn c1_m46__rightanalog(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_x_analog_value] = jargs
    let l_x_analog_value = jr.as_i(l_x_analog_value)
    jr.JNull
}

fn c1_m47__leftanalog(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_x_analog_value] = jargs
    let l_x_analog_value = jr.as_i(l_x_analog_value)
    jr.JNull
}

fn c1_m48__righttrigger(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_manager, l_game_key_event, l_x_analog_value] = jargs
    let l_x_analog_value = jr.as_i(l_x_analog_value)
    jr.JNull
}

fn c1_m49__lefttrigger(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_manager, l_game_key_event, l_x_analog_value] = jargs
    let l_x_analog_value = jr.as_i(l_x_analog_value)
    jr.JNull
}

fn c1_m50__ondestroyed(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_destroyed_event] = jargs
    jr.JNull
}

fn c1_m51__getpickupbehavior(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "pickupBehavior")
}

fn c1_m52__setpickupbehavior(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_pickup_behavior] = jargs
        jr.set_field(this, "pickupBehavior", l_pickup_behavior)
    jr.JNull
}

fn c1_m53__addpart(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_picked_up_layer_interface_factory_interface] = jargs
    jr.JNull
}

fn c1_m54__setpartinterfacearray(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_part_interface_array] = jargs
        jr.set_field(this, "partInterfaceArrayP", l_part_interface_array)
    jr.JNull
}

fn c1_m55__getpartinterfacearray(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "partInterfaceArrayP")
}

fn c1_m57__tostringappend(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_string_buffer] = jargs
        let l_common_seps = jr.call_static("CommonSeps", "getInstance_0", [])
        let l_position_strings = jr.call_static("PositionStrings", "getInstance_0", [])
        jr.call_super("CollidableCompositeLayer", this, "toStringAppend_1", [l_string_buffer])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_common_seps, "NEW_LINE")])
        let l_group_interface_array = jr.call(this, "getGroupInterface_0", [])
        let l_size = jr.as_i(jr.alen(l_group_interface_array))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.call(l_string_buffer, "append_1", [jr.call(jr.aget(l_group_interface_array, jr.get(l_index)), "toString_0", [])])
            jr.call(l_string_buffer, "append_1", [jr.get_field(l_common_seps, "COMMA")])
            Nil
        })
            Nil
        }
        let l_pickup_behavior = jr.call(this, "getPickupBehavior_0", [])
        case jr.truth(jr.ne(l_pickup_behavior, jr.JNull)) {
            True -> {
            jr.call(l_string_buffer, "append_1", [jr.get_field(l_common_seps, "NEW_LINE")])
            jr.call(l_string_buffer, "append_1", [jr.call(l_pickup_behavior, "toString_0", [])])
            Nil
        }
            False -> Nil
        }
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_common_seps, "NEW_LINE")])
        jr.call(l_string_buffer, "append_1", [jr.get_static("CollidableDestroyableDamageableLayer", "READYFOREXPLOSION")])
        jr.call(l_string_buffer, "appendboolean_1", [jr.get_field(this, "readyForExplosion")])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_common_seps, "NEW_LINE")])
        jr.call(l_string_buffer, "append_1", [jr.get_field(jr.get_inherited(this, "CollidableDestroyableDamageableLayer", "commonStrings"), "INIT")])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_common_seps, "SPACE")])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_position_strings, "X_LABEL")])
        jr.call(l_string_buffer, "appendint_1", [jr.get_field(this, "initX")])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_position_strings, "Y_LABEL")])
        jr.call(l_string_buffer, "appendint_1", [jr.get_field(this, "initX")])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_position_strings, "Z_LABEL")])
        jr.call(l_string_buffer, "appendint_1", [jr.get_field(this, "initZ")])
    jr.JNull
}

fn c1_m58__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_string_buffer = jr.new("StringMaker", [])
        jr.call(this, "toStringAppend_1", [l_string_buffer])
    jr.call(l_string_buffer, "toString_0", [])
}

fn c1_jinit16(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_group_interface, l_name, l_layer_info, l_view_position] = jargs
        jr.super_init("CollidableCompositeLayer", this, [l_name, l_layer_info, l_view_position, jr.call_static("CollidableNeverCollideBehaviorFactory", "getInstance_0", [])])
        c1_jfields(this)
        jr.set_field(this, "initWidth", jr.as_i(jr.call(l_layer_info, "getWidth_0", [])))
        jr.set_field(this, "initHeight", jr.as_i(jr.call(l_layer_info, "getHeight_0", [])))
        jr.set_field(this, "groupInterface", l_group_interface)
        jr.set_field(this, "pickupBehavior", jr.call_static("PickupBehavior", "getNullInstance_0", []))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CollidableDestroyableDamageableLayer",
        "org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer",
        "CollidableCompositeLayer",
        ["DestroyableInterface", "DamageableInterface", "PickupCompositeInterface", "SpecialGameInputInterface"],
        False,
        [#("groupInterface", jr.JNull), #("readyForExplosion", jr.JBool(False)), #("initWidth", jr.JInt(0)), #("initHeight", jr.JInt(0)), #("initX", jr.JInt(0)), #("initY", jr.JInt(0)), #("initZ", jr.JInt(0)), #("partInterfaceArrayP", jr.JNull), #("pickupBehavior", jr.JNull), #("allBinaryGameLayerManagerP", jr.JNull), #("isDraggable", jr.JBool(False)), #("isDragged", jr.JBool(False)), #("isDropped", jr.JBool(False))],
        [#("NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER", jr.JNull), #("READYFOREXPLOSION", jr.JStr("ReadyForExplosion: "))],
        [
            jr.Method("getNullInstance_0", [], True, c1_m2__getnullinstance), 
            jr.Method("initPosition_0", [], False, c1_m17__initposition), 
            jr.Method("initPositionXYZ_3", ["int", "int", "int"], False, c1_m18__initpositionxyz), 
            jr.Method("paint_1", ["Graphics"], False, c1_m19__paint), 
            jr.Method("damage_2", ["int", "int"], False, c1_m20__damage), 
            jr.Method("getDamage_1", ["int"], False, c1_m21__getdamage), 
            jr.Method("isDestroyed_0", [], False, c1_m22__isdestroyed), 
            jr.Method("getGroupInterface_0", [], False, c1_m23__getgroupinterface), 
            jr.Method("setGroupInterface_1", ["GroupArr"], False, c1_m24__setgroupinterface), 
            jr.Method("setAllBinaryGameLayerManager_1", ["AllBinaryGameLayerManager"], False, c1_m25__setallbinarygamelayermanager), 
            jr.Method("isReadyForExplosion_0", [], False, c1_m26__isreadyforexplosion), 
            jr.Method("setReadyForExplosion_1", ["boolean"], False, c1_m27__setreadyforexplosion), 
            jr.Method("getInitWidth_0", [], False, c1_m28__getinitwidth), 
            jr.Method("getInitHeight_0", [], False, c1_m29__getinitheight), 
            jr.Method("getInitX_0", [], False, c1_m30__getinitx), 
            jr.Method("getInitY_0", [], False, c1_m31__getinity), 
            jr.Method("up_0", [], False, c1_m32__up), 
            jr.Method("down_0", [], False, c1_m33__down), 
            jr.Method("right_0", [], False, c1_m34__right), 
            jr.Method("left_0", [], False, c1_m35__left), 
            jr.Method("strafeLeft_0", [], False, c1_m36__strafeleft), 
            jr.Method("strafeRight_0", [], False, c1_m37__straferight), 
            jr.Method("fire_2", ["AllBinaryLayerManager", "GameKeyEvent"], False, c1_m38__fire), 
            jr.Method("special1_2", ["AllBinaryLayerManager", "GameKeyEvent"], False, c1_m39__special1), 
            jr.Method("special2_2", ["AllBinaryLayerManager", "GameKeyEvent"], False, c1_m40__special2), 
            jr.Method("special3_2", ["AllBinaryLayerManager", "GameKeyEvent"], False, c1_m41__special3), 
            jr.Method("special4_2", ["AllBinaryLayerManager", "GameKeyEvent"], False, c1_m42__special4), 
            jr.Method("special5_2", ["AllBinaryLayerManager", "GameKeyEvent"], False, c1_m43__special5), 
            jr.Method("upAnalog_1", ["int"], False, c1_m44__upanalog), 
            jr.Method("downAnalog_1", ["int"], False, c1_m45__downanalog), 
            jr.Method("rightAnalog_1", ["int"], False, c1_m46__rightanalog), 
            jr.Method("leftAnalog_1", ["int"], False, c1_m47__leftanalog), 
            jr.Method("rightTrigger_3", ["AllBinaryLayerManager", "GameKeyEvent", "int"], False, c1_m48__righttrigger), 
            jr.Method("leftTrigger_3", ["AllBinaryLayerManager", "GameKeyEvent", "int"], False, c1_m49__lefttrigger), 
            jr.Method("onDestroyed_1", ["DestroyedEvent"], False, c1_m50__ondestroyed), 
            jr.Method("getPickupBehavior_0", [], False, c1_m51__getpickupbehavior), 
            jr.Method("setPickupBehavior_1", ["PickupBehavior"], False, c1_m52__setpickupbehavior), 
            jr.Method("addPart_1", ["PickedUpLayerInterfaceFactoryInterface"], False, c1_m53__addpart), 
            jr.Method("setPartInterfaceArray_1", ["PartInterfaceArr"], False, c1_m54__setpartinterfacearray), 
            jr.Method("getPartInterfaceArray_0", [], False, c1_m55__getpartinterfacearray), 
            jr.Method("toStringAppend_1", ["StringMaker"], False, c1_m57__tostringappend), 
            jr.Method("toString_0", [], False, c1_m58__tostring), 
            jr.Method("jinit_4", ["GroupArr", "String", "Rectangle", "ViewPositionBase"], False, c1_jinit16)],
        c1_jfields,
        c1_jclinit,
    )
}

