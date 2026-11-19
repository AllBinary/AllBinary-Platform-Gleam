// Generated Code Do Not Modify
// package org.allbinary.business.advertisement
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AdvertisementProcessorInterface

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__process(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m2__start(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m3__stop(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AdvertisementProcessorInterface",
        "org.allbinary.business.advertisement.AdvertisementProcessorInterface",
        "Object",
        [],
        False,
        [],
        [],
        [
            jr.Method("process_0", [], False, c1_m1__process), 
            jr.Method("start_0", [], False, c1_m2__start), 
            jr.Method("stop_0", [], False, c1_m3__stop), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

