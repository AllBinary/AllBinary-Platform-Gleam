// Generated Code Do Not Modify
// package org.allbinary.game.midlet
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class SpecialDemoGameMidlet

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__initview(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m3__preinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.new("LicenseServerInitFileUtil", []), "init_0", [])
    jr.JNull
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_client_information_factory, l_license_loading_type, l_demo_setup_factory, l_license_check_runnable_factory] = jargs
        jr.super_init("DemoGameMidlet", this, [l_client_information_factory])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "SpecialDemoGameMidlet",
        "org.allbinary.game.midlet.SpecialDemoGameMidlet",
        "DemoGameMidlet",
        [],
        False,
        [],
        [],
        [
            jr.Method("initView_0", [], False, c1_m2__initview), 
            jr.Method("preInit_0", [], False, c1_m3__preinit), 
            jr.Method("jinit_4", ["ClientInformationFactory", "LicenseLoadingType", "LicensedDemoSetupFactory", "LicenseCheckRunnableFactory"], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}

