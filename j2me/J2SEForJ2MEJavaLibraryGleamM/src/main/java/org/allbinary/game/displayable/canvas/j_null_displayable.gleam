// Generated Code Do Not Modify
// package org.allbinary.game.displayable.canvas
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class NullDisplayable

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "baseGameStatistics", jr.call_static("GameStatisticsFactory", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("NullDisplayable", "SINGLETON", jr.new("NullDisplayable", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("NullDisplayable", "SINGLETON")
}

fn c1_m5__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        jr.call(jr.get_field(this, "baseGameStatistics"), "nextRefresh_0", [])
    jr.JNull
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Canvas", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "NullDisplayable",
        "org.allbinary.game.displayable.canvas.NullDisplayable",
        "Canvas",
        [],
        False,
        [#("baseGameStatistics", jr.JNull)],
        [#("SINGLETON", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("paint_1", ["Graphics"], False, c1_m5__paint), 
            jr.Method("jinit_0", [], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

