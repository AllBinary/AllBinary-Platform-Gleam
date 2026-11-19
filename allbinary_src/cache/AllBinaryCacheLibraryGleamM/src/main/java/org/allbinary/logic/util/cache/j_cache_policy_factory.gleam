// Generated Code Do Not Modify
// package org.allbinary.logic.util.cache
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CachePolicyFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "NAME", jr.JStr("lru"))
    jr.set_field(this, "MAX_TIME_THOUSAND_MAX", jr.new("CachePolicy", [jr.get_field(this, "NAME"), jr.get_static("Long", "MAX_VALUE"), jr.JInt(1000)]))
    jr.set_field(this, "THIRTY_MINUTES_TEN_THOUSAND_MAX", jr.new("CachePolicy", [jr.get_field(this, "NAME"), jr.mul(jr.mul(jr.JInt(1000), jr.JInt(60)), jr.JInt(30)), jr.JInt(10000)]))
    jr.set_field(this, "THIRTY_MINUTES_FIFTY_THOUSAND_MAX", jr.new("CachePolicy", [jr.get_field(this, "NAME"), jr.mul(jr.mul(jr.JInt(1000), jr.JInt(60)), jr.JInt(30)), jr.JInt(100000)]))
    jr.set_field(this, "ONE_MINUTE_FIVE_MAX", jr.new("CachePolicy", [jr.get_field(this, "NAME"), jr.mul(jr.mul(jr.JInt(1000), jr.JInt(60)), jr.JInt(1)), jr.JInt(5)]))
    jr.set_field(this, "ONE_MINUTE_TEN_MAX", jr.new("CachePolicy", [jr.get_field(this, "NAME"), jr.mul(jr.mul(jr.JInt(1000), jr.JInt(60)), jr.JInt(1)), jr.JInt(10)]))
    jr.set_field(this, "ONE_MINUTE_ONE_HUNDRED_MAX", jr.new("CachePolicy", [jr.get_field(this, "NAME"), jr.mul(jr.mul(jr.JInt(1000), jr.JInt(60)), jr.JInt(1)), jr.JInt(100)]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("CachePolicyFactory", "instance", jr.new("CachePolicyFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("CachePolicyFactory", "instance")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CachePolicyFactory",
        "org.allbinary.logic.util.cache.CachePolicyFactory",
        "Object",
        [],
        False,
        [#("NAME", jr.JNull), #("MAX_TIME_THOUSAND_MAX", jr.JNull), #("THIRTY_MINUTES_TEN_THOUSAND_MAX", jr.JNull), #("THIRTY_MINUTES_FIFTY_THOUSAND_MAX", jr.JNull), #("ONE_MINUTE_FIVE_MAX", jr.JNull), #("ONE_MINUTE_TEN_MAX", jr.JNull), #("ONE_MINUTE_ONE_HUNDRED_MAX", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

