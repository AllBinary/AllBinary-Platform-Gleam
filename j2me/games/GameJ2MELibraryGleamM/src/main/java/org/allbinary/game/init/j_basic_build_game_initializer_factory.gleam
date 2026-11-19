// Generated Code Do Not Modify
// package org.allbinary.game.init
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BasicBuildGameInitializerFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("BasicBuildGameInitializerFactory", "NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY", jr.new("BasicBuildGameInitializerFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("BaseGameInitialization", "NULL_BASE_GAME_INITIALIZATION")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "BasicBuildGameInitializerFactory",
        "org.allbinary.game.init.BasicBuildGameInitializerFactory",
        "Object",
        ["GameInitializationInterfaceFactoryInterface"],
        False,
        [],
        [#("NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY", jr.JNull)],
        [
            jr.Method("getInstance_0", [], False, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

