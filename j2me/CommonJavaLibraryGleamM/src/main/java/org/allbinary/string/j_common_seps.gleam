// Generated Code Do Not Modify
// package org.allbinary.string
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CommonSeps

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "NEW_LINE", jr.JStr("\n"))
    jr.set_field(this, "SEMICOLON", jr.JStr(";"))
    jr.set_field(this, "EQUALS", jr.JStr("="))
    jr.set_field(this, "SPACE", jr.JStr(" "))
    jr.set_field(this, "COMMA", jr.JStr(","))
    jr.set_field(this, "COLON", jr.JStr(":"))
    jr.set_field(this, "PERIOD", jr.JStr("."))
    jr.set_field(this, "UNDERSCORE", jr.JStr("_"))
    jr.set_field(this, "COLON_SEP", jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(this, "COLON")]), "append_1", [jr.get_field(this, "SPACE")]), "toString_0", []))
    jr.set_field(this, "COMMA_SEP", jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(this, "COMMA")]), "append_1", [jr.get_field(this, "SPACE")]), "toString_0", []))
    jr.set_field(this, "PARENTHESIS_OPEN", jr.JStr("("))
    jr.set_field(this, "PARENTHESIS_CLOSE", jr.JStr(")"))
    jr.set_field(this, "BRACE_OPEN", jr.JStr("{"))
    jr.set_field(this, "BRACE_CLOSE", jr.JStr("}"))
    jr.set_field(this, "BRACKET_OPEN", jr.JStr("["))
    jr.set_field(this, "BRACKET_CLOSE", jr.JStr("]"))
    jr.set_field(this, "DASH", jr.JStr("-"))
    jr.set_field(this, "PERCENT", jr.JStr("%"))
    jr.set_field(this, "AMPERSAND", jr.JStr("&"))
    jr.set_field(this, "FORWARD_SLASH", jr.JStr("/"))
    jr.set_field(this, "BACK_SLASH", jr.JStr("\\"))
    jr.set_field(this, "QUESTION", jr.JStr("?"))
    jr.set_field(this, "QUOTE", jr.JStr("\""))
    jr.set_field(this, "QUOTE_END", jr.JStr("\","))
    jr.set_field(this, "COMMENT", jr.JStr("//"))
    jr.set_field(this, "INDENT", jr.JStr("    "))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("CommonSeps", "instance", jr.new("CommonSeps", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("CommonSeps", "instance")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CommonSeps",
        "org.allbinary.string.CommonSeps",
        "Object",
        [],
        False,
        [#("NEW_LINE", jr.JNull), #("SEMICOLON", jr.JNull), #("EQUALS", jr.JNull), #("SPACE", jr.JNull), #("COMMA", jr.JNull), #("COLON", jr.JNull), #("PERIOD", jr.JNull), #("UNDERSCORE", jr.JNull), #("COLON_SEP", jr.JNull), #("COMMA_SEP", jr.JNull), #("PARENTHESIS_OPEN", jr.JNull), #("PARENTHESIS_CLOSE", jr.JNull), #("BRACE_OPEN", jr.JNull), #("BRACE_CLOSE", jr.JNull), #("BRACKET_OPEN", jr.JNull), #("BRACKET_CLOSE", jr.JNull), #("DASH", jr.JNull), #("PERCENT", jr.JNull), #("AMPERSAND", jr.JNull), #("FORWARD_SLASH", jr.JNull), #("BACK_SLASH", jr.JNull), #("QUESTION", jr.JNull), #("QUOTE", jr.JNull), #("QUOTE_END", jr.JNull), #("COMMENT", jr.JNull), #("INDENT", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

