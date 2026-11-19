// Generated Code Do Not Modify
// package org.allbinary.game.input.mapping
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class InputToGameKeyMapping

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "gameKeyFactory", jr.call_static("GameKeyFactory", "getInstance_0", []))
    jr.set_field(this, "mappedGameKeys", jr.array_of("L", [jr.get_field(jr.get_field(this, "gameKeyFactory"), "UP"), jr.get_field(jr.get_field(this, "gameKeyFactory"), "DOWN"), jr.get_field(jr.get_field(this, "gameKeyFactory"), "LEFT"), jr.get_field(jr.get_field(this, "gameKeyFactory"), "RIGHT")]))
    jr.set_field(this, "platformToGameKeyMapping", jr.new_array("L", 1, [jr.get_field(jr.call_static("InputFactory", "getInstance_0", []), "MAX")]))
    jr.set_field(this, "negativePlatformToGameKeyMapping", jr.new_array("L", 1, [jr.JInt(0)]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("InputToGameKeyMapping", "instance", jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))
    jr.JNull
}

fn c1_m2__getnullinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.eq(jr.get_static("InputToGameKeyMapping", "instance"), jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))) {
            True -> {
            jr.set_static("InputToGameKeyMapping", "instance", jr.new("InputToGameKeyMapping", []))
            Nil
        }
            False -> Nil
        }
    jr.get_static("InputToGameKeyMapping", "instance")
}

