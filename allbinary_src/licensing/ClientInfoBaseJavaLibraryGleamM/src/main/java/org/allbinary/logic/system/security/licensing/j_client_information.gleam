// Generated Code Do Not Modify
// package org.allbinary.logic.system.security.licensing
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ClientInformation

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "operatingSystemInterface", jr.get_static("NoOperatingSystem", "NO_OPERATING_SYSTEM"))
    jr.set_field(this, "tsUtil", jr.call_static("TsUtil", "getInstance_0", []))
    jr.set_field(this, "hardSale", jr.JBool(True))
    jr.set_field(this, "licenseId", jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"))
    jr.set_field(this, "licenseServers", jr.call(jr.call_static("BasicArrayListUtil", "getInstance_0", []), "getImmutableInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m11__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m12__getoperatingsysteminterface(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "operatingSystemInterface")
}

fn c1_m13__getname(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "name")
}

fn c1_m14__getspecialname(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "specialName")
}

fn c1_m15__getversion(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "version")
}

fn c1_m16__getlicenseid(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "licenseId")
}

fn c1_m17__getlicenseservers(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "licenseServers")
}

fn c1_m18__getlicenseserver(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_index] = jargs
    let l_index = jr.as_i(l_index)
    jr.aget(jr.get_field(jr.get_field(this, "licenseServers"), "objectArray"), l_index)
}

fn c1_m19__getnumberoflicenseservers(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.call(jr.get_field(this, "licenseServers"), "size_0", []))
}

fn c1_m20__tohashtable(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_abe_client_information_data = jr.call_static("AbeClientInformationData", "getInstance_0", [])
        let l_generic_operating_system = jr.call(this, "getOperatingSystemInterface_0", [])
        let l_client_info_hashtable = jr.call(jr.call_static("StdUtil", "getInstance_0", []), "createHashtable_0", [])
        jr.call(l_client_info_hashtable, "put_2", [jr.get_field(l_abe_client_information_data, "NAME"), jr.get_field(this, "name")])
        jr.call(l_client_info_hashtable, "put_2", [jr.get_field(l_abe_client_information_data, "VERSION"), jr.get_field(this, "version")])
        jr.call(l_client_info_hashtable, "put_2", [jr.get_field(l_abe_client_information_data, "SPECIALNAME"), jr.get_field(this, "specialName")])
        jr.call(l_client_info_hashtable, "put_2", [jr.get_field(l_abe_client_information_data, "LICENSEID"), jr.call(this, "getLicenseId_0", [])])
        jr.call(l_client_info_hashtable, "put_2", [jr.get_field(l_abe_client_information_data, "OSNAME"), jr.call(l_generic_operating_system, "getName_0", [])])
        jr.call(l_client_info_hashtable, "put_2", [jr.get_field(l_abe_client_information_data, "OSARCH"), jr.call(l_generic_operating_system, "getArch_0", [])])
        jr.call(l_client_info_hashtable, "put_2", [jr.get_field(l_abe_client_information_data, "OSVERSION"), jr.call(l_generic_operating_system, "getVersion_0", [])])
        jr.call(l_client_info_hashtable, "put_2", [jr.get_field(l_abe_client_information_data, "OS"), jr.call(l_generic_operating_system, "toString_0", [])])
        let l_hardware_interface = jr.call(jr.call_static("SystemHardwareFactory", "getInstance_0", []), "getInstance_1", [l_generic_operating_system])
        let l_hardware_string = jr.call(l_hardware_interface, "toString_0", [])
        jr.call(l_client_info_hashtable, "put_2", [jr.get_field(l_abe_client_information_data, "HARDWARE"), l_hardware_string])
    l_client_info_hashtable
}

