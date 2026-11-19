// Generated Code Do Not Modify
// package javax.microedition.lcdui
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class PostLoadPlatformImage

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("PostLoadPlatformImage", "instance", jr.new("PostLoadPlatformImage", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("PostLoadPlatformImage", "instance")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("PlatformImage", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "PostLoadPlatformImage",
        "javax.microedition.lcdui.PostLoadPlatformImage",
        "PlatformImage",
        [],
        False,
        [],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

