// Generated Code Do Not Modify
// package org.allbinary.animation
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class FeaturedAnimationInterfaceFactoryInterfaceFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("FeaturedAnimationInterfaceFactoryInterfaceFactory", "INSTANCE", jr.new("FeaturedAnimationInterfaceFactoryInterfaceFactory", []))
    jr.JNull
}

fn c1_m3__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("FeaturedAnimationInterfaceFactoryInterfaceFactory", "INSTANCE")
}

fn c1_m4__getrectangle(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_resource] = jargs
    jr.call(this, "getRectangleXY_3", [l_resource, jr.JInt(0), jr.JInt(0)])
}

fn c1_m5__getrectanglexy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_resource, l_x, l_y] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    jr.method(fn() {
            let l_point_factory = jr.call_static("PointFactory", "getInstance_0", [])
            let l_list = jr.call_inherited(this, "FeaturedAnimationInterfaceFactoryInterfaceFactory", "getList_0", [])
            let l_scale = jr.as_i(jr.call(jr.call(jr.get_field(jr.call_static("GameConfigurationCentral", "getInstance_0", []), "SCALE"), "getValue_0", []), "intValue_0", []))
            let l_size = jr.as_i(jr.call(jr.call_inherited(this, "FeaturedAnimationInterfaceFactoryInterfaceFactory", "getList_0", []), "size_0", []))
            {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            let l_feature_interface = jr.aget(jr.get_field(l_list, "objectArray"), jr.get(l_index))
            case jr.truth(jr.call(l_feature_interface, "isFeature_0", [])) {
                True -> {
                let l_rectangle = jr.call(l_feature_interface, "getRectangle_1", [l_resource])
                case jr.truth(jr.ne(l_rectangle, jr.get_static("RectangleFactory", "SINGLETON"))) {
                    True -> {
                    jr.ret(jr.new("Rectangle", [jr.call(l_point_factory, "createXY_2", [l_x, l_y]), jr.shr(jr.mul(jr.call(l_rectangle, "getWidth_0", []), l_scale), jr.JInt(1)), jr.shr(jr.mul(jr.call(l_rectangle, "getHeight_0", []), l_scale), jr.JInt(1))]))
                    Nil
                }
                    False -> Nil
                }
                Nil
            }
                False -> Nil
            }
            Nil
        })
            Nil
        }
            jr.throw(jr.new("Exception", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.JStr("No rectangle available for current feature selection or Resource: ")]), "append_1", [l_resource]), "toString_0", [])]))
        jr.JNull
    })
}

fn c1_m6__getprocedural(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_resource] = jargs
    jr.call(this, "getBasicAnimationInterfaceFactoryInstance_1", [l_resource])
}

fn c1_m7__get(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_resource] = jargs
    jr.call(this, "getBasicAnimationInterfaceFactoryInstance_1", [l_resource])
}

