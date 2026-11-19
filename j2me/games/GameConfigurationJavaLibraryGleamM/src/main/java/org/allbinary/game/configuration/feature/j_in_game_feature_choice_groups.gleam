// Generated Code Do Not Modify
// package org.allbinary.game.configuration.feature
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class InGameFeatureChoiceGroups

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "hashtable", jr.call(jr.call_static("StdUtil", "getInstance_0", []), "createHashtable_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("InGameFeatureChoiceGroups", "gameFeatureChoiceGroupsExclusive", jr.new("InGameFeatureChoiceGroups", []))
    jr.set_static("InGameFeatureChoiceGroups", "gameFeatureChoiceGroupsMultiple", jr.new("InGameFeatureChoiceGroups", []))
    jr.JNull
}

fn c1_m5__getexclusiveinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("InGameFeatureChoiceGroups", "gameFeatureChoiceGroupsExclusive")
}

fn c1_m6__getmultipleinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("InGameFeatureChoiceGroups", "gameFeatureChoiceGroupsMultiple")
}

fn c1_m7__get(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "hashtable")
}

fn c1_m8__add(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_name, l_list] = jargs
        jr.call(jr.get_field(this, "hashtable"), "put_2", [l_name, l_list])
    jr.JNull
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "InGameFeatureChoiceGroups",
        "org.allbinary.game.configuration.feature.InGameFeatureChoiceGroups",
        "Object",
        [],
        False,
        [#("hashtable", jr.JNull)],
        [#("gameFeatureChoiceGroupsExclusive", jr.JNull), #("gameFeatureChoiceGroupsMultiple", jr.JNull)],
        [
            jr.Method("getExclusiveInstance_0", [], True, c1_m5__getexclusiveinstance), 
            jr.Method("getMultipleInstance_0", [], True, c1_m6__getmultipleinstance), 
            jr.Method("get_0", [], False, c1_m7__get), 
            jr.Method("add_2", ["String", "BasicArrayList"], False, c1_m8__add), 
            jr.Method("jinit_0", [], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}

