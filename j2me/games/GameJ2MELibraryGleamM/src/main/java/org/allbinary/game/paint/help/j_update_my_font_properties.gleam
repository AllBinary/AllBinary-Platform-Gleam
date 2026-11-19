// Generated Code Do Not Modify
// package org.allbinary.game.paint.help
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class UpdateMyFontProperties

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "actionStringArray", jr.call(jr.call_static("StringUtil", "getInstance_0", []), "getArrayInstance_0", []))
    jr.set_field(this, "keymappingBeginWidthArray", jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_INT_ARRAY"))
    jr.set_field(this, "actionStringDeltaXArray", jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_INT_ARRAY"))
    jr.set_field(this, "inputDeltaXArray", jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_INT_ARRAY_ARRAY"))
    jr.set_field(this, "sepArray", jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "ONE_EMPTY_STRING_ARRAY_OF_ARRAYS"))
    jr.set_field(this, "sepWidthArray", jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_INT_ARRAY_ARRAY"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "UpdateMyFontProperties",
        "org.allbinary.game.paint.help.UpdateMyFontProperties",
        "Object",
        [],
        False,
        [#("actionStringArray", jr.JNull), #("keymappingBeginWidthArray", jr.JNull), #("actionStringDeltaXArray", jr.JNull), #("inputDeltaXArray", jr.JNull), #("sepArray", jr.JNull), #("sepWidthArray", jr.JNull), #("charHeight", jr.JInt(0))],
        [],
        [
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

