// Generated Code Do Not Modify
// package org.allbinary.graphics.paint
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class PaintableComposite

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        {
            let l_index = jr.cell(jr.as_i(jr.sub(jr.alen(jr.get_field(this, "paintableArray")), jr.JInt(1))))
            jr.for_loop("", fn() { jr.ge(jr.get(l_index), jr.JInt(0)) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, True) Nil }, fn() {
            jr.call(jr.aget(jr.get_field(this, "paintableArray"), jr.get(l_index)), "paint_1", [l_graphics])
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_m4__paintthreed(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        {
            let l_index = jr.cell(jr.as_i(jr.sub(jr.alen(jr.get_field(this, "paintableArray")), jr.JInt(1))))
            jr.for_loop("", fn() { jr.ge(jr.get(l_index), jr.JInt(0)) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, True) Nil }, fn() {
            jr.call(jr.aget(jr.get_field(this, "paintableArray"), jr.get(l_index)), "paintThreed_1", [l_graphics])
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_paintable_array] = jargs
    jr.super_init("Paintable", this, [])
    c1_jfields(this)
        jr.set_field(this, "paintableArray", l_paintable_array)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "PaintableComposite",
        "org.allbinary.graphics.paint.PaintableComposite",
        "Paintable",
        [],
        False,
        [#("paintableArray", jr.JNull)],
        [],
        [
            jr.Method("paint_1", ["Graphics"], False, c1_m3__paint), 
            jr.Method("paintThreed_1", ["Graphics"], False, c1_m4__paintthreed), 
            jr.Method("jinit_1", ["PaintableInterfaceArr"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

