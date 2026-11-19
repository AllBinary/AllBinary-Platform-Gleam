// Generated Code Do Not Modify
// package org.allbinary.media.audio
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class SoundStrings

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "STOP_ALL", jr.JStr("stopAll"))
    jr.set_field(this, "CLOSE_ALL", jr.JStr("closeAll"))
    jr.set_field(this, "SOUND", jr.JStr(" Sound: "))
    jr.set_field(this, "INIT_SOUND", jr.JStr("Initializing Sound: "))
    jr.set_field(this, "STOPPING_SOUND", jr.JStr("Stopping Sound: "))
    jr.set_field(this, "CLOSING_SOUND", jr.JStr("Closing Sound: "))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("SoundStrings", "instance", jr.new("SoundStrings", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("SoundStrings", "instance")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "SoundStrings",
        "org.allbinary.media.audio.SoundStrings",
        "Object",
        [],
        False,
        [#("STOP_ALL", jr.JNull), #("CLOSE_ALL", jr.JNull), #("SOUND", jr.JNull), #("INIT_SOUND", jr.JNull), #("STOPPING_SOUND", jr.JNull), #("CLOSING_SOUND", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