fn c1_m21__issameid(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_alicense_id] = jargs
    jr.method(fn() {
            case jr.truth(jr.eq(jr.call(jr.get_field(this, "tsUtil"), "compareTo_2", [jr.call(this, "getLicenseId_0", []), l_alicense_id]), jr.JInt(0))) {
            True -> {
            jr.ret(jr.JBool(True))
            Nil
        }
            False -> {
            jr.ret(jr.JBool(False))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_m22__islargerordifferentserverlist(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_list] = jargs
    jr.method(fn() {
            let l_size = jr.as_i(jr.sub(jr.call(l_list, "size_0", []), jr.JInt(1)))
            let l_current_size = jr.as_i(jr.sub(jr.call(jr.get_field(this, "licenseServers"), "size_0", []), jr.JInt(1)))
            case jr.truth(jr.gt(l_size, l_current_size)) {
            True -> {
            jr.ret(jr.JBool(True))
            Nil
        }
            False -> Nil
        }
            {
            let l_index = jr.cell(jr.as_i(l_size))
            jr.for_loop("", fn() { jr.ge(jr.get(l_index), jr.JInt(0)) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, True) Nil }, fn() {
            let l_new_server_name = jr.aget(jr.get_field(l_list, "objectArray"), jr.get(l_index))
            {
                let l_index2 = jr.cell(jr.as_i(l_current_size))
                jr.for_loop("", fn() { jr.ge(jr.get(l_index2), jr.JInt(0)) }, fn() { jr.incr(fn() { jr.get(l_index2) }, fn(jv) { jr.set(l_index2, jv) }, -1, True) Nil }, fn() {
                let l_next_old_server_name = jr.aget(jr.get_field(jr.get_field(this, "licenseServers"), "objectArray"), jr.get(l_index))
                case jr.truth(jr.ne(jr.call(jr.get_field(this, "tsUtil"), "compareTo_2", [l_new_server_name, l_next_old_server_name]), jr.JInt(0))) {
                    True -> {
                    jr.ret(jr.JBool(True))
                    Nil
                }
                    False -> Nil
                }
                Nil
            })
                Nil
            }
            Nil
        })
            Nil
        }
            jr.ret(jr.JBool(False))
        jr.JNull
    })
}

fn c1_m23__sethardsale(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_hard_sale] = jargs
        jr.set_field(this, "hardSale", l_hard_sale)
    jr.JNull
}

fn c1_m24__ishardsale(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "hardSale")
}

fn c1_m25__setoperatingsysteminterface(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_operating_system_interface] = jargs
        jr.set_field(this, "operatingSystemInterface", l_operating_system_interface)
    jr.JNull
}

fn c1_m26__setlicenseid(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_license_id] = jargs
        jr.set_field(this, "licenseId", l_license_id)
    jr.JNull
}

fn c1_m27__setlicenseservers(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_license_servers] = jargs
        jr.set_field(this, "licenseServers", l_license_servers)
    jr.JNull
}

fn c1_m28__toshortstring(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "shortName")
}

fn c1_jinit10(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_name, l_version, l_special_name, l_short_name] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "name", l_name)
        jr.set_field(this, "version", l_version)
        jr.set_field(this, "specialName", l_special_name)
        jr.set_field(this, "shortName", jr.call(jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [l_short_name]), "append_1", [jr.get_field(jr.call_static("CommonSeps", "getInstance_0", []), "UNDERSCORE")]), "append_1", [l_version]), "toString_0", []))
        jr.call(this, "init_0", [])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ClientInformation",
        "org.allbinary.logic.system.security.licensing.ClientInformation",
        "Object",
        ["AbeClientInformationInterface"],
        False,
        [#("operatingSystemInterface", jr.JNull), #("tsUtil", jr.JNull), #("name", jr.JNull), #("shortName", jr.JNull), #("version", jr.JNull), #("specialName", jr.JNull), #("hardSale", jr.JBool(False)), #("licenseId", jr.JNull), #("licenseServers", jr.JNull)],
        [],
        [
            jr.Method("init_0", [], False, c1_m11__init), 
            jr.Method("getOperatingSystemInterface_0", [], False, c1_m12__getoperatingsysteminterface), 
            jr.Method("getName_0", [], False, c1_m13__getname), 
            jr.Method("getSpecialName_0", [], False, c1_m14__getspecialname), 
            jr.Method("getVersion_0", [], False, c1_m15__getversion), 
            jr.Method("getLicenseId_0", [], False, c1_m16__getlicenseid), 
            jr.Method("getLicenseServers_0", [], False, c1_m17__getlicenseservers), 
            jr.Method("getLicenseServer_1", ["int"], False, c1_m18__getlicenseserver), 
            jr.Method("getNumberOfLicenseServers_0", [], False, c1_m19__getnumberoflicenseservers), 
            jr.Method("toHashtable_0", [], False, c1_m20__tohashtable), 
            jr.Method("isSameId_1", ["String"], False, c1_m21__issameid), 
            jr.Method("isLargerOrDifferentServerList_1", ["BasicArrayList"], False, c1_m22__islargerordifferentserverlist), 
            jr.Method("setHardSale_1", ["boolean"], False, c1_m23__sethardsale), 
            jr.Method("isHardSale_0", [], False, c1_m24__ishardsale), 
            jr.Method("setOperatingSystemInterface_1", ["GenericOperatingSystem"], False, c1_m25__setoperatingsysteminterface), 
            jr.Method("setLicenseId_1", ["String"], False, c1_m26__setlicenseid), 
            jr.Method("setLicenseServers_1", ["BasicArrayList"], False, c1_m27__setlicenseservers), 
            jr.Method("toShortString_0", [], False, c1_m28__toshortstring), 
            jr.Method("jinit_4", ["String", "String", "String", "String"], False, c1_jinit10)],
        c1_jfields,
        c1_jclinit,
    )
}

