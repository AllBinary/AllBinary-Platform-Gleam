// Generated Code Do Not Modify
// package org.allbinary.logic.system.security.licensing
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AbeClientInformation

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.try_catch(fn() {
            jr.call_inherited(this, "AbeClientInformation", "setOperatingSystemInterface_1", [jr.call(jr.call_static("OperatingSystemFactory", "getInstance_0", []), "getOperatingSystemInstance_0", [])])
            let l_license_init_info = jr.call(jr.call_static("LicenseInitInfoUtil", "getInstance_0", []), "read_0", [])
            jr.call_inherited(this, "AbeClientInformation", "setLicenseId_1", [jr.call(l_license_init_info, "getLicenseId_0", [])])
            jr.call_inherited(this, "AbeClientInformation", "setLicenseServers_1", [jr.call(l_license_init_info, "getServerList_0", [])])
            let l_string_validation_util = jr.call_static("StringValidationUtil", "getInstance_0", [])
            case jr.truth(jr.call(l_string_validation_util, "isEmpty_1", [jr.call_inherited(this, "AbeClientInformation", "getLicenseId_0", [])])) {
                True -> {
                let l__n_o_n_e = jr.JStr("No License Id")
                jr.call_inherited(this, "AbeClientInformation", "setLicenseId_1", [l__n_o_n_e])
                Nil
            }
                False -> Nil
            }
            let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
            jr.call_static("PreLogUtil", "put_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.JStr("Special Name: ")]), "append_1", [jr.call_inherited(this, "AbeClientInformation", "getSpecialName_0", [])]), "toString_0", []), this, jr.get_field(l_common_strings, "CONSTRUCTOR")])
            Nil
        }, [#(["Exception"], fn(l_e) { {
            let l_log_util = jr.call_static("LogUtil", "getInstance_0", [])
            let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
            jr.call(l_log_util, "put_4", [jr.get_field(l_common_strings, "EXCEPTION"), this, jr.get_field(l_common_strings, "CONSTRUCTOR"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_name, l_version, l_special_name, l_short_name] = jargs
        jr.super_init("ClientInformation", this, [l_name, l_version, l_special_name, l_short_name])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AbeClientInformation",
        "org.allbinary.logic.system.security.licensing.AbeClientInformation",
        "ClientInformation",
        [],
        False,
        [#("logUtil", jr.JNull)],
        [],
        [
            jr.Method("init_0", [], False, c1_m3__init), 
            jr.Method("jinit_4", ["String", "String", "String", "String"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