fn c1_m8__getbasicanimationinterfacefactoryinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_resource] = jargs
    jr.method(fn() {
            let l_list = jr.call_inherited(this, "FeaturedAnimationInterfaceFactoryInterfaceFactory", "getList_0", [])
            let l_resource_type_available_list = jr.new("BasicArrayListD", [])
            let l_size = jr.as_i(jr.call(jr.call_inherited(this, "FeaturedAnimationInterfaceFactoryInterfaceFactory", "getList_0", []), "size_0", []))
            let l_feature_interface = jr.cell(jr.JNull)
            let l_animation_interface_factory_interface = jr.cell(jr.JNull)
            {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.set(l_feature_interface, jr.aget(jr.get_field(l_list, "objectArray"), jr.get(l_index)))
            case jr.truth(jr.call(jr.get(l_feature_interface), "isFeature_0", [])) {
                True -> {
                jr.call(l_resource_type_available_list, "add_1", [jr.get(l_feature_interface)])
                jr.set(l_animation_interface_factory_interface, jr.call(jr.get(l_feature_interface), "getBasicAnimationInterfaceFactoryInstance_1", [l_resource]))
                case jr.truth(jr.ne(jr.get(l_animation_interface_factory_interface), jr.get_static("NullAnimationFactory", "NULL_NOT_FOR_USE_ANIMATION_FACTORY"))) {
                    True -> {
                    jr.ret(jr.get(l_animation_interface_factory_interface))
                    Nil
                }
                    False -> Nil
                }
                Nil
            }
                False -> Nil
            }
            Nil
        })
            Nil
        }
            case jr.truth(jr.gt(jr.call(l_resource_type_available_list, "size_0", []), jr.JInt(0))) {
            True -> {
            let l__n_o___a_n_i_m_a_t_i_o_n___a_v_a_i_l_a_b_l_e___f_r_o_m = jr.JStr("No animation available from: ")
            let l__f_o_r___f_a_c_t_o_r_i_e_s = jr.JStr(" factories: ")
            let l__f_o_r___r_e_s_o_u_r_c_e = jr.JStr(" for Resource: ")
            let l__h_a_s___k_e_y = jr.JStr(" has: ")
            let l__r_e_s_o_u_r_c_e_s___l_a_b_e_l = jr.JStr(" resources ")
            let l_string_buffer = jr.new("StringMaker", [])
            jr.call(l_string_buffer, "append_1", [l__n_o___a_n_i_m_a_t_i_o_n___a_v_a_i_l_a_b_l_e___f_r_o_m])
            jr.call(l_string_buffer, "appendint_1", [jr.call(l_resource_type_available_list, "size_0", [])])
            jr.call(l_string_buffer, "append_1", [jr.get_field(jr.call_static("CommonSeps", "getInstance_0", []), "FORWARD_SLASH")])
            jr.call(l_string_buffer, "appendint_1", [l_size])
            jr.call(l_string_buffer, "append_1", [l__f_o_r___f_a_c_t_o_r_i_e_s])
            let l_size2 = jr.as_i(jr.call(l_resource_type_available_list, "size_0", []))
            {
                let l_index = jr.cell(jr.as_i(jr.JInt(0)))
                jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size2) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
                jr.call(l_string_buffer, "append_1", [jr.call(jr.call(l_resource_type_available_list, "get_1", [jr.get(l_index)]), "toString_0", [])])
                jr.call(l_string_buffer, "append_1", [jr.get_field(jr.call_static("CommonSeps", "getInstance_0", []), "COMMA_SEP")])
                Nil
            })
                Nil
            }
            jr.call(l_string_buffer, "append_1", [l__f_o_r___r_e_s_o_u_r_c_e])
            jr.call(l_string_buffer, "append_1", [l_resource])
            {
                let l_index = jr.cell(jr.as_i(jr.JInt(0)))
                jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
                jr.call(l_string_buffer, "append_1", [jr.get_field(jr.call_static("CommonSeps", "getInstance_0", []), "NEW_LINE")])
                jr.set(l_feature_interface, jr.aget(jr.get_field(l_list, "objectArray"), jr.get(l_index)))
                case jr.truth(jr.call(jr.get(l_feature_interface), "isFeature_0", [])) {
                    True -> {
                    jr.call(l_string_buffer, "append_1", [jr.call(jr.call_static("StringUtil", "getInstance_0", []), "toString_1", [jr.get(l_feature_interface)])])
                    jr.call(l_string_buffer, "append_1", [l__h_a_s___k_e_y])
                    jr.call(l_string_buffer, "appendint_1", [jr.call(jr.call(jr.get(l_feature_interface), "getHashtable_0", []), "size_0", [])])
                    jr.call(l_string_buffer, "append_1", [l__r_e_s_o_u_r_c_e_s___l_a_b_e_l])
                    Nil
                }
                    False -> Nil
                }
                Nil
            })
                Nil
            }
            jr.throw(jr.new("Exception", [jr.call(l_string_buffer, "toString_0", [])]))
            Nil
        }
            False -> {
            let l_string_buffer = jr.new("StringMaker", [])
            {
                let l_index = jr.cell(jr.as_i(jr.JInt(0)))
                jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
                jr.set(l_feature_interface, jr.aget(jr.get_field(l_list, "objectArray"), jr.get(l_index)))
                jr.call(l_string_buffer, "append_1", [jr.call(jr.get(l_feature_interface), "toString_0", [])])
                jr.call(l_string_buffer, "append_1", [jr.get_field(jr.call_static("CommonSeps", "getInstance_0", []), "SPACE")])
                Nil
            })
                Nil
            }
            let l_result = jr.call(l_string_buffer, "toString_0", [])
            jr.call(l_string_buffer, "delete_2", [jr.JInt(0), jr.call(l_string_buffer, "length_0", [])])
            jr.throw(jr.new("Exception", [jr.call(jr.call(jr.call(jr.call(jr.call(l_string_buffer, "append_1", [jr.JStr("No feature resource type available for Resource: ")]), "append_1", [l_resource]), "append_1", [jr.JStr(" Resource Factories Available: ")]), "append_1", [l_result]), "toString_0", [])]))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("FeaturedResourceFactory", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "FeaturedAnimationInterfaceFactoryInterfaceFactory",
        "org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory",
        "FeaturedResourceFactory",
        [],
        False,
        [],
        [#("INSTANCE", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m3__getinstance), 
            jr.Method("getRectangle_1", ["String"], False, c1_m4__getrectangle), 
            jr.Method("getRectangleXY_3", ["String", "int", "int"], False, c1_m5__getrectanglexy), 
            jr.Method("getProcedural_1", ["String"], False, c1_m6__getprocedural), 
            jr.Method("get_1", ["String"], False, c1_m7__get), 
            jr.Method("getBasicAnimationInterfaceFactoryInstance_1", ["String"], False, c1_m8__getbasicanimationinterfacefactoryinstance), 
            jr.Method("jinit_0", [], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

