// Generated Code Do Not Modify
// package org.allbinary.data.resource
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ResourceUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("ResourceUtil", "instance", jr.new("ResourceUtil", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("ResourceUtil", "instance")
}

fn c1_m5__setloadingpaths(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_path, l_ext] = jargs
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.get_field(jr.call_static("CommonStrings", "getInstance_0", []), "NOT_IMPLEMENTED"), this, jr.JStr("setLoadingPaths")])
    jr.JNull
}

fn c1_m6__getresourceasstream(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_resource] = jargs
        let l_input_stream = jr.cell(jr.call(jr.call(l_resource, "getClass_0", []), "getResourceAsStream_1", [l_resource]))
        case jr.truth(jr.eq(jr.get(l_input_stream), jr.JNull)) {
            True -> {
            jr.set(l_input_stream, jr.call(this, "getResourceAsStreamAtStart_2", [l_resource, jr.JInt(2)]))
            case jr.truth(jr.eq(jr.get(l_input_stream), jr.JNull)) {
                True -> {
                jr.set(l_input_stream, jr.call(this, "getResourceAsStreamAtStart_2", [l_resource, jr.JInt(1)]))
                case jr.truth(jr.eq(jr.get(l_input_stream), jr.JNull)) {
                    True -> {
                    let l_string_maker = jr.new("StringMaker", [])
                    let l_index = jr.as_i(jr.call(l_resource, "lastIndexOf_1", [jr.JChar(47)]))
                    let l_resource_path = jr.cell(jr.call(l_resource, "substring_1", [jr.add(l_index, jr.JInt(1))]))
                    jr.set(l_input_stream, jr.call(jr.call(l_resource, "getClass_0", []), "getResourceAsStream_1", [jr.get(l_resource_path)]))
                    case jr.truth(jr.eq(jr.get(l_input_stream), jr.JNull)) {
                        True -> {
                        jr.set(l_resource_path, jr.call(l_resource, "substring_1", [l_index]))
                        jr.set(l_input_stream, jr.call(jr.call(l_resource, "getClass_0", []), "getResourceAsStream_1", [jr.get(l_resource_path)]))
                        case jr.truth(jr.eq(jr.get(l_input_stream), jr.JNull)) {
                            True -> {
                            let l__r_e_s = jr.JStr("res")
                            jr.set(l_resource_path, jr.call(jr.call(jr.call(l_string_maker, "append_1", [l__r_e_s]), "append_1", [jr.call(l_resource, "substring_1", [l_index])]), "toString_0", []))
                            jr.set(l_input_stream, jr.call(jr.call(l_resource, "getClass_0", []), "getResourceAsStream_1", [jr.get(l_resource_path)]))
                            case jr.truth(jr.eq(jr.get(l_input_stream), jr.JNull)) {
                                True -> {
                                jr.call(l_string_maker, "delete_2", [jr.JInt(0), jr.call(l_string_maker, "length_0", [])])
                                jr.set(l_resource_path, jr.call(jr.call(jr.call(jr.call(l_string_maker, "append_1", [jr.JStr("/")]), "append_1", [l__r_e_s]), "append_1", [jr.call(l_resource, "substring_1", [l_index])]), "toString_0", []))
                                jr.set(l_input_stream, jr.call(jr.call(l_resource, "getClass_0", []), "getResourceAsStream_1", [jr.get(l_resource_path)]))
                                let l__c_o_l_o_n = jr.get_field(jr.call_static("CommonSeps", "getInstance_0", []), "COLON")
                                case jr.truth(jr.eq(jr.get(l_input_stream), jr.JNull)) {
                                    True -> {
                                    jr.call(l_string_maker, "delete_2", [jr.JInt(0), jr.call(l_string_maker, "length_0", [])])
                                    jr.set(l_resource_path, jr.call(jr.call(jr.call(jr.call(l_string_maker, "append_1", [l__r_e_s]), "append_1", [l__c_o_l_o_n]), "append_1", [jr.call(l_resource, "substring_1", [l_index])]), "toString_0", []))
                                    jr.set(l_input_stream, jr.call(jr.call(l_resource, "getClass_0", []), "getResourceAsStream_1", [jr.get(l_resource_path)]))
                                    case jr.truth(jr.eq(jr.get(l_input_stream), jr.JNull)) {
                                        True -> {
                                        jr.call(l_string_maker, "delete_2", [jr.JInt(0), jr.call(l_string_maker, "length_0", [])])
                                        jr.set(l_resource_path, jr.call(jr.call(jr.call(jr.call(l_string_maker, "append_1", [l__r_e_s]), "append_1", [l__c_o_l_o_n]), "append_1", [jr.call(l_resource, "substring_1", [jr.add(l_index, jr.JInt(1))])]), "toString_0", []))
                                        jr.set(l_input_stream, jr.call(jr.call(l_resource, "getClass_0", []), "getResourceAsStream_1", [jr.get(l_resource_path)]))
                                        case jr.truth(jr.eq(jr.get(l_input_stream), jr.JNull)) {
                                            True -> {
                                            let l__r_e_s_o_u_r_c_e___s_t_r_i_n_g = jr.JStr("resource")
                                            jr.call(l_string_maker, "delete_2", [jr.JInt(0), jr.call(l_string_maker, "length_0", [])])
                                            jr.set(l_resource_path, jr.call(jr.call(jr.call(jr.call(l_string_maker, "append_1", [l__r_e_s_o_u_r_c_e___s_t_r_i_n_g]), "append_1", [l__c_o_l_o_n]), "append_1", [jr.call(l_resource, "substring_1", [l_index])]), "toString_0", []))
                                            jr.set(l_input_stream, jr.call(jr.call(l_resource, "getClass_0", []), "getResourceAsStream_1", [jr.get(l_resource_path)]))
                                            case jr.truth(jr.eq(jr.get(l_input_stream), jr.JNull)) {
                                                True -> {
                                                jr.call(l_string_maker, "delete_2", [jr.JInt(0), jr.call(l_string_maker, "length_0", [])])
                                                jr.set(l_resource_path, jr.call(jr.call(jr.call(jr.call(l_string_maker, "append_1", [l__r_e_s_o_u_r_c_e___s_t_r_i_n_g]), "append_1", [l__c_o_l_o_n]), "append_1", [jr.call(l_resource, "substring_1", [jr.add(l_index, jr.JInt(1))])]), "toString_0", []))
                                                jr.set(l_input_stream, jr.call(jr.call(l_resource, "getClass_0", []), "getResourceAsStream_1", [jr.get(l_resource_path)]))
                                                case jr.truth(jr.eq(jr.get(l_input_stream), jr.JNull)) {
                                                    True -> {
                                                    jr.call(l_string_maker, "delete_2", [jr.JInt(0), jr.call(l_string_maker, "length_0", [])])
                                                    jr.throw(jr.new("Exception", [jr.call(jr.call(jr.call(l_string_maker, "append_1", [jr.JStr("Unable to obtain: ")]), "append_1", [l_resource]), "toString_0", [])]))
                                                    Nil
                                                }
                                                    False -> Nil
                                                }
                                                Nil
                                            }
                                                False -> Nil
                                            }
                                            Nil
                                        }
                                            False -> Nil
                                        }
                                        Nil
                                    }
                                        False -> Nil
                                    }
                                    Nil
                                }
                                    False -> Nil
                                }
                                Nil
                            }
                                False -> Nil
                            }
                            Nil
                        }
                            False -> Nil
                        }
                        Nil
                    }
                        False -> Nil
                    }
                    Nil
                }
                    False -> Nil
                }
                Nil
            }
                False -> Nil
            }
            Nil
        }
            False -> Nil
        }
    jr.get(l_input_stream)
}

