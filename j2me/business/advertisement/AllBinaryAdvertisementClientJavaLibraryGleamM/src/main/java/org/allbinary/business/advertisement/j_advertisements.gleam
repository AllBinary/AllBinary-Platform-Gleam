// Generated Code Do Not Modify
// package org.allbinary.business.advertisement
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class Advertisements

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "bannerList", jr.new("BasicArrayListD", []))
    jr.set_field(this, "pageList", jr.new("BasicArrayListD", []))
    jr.set_field(this, "myRandomFactory", jr.call_static("MyRandomFactory", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__addpage(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_advertisement_processor_interface] = jargs
        case jr.truth(jr.not(jr.call(jr.get_field(this, "pageList"), "contains_1", [l_advertisement_processor_interface]))) {
            True -> {
            jr.call(jr.get_field(this, "pageList"), "add_1", [l_advertisement_processor_interface])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m4__startrandompage(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_size = jr.as_i(jr.call(jr.get_field(this, "pageList"), "size_0", []))
        case jr.truth(jr.gt(l_size, jr.JInt(0))) {
            True -> {
            let l_random = jr.as_i(jr.call(jr.get_field(this, "myRandomFactory"), "getAbsoluteNextInt_1", [l_size]))
            let l_advertisement_processor_interface = jr.aget(jr.get_field(jr.get_field(this, "pageList"), "objectArray"), l_random)
            jr.call(l_advertisement_processor_interface, "start_0", [])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m6__processrandompage(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.call(jr.call_static("LockedUtil", "getInstance_0", []), "isLocked_0", [])) {
            True -> {
            let l_size = jr.as_i(jr.call(jr.get_field(this, "pageList"), "size_0", []))
            case jr.truth(jr.gt(l_size, jr.JInt(0))) {
                True -> {
                let l_random = jr.as_i(jr.call(jr.get_field(this, "myRandomFactory"), "getAbsoluteNextInt_1", [l_size]))
                let l_advertisement_processor_interface = jr.aget(jr.get_field(jr.get_field(this, "pageList"), "objectArray"), l_random)
                jr.call(l_advertisement_processor_interface, "process_0", [])
                Nil
            }
                False -> Nil
            }
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m7__stopallpage(this: jr.V, jargs: List(jr.V)) -> jr.V {
        {
            let l_index = jr.cell(jr.as_i(jr.call(jr.get_field(this, "pageList"), "size_0", [])))
            jr.for_loop("", fn() { jr.ge(jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, False), jr.JInt(0)) }, fn() { Nil }, fn() {
            let l_advertisement_processor_interface = jr.aget(jr.get_field(jr.get_field(this, "pageList"), "objectArray"), jr.get(l_index))
            jr.call(l_advertisement_processor_interface, "stop_0", [])
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_m8__addbanner(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_advertisement_processor_interface] = jargs
        case jr.truth(jr.not(jr.call(jr.get_field(this, "bannerList"), "contains_1", [l_advertisement_processor_interface]))) {
            True -> {
            jr.call(jr.get_field(this, "bannerList"), "add_1", [l_advertisement_processor_interface])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m9__startall(this: jr.V, jargs: List(jr.V)) -> jr.V {
        {
            let l_index = jr.cell(jr.as_i(jr.call(jr.get_field(this, "bannerList"), "size_0", [])))
            jr.for_loop("", fn() { jr.ge(jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, False), jr.JInt(0)) }, fn() { Nil }, fn() {
            let l_advertisement_processor_interface = jr.aget(jr.get_field(jr.get_field(this, "bannerList"), "objectArray"), jr.get(l_index))
            jr.call(l_advertisement_processor_interface, "start_0", [])
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_m10__stopallbanner(this: jr.V, jargs: List(jr.V)) -> jr.V {
        {
            let l_index = jr.cell(jr.as_i(jr.call(jr.get_field(this, "bannerList"), "size_0", [])))
            jr.for_loop("", fn() { jr.ge(jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, False), jr.JInt(0)) }, fn() { Nil }, fn() {
            let l_advertisement_processor_interface = jr.aget(jr.get_field(jr.get_field(this, "bannerList"), "objectArray"), jr.get(l_index))
            jr.call(l_advertisement_processor_interface, "stop_0", [])
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_m11__getbanner(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_index] = jargs
    let l_index = jr.as_i(l_index)
        let l_advertisement_processor_interface = jr.aget(jr.get_field(jr.get_field(this, "bannerList"), "objectArray"), l_index)
    l_advertisement_processor_interface
}

fn c1_m12__stopall(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(this, "stopAllBanner_0", [])
        jr.call(this, "stopAllPage_0", [])
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "Advertisements",
        "org.allbinary.business.advertisement.Advertisements",
        "Object",
        [],
        False,
        [#("bannerList", jr.JNull), #("pageList", jr.JNull), #("myRandomFactory", jr.JNull)],
        [],
        [
            jr.Method("addPage_1", ["AdvertisementProcessorInterface"], False, c1_m3__addpage), 
            jr.Method("startRandomPage_0", [], False, c1_m4__startrandompage), 
            jr.Method("processRandomPage_0", [], False, c1_m6__processrandompage), 
            jr.Method("stopAllPage_0", [], False, c1_m7__stopallpage), 
            jr.Method("addBanner_1", ["AdvertisementProcessorInterface"], False, c1_m8__addbanner), 
            jr.Method("startAll_0", [], False, c1_m9__startall), 
            jr.Method("stopAllBanner_0", [], False, c1_m10__stopallbanner), 
            jr.Method("getBanner_1", ["int"], False, c1_m11__getbanner), 
            jr.Method("stopAll_0", [], False, c1_m12__stopall), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

