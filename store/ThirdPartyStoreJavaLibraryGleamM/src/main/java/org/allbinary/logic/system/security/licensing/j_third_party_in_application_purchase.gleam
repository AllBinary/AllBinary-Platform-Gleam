// Generated Code Do Not Modify
// package org.allbinary.logic.system.security.licensing
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ThirdPartyInApplicationPurchase

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__ispurchased(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_lockable_feature] = jargs
    jr.JBool(False)
}

fn c1_m2__oncreate(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_any_type, l_state_object] = jargs
    jr.JNull
}

fn c1_m3__ondestroy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m4__onstart(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m5__onactivityresult(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_request_code, l_result_code, l_data_object] = jargs
    let l_request_code = jr.as_i(l_request_code)
    let l_result_code = jr.as_i(l_result_code)
    jr.JNull
}

fn c1_m6__onsaveinstancestate(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_any_type] = jargs
    jr.JNull
}

fn c1_m7__onstop(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m8__requestpurchase(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_lockable_feature] = jargs
    jr.JNull
}

fn c1_m9__requestreceipts(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m10__add(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_lockable_feature] = jargs
    jr.JNull
}

fn c1_m11__getusername(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING")
}

fn c1_m12__isenabled(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JBool(False)
}

fn c1_m13__requestproducts(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ThirdPartyInApplicationPurchase",
        "org.allbinary.logic.system.security.licensing.ThirdPartyInApplicationPurchase",
        "Object",
        ["ThirdPartyInApplicationPurchaseInterface"],
        False,
        [],
        [],
        [
            jr.Method("isPurchased_1", ["LockableFeature"], False, c1_m1__ispurchased), 
            jr.Method("onCreate_2", ["Object", "Object"], False, c1_m2__oncreate), 
            jr.Method("onDestroy_0", [], False, c1_m3__ondestroy), 
            jr.Method("onStart_0", [], False, c1_m4__onstart), 
            jr.Method("onActivityResult_3", ["int", "int", "Object"], False, c1_m5__onactivityresult), 
            jr.Method("onSaveInstanceState_1", ["Object"], False, c1_m6__onsaveinstancestate), 
            jr.Method("onStop_0", [], False, c1_m7__onstop), 
            jr.Method("requestPurchase_1", ["LockableFeature"], False, c1_m8__requestpurchase), 
            jr.Method("requestReceipts_0", [], False, c1_m9__requestreceipts), 
            jr.Method("add_1", ["LockableFeature"], False, c1_m10__add), 
            jr.Method("getUserName_0", [], False, c1_m11__getusername), 
            jr.Method("isEnabled_0", [], False, c1_m12__isenabled), 
            jr.Method("requestProducts_0", [], False, c1_m13__requestproducts), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