fn c1_m7__getresourceasstreamatstart(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_resource, l_start_index] = jargs
    let l_start_index = jr.as_i(l_start_index)
    jr.method(fn() {
            let l_string_maker = jr.new("StringMaker", [])
            let l_index = jr.as_i(jr.call(l_resource, "indexOf_1", [jr.get_field(jr.call_static("CommonSeps", "getInstance_0", []), "COLON")]))
            let l_resource_path = jr.call(l_resource, "substring_1", [jr.add(l_index, l_start_index)])
            let l_input_stream = jr.call(jr.call(l_resource, "getClass_0", []), "getResourceAsStream_1", [l_resource_path])
            case jr.truth(jr.ne(l_input_stream, jr.JNull)) {
            True -> {
            jr.ret(l_input_stream)
            Nil
        }
            False -> Nil
        }
            jr.ret(l_input_stream)
        jr.JNull
    })
}

fn c1_m8__addresource(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_resource, l_value] = jargs
    jr.JNull
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ResourceUtil",
        "org.allbinary.data.resource.ResourceUtil",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("setLoadingPaths_2", ["String", "String"], False, c1_m5__setloadingpaths), 
            jr.Method("getResourceAsStream_1", ["String"], False, c1_m6__getresourceasstream), 
            jr.Method("getResourceAsStreamAtStart_2", ["String", "int"], False, c1_m7__getresourceasstreamatstart), 
            jr.Method("addResource_2", ["String", "Integer"], False, c1_m8__addresource), 
            jr.Method("jinit_0", [], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}

