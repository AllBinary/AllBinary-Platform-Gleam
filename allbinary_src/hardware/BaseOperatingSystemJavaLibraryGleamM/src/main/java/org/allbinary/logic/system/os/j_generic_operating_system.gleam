// Generated Code Do Not Modify
// package org.allbinary.logic.system.os
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GenericOperatingSystem

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "characterSet", jr.new("CharacterSet", []))
    jr.set_field(this, "scalable", jr.JBool(False))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m7__getname(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "osName")
}

fn c1_m8__getversion(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "osVersion")
}

fn c1_m9__getarch(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "osArch")
}

fn c1_m10__getcharacterset(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "characterSet")
}

fn c1_m11__isoverscan(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JBool(False)
}

fn c1_m12__getoverscanxpercent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.JInt(100))
}

fn c1_m13__getoverscanypercent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.JInt(100))
}

fn c1_m14__isscalable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "scalable")
}

fn c1_m15__isautohide(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JBool(False)
}

fn c1_m16__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l__n_e_w___l_i_n_e = jr.get_field(jr.call_static("CommonSeps", "getInstance_0", []), "NEW_LINE")
        let l_os_buffer = jr.new("StringMaker", [])
        jr.call(l_os_buffer, "append_1", [jr.JStr("Operating System Info: \n")])
        jr.call(l_os_buffer, "append_1", [jr.call(this, "getName_0", [])])
        jr.call(l_os_buffer, "append_1", [l__n_e_w___l_i_n_e])
        jr.call(l_os_buffer, "append_1", [jr.call(this, "getArch_0", [])])
        jr.call(l_os_buffer, "append_1", [l__n_e_w___l_i_n_e])
        jr.call(l_os_buffer, "append_1", [jr.call(this, "getVersion_0", [])])
        jr.call(l_os_buffer, "append_1", [l__n_e_w___l_i_n_e])
        jr.call(l_os_buffer, "append_1", [jr.call(jr.call_static("StringUtil", "getInstance_0", []), "toString_1", [jr.call(this, "getCharacterSet_0", [])])])
        jr.call(l_os_buffer, "append_1", [l__n_e_w___l_i_n_e])
    jr.call(l_os_buffer, "toString_0", [])
}

fn c1_jinit6(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
        let l_system_properties = jr.call_static("SystemProperties", "getInstance_0", [])
        let l_string_validation_util = jr.call_static("StringValidationUtil", "getInstance_0", [])
        let l__e_m_p_t_y___s_t_r_i_n_g = jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING")
        case jr.truth(jr.call(l_string_validation_util, "isEmpty_1", [jr.call(l_system_properties, "getName_0", [])])) {
            True -> {
            jr.set_field(this, "osName", l__e_m_p_t_y___s_t_r_i_n_g)
            Nil
        }
            False -> {
            jr.set_field(this, "osName", jr.call(l_system_properties, "getName_0", []))
            Nil
        }
        }
        case jr.truth(jr.call(l_string_validation_util, "isEmpty_1", [jr.call(l_system_properties, "getArch_0", [])])) {
            True -> {
            jr.set_field(this, "osArch", l__e_m_p_t_y___s_t_r_i_n_g)
            Nil
        }
            False -> {
            jr.set_field(this, "osArch", jr.call(l_system_properties, "getArch_0", []))
            Nil
        }
        }
        case jr.truth(jr.call(l_string_validation_util, "isEmpty_1", [jr.call(l_system_properties, "getVersion_0", [])])) {
            True -> {
            jr.set_field(this, "osVersion", l__e_m_p_t_y___s_t_r_i_n_g)
            Nil
        }
            False -> {
            jr.set_field(this, "osVersion", jr.call(l_system_properties, "getVersion_0", []))
            Nil
        }
        }
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GenericOperatingSystem",
        "org.allbinary.logic.system.os.GenericOperatingSystem",
        "Object",
        ["OperatingSystemInterface"],
        False,
        [#("osName", jr.JNull), #("osArch", jr.JNull), #("osVersion", jr.JNull), #("characterSet", jr.JNull), #("scalable", jr.JBool(False))],
        [],
        [
            jr.Method("getName_0", [], False, c1_m7__getname), 
            jr.Method("getVersion_0", [], False, c1_m8__getversion), 
            jr.Method("getArch_0", [], False, c1_m9__getarch), 
            jr.Method("getCharacterSet_0", [], False, c1_m10__getcharacterset), 
            jr.Method("isOverScan_0", [], False, c1_m11__isoverscan), 
            jr.Method("getOverScanXPercent_0", [], False, c1_m12__getoverscanxpercent), 
            jr.Method("getOverScanYPercent_0", [], False, c1_m13__getoverscanypercent), 
            jr.Method("isScalable_0", [], False, c1_m14__isscalable), 
            jr.Method("isAutoHide_0", [], False, c1_m15__isautohide), 
            jr.Method("toString_0", [], False, c1_m16__tostring), 
            jr.Method("jinit_0", [], False, c1_jinit6)],
        c1_jfields,
        c1_jclinit,
    )
}

