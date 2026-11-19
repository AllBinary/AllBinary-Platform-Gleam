// Generated Code Do Not Modify
// package org.allbinary.input.motion.button
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class TouchButtonFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "LIST", jr.call(jr.call_static("BasicArrayListUtil", "getInstance_0", []), "getImmutableInstance_0", []))
    jr.set_field(this, "list", jr.get_field(this, "LIST"))
    jr.set_field(this, "savedList", jr.get_field(this, "LIST"))
    jr.set_field(this, "saved", jr.JBool(False))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("TouchButtonFactory", "SINGLETON", jr.new("TouchButtonFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("TouchButtonFactory", "SINGLETON")
}

fn c1_m7__defaultlist(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.set_field(this, "list", jr.get_field(this, "LIST"))
        jr.call(this, "toggle_2", [jr.JBool(False), jr.get_field(this, "LIST")])
    jr.JNull
}

fn c1_m9__toggle(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_save, l_list] = jargs
        case jr.truth(jr.ne(l_list, jr.call(jr.call_static("BasicArrayListUtil", "getInstance_0", []), "getImmutableInstance_0", []))) {
            True -> {
            jr.set_field(this, "savedList", l_list)
            case jr.truth(jr.not(jr.get_field(this, "saved"))) {
                True -> {
                jr.set_field(this, "list", jr.get_field(this, "savedList"))
                Nil
            }
                False -> Nil
            }
            Nil
        }
            False -> {
            case jr.truth(l_save) {
                True -> {
                case jr.truth(jr.not(jr.get_field(this, "saved"))) {
                    True -> {
                    jr.set_field(this, "saved", jr.JBool(True))
                    jr.set_field(this, "savedList", jr.get_field(this, "list"))
                    jr.set_field(this, "list", jr.get_field(this, "LIST"))
                    Nil
                }
                    False -> {
                    Nil
                }
                }
                Nil
            }
                False -> {
                jr.set_field(this, "list", jr.get_field(this, "savedList"))
                jr.set_field(this, "saved", jr.JBool(False))
                Nil
            }
            }
            Nil
        }
        }
    jr.JNull
}

fn c1_m10__setlist(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_list] = jargs
        case jr.truth(jr.eq(l_list, jr.JNull)) {
            True -> {
            jr.throw(jr.new("Exception", [jr.JStr("Null List")]))
            Nil
        }
            False -> Nil
        }
        jr.set_field(this, "list", l_list)
    jr.JNull
}

fn c1_m11__getlist(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "list")
}

fn c1_jinit6(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "TouchButtonFactory",
        "org.allbinary.input.motion.button.TouchButtonFactory",
        "Object",
        [],
        False,
        [#("LIST", jr.JNull), #("list", jr.JNull), #("savedList", jr.JNull), #("saved", jr.JBool(False))],
        [#("SINGLETON", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("defaultList_0", [], False, c1_m7__defaultlist), 
            jr.Method("toggle_2", ["boolean", "BasicArrayList"], False, c1_m9__toggle), 
            jr.Method("setList_1", ["BasicArrayList"], False, c1_m10__setlist), 
            jr.Method("getList_0", [], False, c1_m11__getlist), 
            jr.Method("jinit_0", [], False, c1_jinit6)],
        c1_jfields,
        c1_jclinit,
    )
}