fn c1_m8__clear(this: jr.V, jargs: List(jr.V)) -> jr.V {
        {
            let l_index = jr.cell(jr.as_i(jr.sub(jr.alen(jr.get_field(this, "platformToGameKeyMapping")), jr.JInt(1))))
            jr.for_loop("", fn() { jr.ge(jr.get(l_index), jr.JInt(0)) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, True) Nil }, fn() {
            jr.aset(jr.get_field(this, "platformToGameKeyMapping"), jr.get(l_index), jr.get_field(jr.get_field(this, "gameKeyFactory"), "NONE"))
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_m9__removeall(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call_super("InputMapping", this, "removeAll_0", [])
        jr.call(this, "clear_0", [])
    jr.JNull
}

fn c1_m10__addmapping(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_input_to_game_key_mapping] = jargs
        {
            let l_index = jr.cell(jr.as_i(jr.sub(jr.call(l_input_to_game_key_mapping, "getMaxMappable_0", []), jr.JInt(1))))
            jr.for_loop("", fn() { jr.ge(jr.get(l_index), jr.JInt(0)) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, True) Nil }, fn() {
            let l_input = jr.call(l_input_to_game_key_mapping, "getInstance_1", [jr.get(l_index)])
            case jr.truth(jr.ne(l_input, jr.get_field(jr.get_field(this, "gameKeyFactory"), "NONE"))) {
                True -> {
                jr.call(this, "addAll_2", [l_input, jr.call(l_input_to_game_key_mapping, "getMappedInput_1", [l_input])])
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

fn c1_m11__addall(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_input, l_list] = jargs
        {
            let l_index = jr.cell(jr.as_i(jr.sub(jr.call(l_list, "size_0", []), jr.JInt(1))))
            jr.for_loop("", fn() { jr.ge(jr.get(l_index), jr.JInt(0)) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, True) Nil }, fn() {
            let l_mapped_to_input = jr.aget(jr.get_field(l_list, "objectArray"), jr.get(l_index))
            jr.call(this, "add_2", [l_input, l_mapped_to_input])
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_m12__add(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_input, l_mapped_to_input] = jargs
        jr.call_super("InputMapping", this, "add_2", [l_input, l_mapped_to_input])
        jr.call(this, "set_2", [l_input, l_mapped_to_input])
    jr.JNull
}

fn c1_m13__remove(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_input, l_mapped_to_input] = jargs
        jr.call(jr.get_inherited(this, "InputToGameKeyMapping", "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(jr.call_static("CommonLabels", "getInstance_0", []), "START_LABEL")]), "append_1", [jr.call(jr.call_static("StringUtil", "getInstance_0", []), "toString_1", [l_input])]), "append_1", [jr.JStr(" == ")]), "append_1", [jr.call(jr.call_static("StringUtil", "getInstance_0", []), "toString_1", [l_mapped_to_input])]), "toString_0", []), this, jr.JStr("InputToGameKeyMapping::remove")])
        jr.call_super("InputMapping", this, "remove_2", [l_input, l_mapped_to_input])
        jr.call(this, "set_2", [l_input, jr.get_field(jr.get_field(this, "gameKeyFactory"), "NONE")])
    jr.JNull
}

fn c1_m14__set(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_input, l_mapped_to_input] = jargs
        let l_id = jr.as_i(jr.call(l_mapped_to_input, "getId_0", []))
        case jr.truth(case jr.truth(jr.ge(l_id, jr.JInt(0))) { True -> jr.lt(l_id, jr.alen(jr.get_field(this, "platformToGameKeyMapping"))) False -> jr.JBool(False) }) {
            True -> {
            jr.aset(jr.get_field(this, "platformToGameKeyMapping"), l_id, l_input)
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m15__getmaxmappable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.alen(jr.get_field(this, "platformToGameKeyMapping")))
}

fn c1_m16__getreverseinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_id] = jargs
    let l_id = jr.as_i(l_id)
        let l_list = jr.new("BasicArrayListD", [])
        let l_input_factory = jr.call_static("InputFactory", "getInstance_0", [])
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), jr.alen(jr.get_field(this, "platformToGameKeyMapping"))) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            case jr.truth(jr.eq(jr.call(jr.aget(jr.get_field(this, "platformToGameKeyMapping"), jr.get(l_index)), "getId_0", []), l_id)) {
                True -> {
                let l_input = jr.call(l_input_factory, "getInstanceById_1", [jr.get(l_index)])
                case jr.truth(jr.ne(l_input, jr.JNull)) {
                    True -> {
                    jr.call(l_list, "add_1", [l_input])
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
    l_list
}

fn c1_m17__initgamekey(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_canvas, l_game_key] = jargs
        let l_key = jr.as_i(jr.call(l_canvas, "getKeyCode_1", [jr.call(l_game_key, "getId_0", [])]))
        case jr.truth(case jr.truth(jr.lt(l_key, jr.JInt(0))) { True -> jr.lt(jr.neg(l_key), jr.alen(jr.get_field(this, "negativePlatformToGameKeyMapping"))) False -> jr.JBool(False) }) {
            True -> {
            jr.aset(jr.get_field(this, "negativePlatformToGameKeyMapping"), jr.neg(l_key), l_game_key)
            Nil
        }
            False -> case jr.truth(jr.gt(l_key, jr.JInt(0))) {
            True -> {
            case jr.truth(jr.eq(jr.aget(jr.get_field(this, "platformToGameKeyMapping"), l_key), jr.get_field(jr.get_field(this, "gameKeyFactory"), "NONE"))) {
                True -> {
                jr.aset(jr.get_field(this, "platformToGameKeyMapping"), l_key, l_game_key)
                Nil
            }
                False -> Nil
            }
            Nil
        }
            False -> {
            jr.call_static("PreLogUtil", "putOE_4", [jr.call(jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.call(l_game_key, "toString_0", [])]), "append_1", [jr.get_field(jr.call_static("CommonSeps", "getInstance_0", []), "COLON_SEP")]), "appendint_1", [l_key]), "toString_0", []), this, jr.get_field(jr.get_inherited(this, "InputToGameKeyMapping", "commonStrings"), "INIT"), jr.new("Exception", [])])
            Nil
        }
        }
        }
    jr.JNull
}

fn c1_m18__getsmallestcanvasgamekeycode(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_canvas] = jargs
        let l_next_key = jr.cell(jr.as_i(jr.JInt(0)))
        let l_smallest_key = jr.cell(jr.as_i(jr.JInt(0)))
        {
            let l_index = jr.cell(jr.as_i(jr.alen(jr.get_field(this, "mappedGameKeys"))))
            jr.for_loop("", fn() { jr.ge(jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, False), jr.JInt(0)) }, fn() { Nil }, fn() {
            jr.set(l_next_key, jr.as_i(jr.call(l_canvas, "getKeyCode_1", [jr.call(jr.aget(jr.get_field(this, "mappedGameKeys"), jr.get(l_index)), "getId_0", [])])))
            case jr.truth(jr.lt(jr.get(l_next_key), jr.get(l_smallest_key))) {
                True -> {
                jr.set(l_smallest_key, jr.as_i(jr.get(l_next_key)))
                Nil
            }
                False -> Nil
            }
            Nil
        })
            Nil
        }
    jr.as_i(jr.get(l_smallest_key))
}

fn c1_m19__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_canvas] = jargs
        jr.try_catch(fn() {
            let l_negative_platform_to_game_key_mapping = jr.cell(jr.new_array("L", 1, [jr.JInt(0)]))
            let l_smallest_key = jr.cell(jr.as_i(jr.call(this, "getSmallestCanvasGameKeyCode_1", [l_canvas])))
            case jr.truth(jr.lt(jr.get(l_smallest_key), jr.JInt(0))) {
                True -> {
                jr.incr(fn() { jr.get(l_smallest_key) }, fn(jv) { jr.set(l_smallest_key, jv) }, -1, True)
                case jr.truth(jr.lt(jr.get(l_smallest_key), jr.JInt(-256))) {
                    True -> {
                    jr.set(l_smallest_key, jr.as_i(jr.JInt(-256)))
                    Nil
                }
                    False -> Nil
                }
                jr.set(l_negative_platform_to_game_key_mapping, jr.new_array("L", 1, [jr.neg(jr.get(l_smallest_key))]))
                {
                    let l_index = jr.cell(jr.as_i(jr.alen(jr.get(l_negative_platform_to_game_key_mapping))))
                    jr.for_loop("", fn() { jr.ge(jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, False), jr.JInt(0)) }, fn() { Nil }, fn() {
                    jr.aset(jr.get(l_negative_platform_to_game_key_mapping), jr.get(l_index), jr.get_field(jr.get_field(this, "gameKeyFactory"), "NONE"))
                    Nil
                })
                    Nil
                }
                jr.set_field(this, "negativePlatformToGameKeyMapping", jr.get(l_negative_platform_to_game_key_mapping))
                Nil
            }
                False -> Nil
            }
            {
                let l_index = jr.cell(jr.as_i(jr.alen(jr.get_field(this, "mappedGameKeys"))))
                jr.for_loop("", fn() { jr.ge(jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, False), jr.JInt(0)) }, fn() { Nil }, fn() {
                jr.call(this, "initGameKey_2", [l_canvas, jr.aget(jr.get_field(this, "mappedGameKeys"), jr.get(l_index))])
                Nil
            })
                Nil
            }
            Nil
        }, [#(["Throwable"], fn(l_t) { {
            jr.call(jr.get_inherited(this, "InputToGameKeyMapping", "logUtil"), "put_4", [jr.get_field(jr.get_inherited(this, "InputToGameKeyMapping", "commonStrings"), "EXCEPTION"), this, jr.get_field(jr.get_inherited(this, "InputToGameKeyMapping", "commonStrings"), "INIT"), l_t])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_m20__getinstanceforcanvas(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_canvas, l_id] = jargs
    let l_id = jr.as_i(l_id)
    jr.method(fn() {
            case jr.truth(case jr.truth(jr.ge(l_id, jr.JInt(0))) { True -> jr.lt(l_id, jr.alen(jr.get_field(this, "platformToGameKeyMapping"))) False -> jr.JBool(False) }) {
            True -> {
            jr.ret(jr.aget(jr.get_field(this, "platformToGameKeyMapping"), l_id))
            Nil
        }
            False -> case jr.truth(case jr.truth(jr.lt(l_id, jr.JInt(0))) { True -> jr.lt(jr.neg(l_id), jr.alen(jr.get_field(this, "negativePlatformToGameKeyMapping"))) False -> jr.JBool(False) }) {
            True -> {
            jr.ret(jr.aget(jr.get_field(this, "negativePlatformToGameKeyMapping"), jr.neg(l_id)))
            Nil
        }
            False -> {
            jr.ret(jr.get_field(jr.get_field(this, "gameKeyFactory"), "NONE"))
            Nil
        }
        }
        }
        jr.JNull
    })
}

