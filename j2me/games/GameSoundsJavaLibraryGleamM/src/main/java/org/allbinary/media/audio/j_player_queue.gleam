// Generated Code Do Not Modify
// package org.allbinary.media.audio
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class PlayerQueue

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "commonStrings", jr.call_static("CommonStrings", "getInstance_0", []))
    jr.set_field(this, "list", jr.new("BasicArrayListD", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m6__add(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_sound] = jargs
        jr.try_catch(fn() {
            case jr.truth(jr.not(jr.call(jr.get_field(this, "list"), "contains_1", [l_sound]))) {
                True -> {
                jr.call(jr.get_field(this, "list"), "add_1", [l_sound])
                Nil
            }
                False -> Nil
            }
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call_static("PreLogUtil", "put_3", [jr.get_field(jr.get_field(this, "commonStrings"), "EXCEPTION"), this, jr.get_field(jr.get_field(this, "commonStrings"), "ADD")])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_m7__process(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.method(fn() {
            let l_sound = jr.cell(jr.call_static("NoSound", "getInstance_0", []))
            jr.try_catch(fn() {
            let l_played = jr.cell(jr.JBool(False))
            case jr.truth(jr.gt(jr.call(jr.get_field(this, "list"), "size_0", []), jr.JInt(0))) {
                True -> {
                jr.set(l_sound, jr.call(jr.get_field(this, "list"), "removeAt_1", [jr.JInt(0)]))
                case jr.truth(jr.ne(jr.get(l_sound), jr.JNull)) {
                    True -> {
                    jr.call(jr.call(jr.get(l_sound), "getPlayerP_0", []), "start_0", [])
                    Nil
                }
                    False -> Nil
                }
                jr.while_loop("", fn() { jr.gt(jr.call(jr.get_field(this, "list"), "size_0", []), jr.get_field(this, "max")) }, fn() {
                    jr.call(jr.get_field(this, "list"), "removeAt_1", [jr.JInt(0)])
                    Nil
                })
                jr.set(l_played, jr.JBool(True))
                Nil
            }
                False -> Nil
            }
            jr.ret(jr.get(l_played))
            Nil
        }, [#(["Exception"], fn(l_e) { {
            let l_resource = jr.cell(jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"))
            case jr.truth(jr.ne(jr.get(l_sound), jr.JNull)) {
                True -> {
                jr.set(l_resource, jr.call(jr.get(l_sound), "getResource_0", []))
                Nil
            }
                False -> Nil
            }
            jr.call_static("PreLogUtil", "put_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(jr.get_field(this, "commonStrings"), "EXCEPTION_LABEL")]), "append_1", [jr.get(l_resource)]), "toString_0", []), this, jr.get_field(jr.get_field(this, "commonStrings"), "PROCESS")])
            jr.ret(jr.JBool(False))
            Nil
        } })], fn() { Nil })
        jr.JNull
    })
}

fn c1_m8__clear(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "list"), "clear_0", [])
    jr.JNull
}

fn c1_m9__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_static("PlayerQueue", "TOTAL")]), "appendint_1", [jr.call(jr.get_field(this, "list"), "size_0", [])]), "toString_0", [])
}

fn c1_jinit5(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_max] = jargs
    let l_max = jr.as_i(l_max)
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "max", jr.as_i(l_max))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "PlayerQueue",
        "org.allbinary.media.audio.PlayerQueue",
        "Object",
        [],
        False,
        [#("commonStrings", jr.JNull), #("list", jr.JNull), #("max", jr.JInt(0))],
        [#("TOTAL", jr.JStr("Sounds In Queue: "))],
        [
            jr.Method("add_1", ["Sound"], False, c1_m6__add), 
            jr.Method("process_0", [], False, c1_m7__process), 
            jr.Method("clear_0", [], False, c1_m8__clear), 
            jr.Method("toString_0", [], False, c1_m9__tostring), 
            jr.Method("jinit_1", ["int"], False, c1_jinit5)],
        c1_jfields,
        c1_jclinit,
    )
}

