// Generated Code Do Not Modify
// package org.allbinary.audio
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AudioContentTypeDataFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "MIME_AUDIO_TONE", jr.new("AudioContentTypeData", [jr.JStr("audio/x-tone-seq")]))
    jr.set_field(this, "MIME_AUDIO_AMR", jr.new("AudioContentTypeData", [jr.JStr("audio/amr")]))
    jr.set_field(this, "MIME_AUDIO_AMR_WB", jr.new("AudioContentTypeData", [jr.JStr("audio/amr-wb")]))
    jr.set_field(this, "MIME_AUDIO_WAV", jr.new("AudioContentTypeData", [jr.JStr("audio/x-wav")]))
    jr.set_field(this, "MIME_AUDIO_MIDI", jr.new("AudioContentTypeData", [jr.JStr("audio/midi")]))
    jr.set_field(this, "MIME_AUDIO_SP_MIDI", jr.new("AudioContentTypeData", [jr.JStr("audio/sp-midi")]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("AudioContentTypeDataFactory", "instance", jr.new("AudioContentTypeDataFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("AudioContentTypeDataFactory", "instance")
}

fn c1_jinit9(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AudioContentTypeDataFactory",
        "org.allbinary.audio.AudioContentTypeDataFactory",
        "Object",
        [],
        False,
        [#("MIME_AUDIO_TONE", jr.JNull), #("MIME_AUDIO_AMR", jr.JNull), #("MIME_AUDIO_AMR_WB", jr.JNull), #("MIME_AUDIO_WAV", jr.JNull), #("MIME_AUDIO_MIDI", jr.JNull), #("MIME_AUDIO_SP_MIDI", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit9)],
        c1_jfields,
        c1_jclinit,
    )
}

