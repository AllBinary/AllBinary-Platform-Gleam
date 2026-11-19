// Generated Code Do Not Modify
// package org.allbinary.vector
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class VectorInfo

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m6__getwidth(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "width"))
}

fn c1_m7__setwidth(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_width] = jargs
    let l_width = jr.as_i(l_width)
        jr.set_field(this, "width", jr.as_i(l_width))
    jr.JNull
}

fn c1_m8__getheight(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "height"))
}

fn c1_m9__setheight(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_height] = jargs
    let l_height = jr.as_i(l_height)
        jr.set_field(this, "height", jr.as_i(l_height))
    jr.JNull
}

fn c1_m10__getpoints(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "points")
}

fn c1_m11__setpoints(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_points] = jargs
        jr.set_field(this, "points", l_points)
    jr.JNull
}

fn c1_m12__gettotalframes(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "totalFrames"))
}

fn c1_m13__settotalframes(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_total_frames] = jargs
    let l_total_frames = jr.as_i(l_total_frames)
        jr.set_field(this, "totalFrames", jr.as_i(l_total_frames))
    jr.JNull
}

fn c1_jinit5(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_width, l_height, l_points, l_total_frames] = jargs
    let l_width = jr.as_i(l_width)
    let l_height = jr.as_i(l_height)
    let l_total_frames = jr.as_i(l_total_frames)
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "width", jr.as_i(l_width))
        jr.set_field(this, "height", jr.as_i(l_height))
        jr.set_field(this, "points", l_points)
        jr.set_field(this, "totalFrames", jr.as_i(l_total_frames))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "VectorInfo",
        "org.allbinary.vector.VectorInfo",
        "Object",
        [],
        False,
        [#("width", jr.JInt(0)), #("height", jr.JInt(0)), #("points", jr.JNull), #("totalFrames", jr.JInt(0))],
        [],
        [
            jr.Method("getWidth_0", [], False, c1_m6__getwidth), 
            jr.Method("setWidth_1", ["int"], False, c1_m7__setwidth), 
            jr.Method("getHeight_0", [], False, c1_m8__getheight), 
            jr.Method("setHeight_1", ["int"], False, c1_m9__setheight), 
            jr.Method("getPoints_0", [], False, c1_m10__getpoints), 
            jr.Method("setPoints_1", ["intArrArr"], False, c1_m11__setpoints), 
            jr.Method("getTotalFrames_0", [], False, c1_m12__gettotalframes), 
            jr.Method("setTotalFrames_1", ["int"], False, c1_m13__settotalframes), 
            jr.Method("jinit_4", ["int", "int", "intArrArr", "int"], False, c1_jinit5)],
        c1_jfields,
        c1_jclinit,
    )
}

