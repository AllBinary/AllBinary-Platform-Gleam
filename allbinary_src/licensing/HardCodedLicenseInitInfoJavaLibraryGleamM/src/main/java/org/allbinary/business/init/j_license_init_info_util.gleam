// Generated Code Do Not Modify
// package org.allbinary.business.init
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class LicenseInitInfoUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "INITFILENAME", jr.JStr("licenseinitdata.dat"))
    jr.set_field(this, "ABOUT", jr.JStr("about"))
    jr.set_field(this, "PRIVACY_POLICY", jr.JStr("privacy_policy"))
    jr.set_field(this, "OFFICIAL_ALLBINARY_SERVICES_SERVER", jr.JStr("https://services.allbinary.com/LicServ/serverssl.php"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("LicenseInitInfoUtil", "instance", jr.new("LicenseInitInfoUtil", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("LicenseInitInfoUtil", "instance")
}

fn c1_m7__setfilepath(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_file_path] = jargs
    jr.JNull
}

fn c1_m9__write(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_init_data] = jargs
    jr.JNull
}

fn c1_m10__read(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call(this, "readAgain_1", [jr.JInt(0)])
}

fn c1_m11__readagain(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_initialize_counter] = jargs
    let l_initialize_counter = jr.as_i(l_initialize_counter)
        let l_license_init_info = jr.new("LicenseInitInfo", [])
        jr.call(l_license_init_info, "clearServers_0", [])
        jr.call(l_license_init_info, "addServer_1", [jr.get_field(this, "OFFICIAL_ALLBINARY_SERVICES_SERVER")])
    l_license_init_info
}

fn c1_jinit8(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "LicenseInitInfoUtil",
        "org.allbinary.business.init.LicenseInitInfoUtil",
        "Object",
        [],
        False,
        [#("INITFILENAME", jr.JNull), #("ABOUT", jr.JNull), #("PRIVACY_POLICY", jr.JNull), #("OFFICIAL_ALLBINARY_SERVICES_SERVER", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("setFilePath_1", ["String"], False, c1_m7__setfilepath), 
            jr.Method("write_1", ["LicenseInitInfo"], False, c1_m9__write), 
            jr.Method("read_0", [], False, c1_m10__read), 
            jr.Method("readAgain_1", ["int"], False, c1_m11__readagain), 
            jr.Method("jinit_0", [], False, c1_jinit8)],
        c1_jfields,
        c1_jclinit,
    )
}

