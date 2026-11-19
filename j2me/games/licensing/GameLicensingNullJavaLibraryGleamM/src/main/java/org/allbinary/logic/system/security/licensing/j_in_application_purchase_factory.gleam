// Generated Code Do Not Modify
// package org.allbinary.logic.system.security.licensing
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class InApplicationPurchaseFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("InApplicationPurchaseFactory", "instance", jr.new("InApplicationPurchaseFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("InApplicationPurchaseFactory", "instance")
}

fn c1_m4__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_any_type, l_state_object] = jargs
    jr.JNull
}

fn c1_m5__oncreate(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_any_type, l_state_object] = jargs
    jr.JNull
}

fn c1_m6__onstart(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m7__onresult(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_request_code, l_result_code, l_data] = jargs
    let l_request_code = jr.as_i(l_request_code)
    let l_result_code = jr.as_i(l_result_code)
    jr.JNull
}

fn c1_m8__onsavestate(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_any_type] = jargs
    jr.JNull
}

fn c1_m9__onstop(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m10__ondestroy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m11__purchase(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_lockable_feature] = jargs
    jr.JNull
}

fn c1_m12__ispurchased(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_lockable_feature] = jargs
    jr.JBool(False)
}

fn c1_m13__add(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_lockable_feature] = jargs
    jr.JNull
}

fn c1_m14__getusername(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING")
}

fn c1_m15__isenabled(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JBool(False)
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "InApplicationPurchaseFactory",
        "org.allbinary.logic.system.security.licensing.InApplicationPurchaseFactory",
        "Object",
        [],
        False,
        [],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("init_2", ["Object", "Object"], False, c1_m4__init), 
            jr.Method("onCreate_2", ["Object", "Object"], False, c1_m5__oncreate), 
            jr.Method("onStart_0", [], False, c1_m6__onstart), 
            jr.Method("onResult_3", ["int", "int", "Object"], False, c1_m7__onresult), 
            jr.Method("onSaveState_1", ["Object"], False, c1_m8__onsavestate), 
            jr.Method("onStop_0", [], False, c1_m9__onstop), 
            jr.Method("onDestroy_0", [], False, c1_m10__ondestroy), 
            jr.Method("purchase_1", ["LockableFeature"], False, c1_m11__purchase), 
            jr.Method("isPurchased_1", ["LockableFeature"], False, c1_m12__ispurchased), 
            jr.Method("add_1", ["LockableFeature"], False, c1_m13__add), 
            jr.Method("getUserName_0", [], False, c1_m14__getusername), 
            jr.Method("isEnabled_0", [], False, c1_m15__isenabled), 
            jr.Method("jinit_0", [], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

