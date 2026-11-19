// Generated Code Do Not Modify
// package org.allbinary.canvas
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GameStatisticsFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "stringBuffer", jr.new("StringMaker", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("GameStatisticsFactory", "instance", jr.new("GameStatisticsFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("GameStatisticsFactory", "instance")
}

fn c1_m4__add(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_string] = jargs
        case jr.truth(jr.gt(jr.call(jr.get_field(this, "stringBuffer"), "length_0", []), jr.JInt(12000))) {
            True -> {
            jr.call(jr.get_field(this, "stringBuffer"), "delete_2", [jr.JInt(0), jr.call(jr.get_field(this, "stringBuffer"), "length_0", [])])
            jr.call(jr.get_field(this, "stringBuffer"), "append_1", [jr.JStr("Old Stats Cleared")])
            Nil
        }
            False -> Nil
        }
        jr.call(jr.get_field(this, "stringBuffer"), "append_1", [l_string])
    jr.JNull
}

fn c1_m5__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.call_super("BaseGameStatistics", this, "toString_0", [])]), "append_1", [jr.call(jr.get_field(this, "stringBuffer"), "toString_0", [])]), "toString_0", [])
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("BaseGameStatistics", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GameStatisticsFactory",
        "org.allbinary.canvas.GameStatisticsFactory",
        "BaseGameStatistics",
        [],
        False,
        [#("stringBuffer", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("add_1", ["String"], False, c1_m4__add), 
            jr.Method("toString_0", [], False, c1_m5__tostring), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