fn c1_m21__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_id] = jargs
    let l_id = jr.as_i(l_id)
    jr.method(fn() {
            case jr.truth(case jr.truth(jr.ge(l_id, jr.JInt(0))) { True -> jr.lt(l_id, jr.alen(jr.get_field(this, "platformToGameKeyMapping"))) False -> jr.JBool(False) }) {
            True -> {
            jr.ret(jr.aget(jr.get_field(this, "platformToGameKeyMapping"), l_id))
            Nil
        }
            False -> case jr.truth(case jr.truth(jr.lt(l_id, jr.JInt(0))) { True -> jr.lt(jr.neg(l_id), jr.alen(jr.get_field(this, "negativePlatformToGameKeyMapping"))) False -> jr.JBool(False) }) {
            True -> {
            jr.ret(jr.aget(jr.get_field(this, "negativePlatformToGameKeyMapping"), jr.neg(l_id)))
            Nil
        }
            False -> {
            jr.ret(jr.get_field(jr.get_field(this, "gameKeyFactory"), "NONE"))
            Nil
        }
        }
        }
        jr.JNull
    })
}

fn c1_jinit7(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("InputMapping", this, [])
    c1_jfields(this)
        jr.call(jr.get_inherited(this, "InputToGameKeyMapping", "logUtil"), "putF_3", [jr.get_field(jr.get_inherited(this, "InputToGameKeyMapping", "commonStrings"), "START"), this, jr.get_field(jr.get_inherited(this, "InputToGameKeyMapping", "commonStrings"), "CONSTRUCTOR")])
        jr.call(this, "clear_0", [])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "InputToGameKeyMapping",
        "org.allbinary.game.input.mapping.InputToGameKeyMapping",
        "InputMapping",
        [],
        False,
        [#("gameKeyFactory", jr.JNull), #("mappedGameKeys", jr.JNull), #("platformToGameKeyMapping", jr.JNull), #("negativePlatformToGameKeyMapping", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getNullInstance_0", [], True, c1_m2__getnullinstance), 
            jr.Method("clear_0", [], False, c1_m8__clear), 
            jr.Method("removeAll_0", [], False, c1_m9__removeall), 
            jr.Method("addMapping_1", ["InputToGameKeyMapping"], False, c1_m10__addmapping), 
            jr.Method("addAll_2", ["Input", "BasicArrayList"], False, c1_m11__addall), 
            jr.Method("add_2", ["Input", "Input"], False, c1_m12__add), 
            jr.Method("remove_2", ["Input", "Input"], False, c1_m13__remove), 
            jr.Method("set_2", ["Input", "Input"], False, c1_m14__set), 
            jr.Method("getMaxMappable_0", [], False, c1_m15__getmaxmappable), 
            jr.Method("getReverseInstance_1", ["int"], False, c1_m16__getreverseinstance), 
            jr.Method("initGameKey_2", ["Canvas", "GameKey"], False, c1_m17__initgamekey), 
            jr.Method("getSmallestCanvasGameKeyCode_1", ["Canvas"], False, c1_m18__getsmallestcanvasgamekeycode), 
            jr.Method("init_1", ["Canvas"], False, c1_m19__init), 
            jr.Method("getInstanceForCanvas_2", ["Canvas", "int"], False, c1_m20__getinstanceforcanvas), 
            jr.Method("getInstance_1", ["int"], False, c1_m21__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit7)],
        c1_jfields,
        c1_jclinit,
    )
}

