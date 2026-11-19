// Generated Code Do Not Modify
// package org.allbinary.layer
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AllBinaryLayer

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "viewPositionEvent", jr.new("ViewPositionEvent", [this]))
    jr.set_field(this, "viewPosition", jr.get_static("ViewPositionBase", "NULL_VIEW_POSITION"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("AllBinaryLayer", "NULL_ALLBINARY_LAYER", jr.new("AllBinaryLayer", [jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.get_static("RectangleFactory", "SINGLETON"), jr.get_static("ViewPositionBase", "NULL_VIEW_POSITION")]))
    jr.JNull
}

fn c1_m8__setposition(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_x, l_y, l_z] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    let l_z = jr.as_i(l_z)
        jr.call_super("Layer", this, "setPosition_3", [l_x, l_y, l_z])
    jr.JNull
}

fn c1_m9__movedxyz(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_dx, l_dy, l_dz] = jargs
    let l_dx = jr.as_i(l_dx)
    let l_dy = jr.as_i(l_dy)
    let l_dz = jr.as_i(l_dz)
        jr.call_super("Layer", this, "moveDXYZ_3", [l_dx, l_dy, l_dz])
    jr.JNull
}

fn c1_m10__getxp(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.call_super("Layer", this, "getXP_0", []))
}

fn c1_m11__getyp(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.call_super("Layer", this, "getYP_0", []))
}

fn c1_m12__getzp(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.call_super("Layer", this, "getZP_0", []))
}

fn c1_m13__getwidth(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.call_super("Layer", this, "getWidth_0", []))
}

fn c1_m14__getheight(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.call_super("Layer", this, "getHeight_0", []))
}

fn c1_m15__setvisible(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_visible] = jargs
        jr.call_super("Layer", this, "setVisible_1", [l_visible])
    jr.JNull
}

fn c1_m16__isvisible(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call_super("Layer", this, "isVisible_0", [])
}

fn c1_m17__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        jr.call_super("Layer", this, "paint_1", [l_graphics])
    jr.JNull
}

fn c1_m18__onchangeevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_manager_event] = jargs
    jr.JNull
}

fn c1_m19__paintthreed(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
    jr.JNull
}

fn c1_m20__getx2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.add(jr.call(this, "getXP_0", []), jr.call(this, "getWidth_0", [])))
}

fn c1_m21__gety2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.add(jr.call(this, "getYP_0", []), jr.call(this, "getHeight_0", [])))
}

fn c1_m22__getz2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.to_i(jr.add(jr.to_j(jr.call(this, "getZP_0", [])), jr.call_inherited(this, "AllBinaryLayer", "getDepth_0", []))))
}

fn c1_m23__getname(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "name")
}

fn c1_m24__sethalfwidth(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_half_width] = jargs
    let l_half_width = jr.as_i(l_half_width)
        jr.set_field(this, "halfWidth", jr.as_i(l_half_width))
    jr.JNull
}

fn c1_m25__gethalfwidth(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "halfWidth"))
}

fn c1_m26__sethalfheight(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_half_height] = jargs
    let l_half_height = jr.as_i(l_half_height)
        jr.set_field(this, "halfHeight", jr.as_i(l_half_height))
    jr.JNull
}

fn c1_m27__gethalfheight(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "halfHeight"))
}

fn c1_m28__gethalfdepth(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.div(jr.to_i(jr.call_inherited(this, "AllBinaryLayer", "getDepth_0", [])), jr.JInt(2)))
}

fn c1_m29__getviewposition(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "viewPosition")
}

fn c1_m30__setviewposition(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_view_position] = jargs
        jr.set_field(this, "viewPosition", l_view_position)
    jr.JNull
}

fn c1_m31__getgroupinterface(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(jr.call_static("BasicGroupFactory", "getInstance_0", []), "NONE_ARRAY")
}

fn c1_m32__implmentstickableinterface(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JBool(False)
}

fn c1_m33__implmentsgameinputinterface(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JBool(False)
}

fn c1_m34__implmentsartificialintelligencecompositeinterface(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JBool(False)
}

fn c1_m35__implmentscollidableinterface(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JBool(False)
}

fn c1_m36__implementsthreedinterface(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call(jr.call_static("OpenGLFeatureUtil", "getInstance_0", []), "isAnyThreed_0", [])
}

fn c1_m37__gettype(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.JInt(-1))
}

fn c1_m38__getmultiplayertype(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.JInt(-1))
}

fn c1_m40__tostringappend(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_string_buffer] = jargs
        let l_common_seps = jr.call_static("CommonSeps", "getInstance_0", [])
        let l_position_strings = jr.call_static("PositionStrings", "getInstance_0", [])
        let l_common_labels = jr.call_static("CommonLabels", "getInstance_0", [])
        jr.call(l_string_buffer, "append_1", [jr.call(this, "getName_0", [])])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_common_seps, "COLON")])
        jr.call(l_string_buffer, "append_1", [jr.get_static("AllBinaryLayer", "TYPE")])
        jr.call(l_string_buffer, "appendint_1", [jr.call(this, "getType_0", [])])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_common_seps, "SPACE")])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_position_strings, "X_LABEL")])
        jr.call(l_string_buffer, "appendint_1", [jr.call(this, "getXP_0", [])])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_common_seps, "SPACE")])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_position_strings, "Y_LABEL")])
        jr.call(l_string_buffer, "appendint_1", [jr.call(this, "getYP_0", [])])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_common_seps, "SPACE")])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_position_strings, "Z_LABEL")])
        jr.call(l_string_buffer, "appendint_1", [jr.call(this, "getZP_0", [])])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_common_seps, "SPACE")])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_common_labels, "WIDTH_LABEL")])
        jr.call(l_string_buffer, "appendint_1", [jr.call(this, "getWidth_0", [])])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_common_seps, "SPACE")])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_common_labels, "HEIGHT_LABEL")])
        jr.call(l_string_buffer, "appendint_1", [jr.call(this, "getHeight_0", [])])
    jr.JNull
}

fn c1_m41__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_string_buffer = jr.new("StringMaker", [])
        jr.call(this, "toStringAppend_1", [l_string_buffer])
    jr.call(l_string_buffer, "toString_0", [])
}

fn c1_jinit7(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_name, l_rectangle, l_view_position] = jargs
        jr.super_init("Layer", this, [jr.call(l_rectangle, "getWidth_0", []), jr.call(l_rectangle, "getHeight_0", [])])
        c1_jfields(this)
        let l_local_name = jr.cell(jr.JNull)
        jr.set(l_local_name, jr.call(jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [l_name]), "append_1", [jr.get_field(jr.call_static("CommonSeps", "getInstance_0", []), "COLON")]), "append_1", [jr.call_static("Integer", "toHexString_1", [jr.call(jr.call_static("TsUtil", "getInstance_0", []), "hashCode_1", [this])])]), "toString_0", []))
        jr.set_field(this, "name", jr.get(l_local_name))
        let l_point = jr.call(l_rectangle, "getPoint_0", [])
        jr.call(this, "setPosition_3", [jr.call(l_point, "getX_0", []), jr.call(l_point, "getY_0", []), jr.call(l_point, "getZ_0", [])])
        jr.call(this, "setHalfWidth_1", [jr.shr(jr.call(this, "getWidth_0", []), jr.JInt(1))])
        jr.call(this, "setHalfHeight_1", [jr.shr(jr.call(this, "getHeight_0", []), jr.JInt(1))])
        jr.set_field(this, "viewPosition", l_view_position)
        jr.call(jr.get_field(this, "viewPosition"), "setAllbinaryLayer_1", [this])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AllBinaryLayer",
        "org.allbinary.layer.AllBinaryLayer",
        "Layer",
        ["LayerInterface"],
        False,
        [#("viewPositionEvent", jr.JNull), #("halfWidth", jr.JInt(0)), #("halfHeight", jr.JInt(0)), #("name", jr.JNull), #("viewPosition", jr.JNull)],
        [#("NULL_ALLBINARY_LAYER", jr.JNull), #("TYPE", jr.JStr("Type: "))],
        [
            jr.Method("setPosition_3", ["int", "int", "int"], False, c1_m8__setposition), 
            jr.Method("moveDXYZ_3", ["int", "int", "int"], False, c1_m9__movedxyz), 
            jr.Method("getXP_0", [], False, c1_m10__getxp), 
            jr.Method("getYP_0", [], False, c1_m11__getyp), 
            jr.Method("getZP_0", [], False, c1_m12__getzp), 
            jr.Method("getWidth_0", [], False, c1_m13__getwidth), 
            jr.Method("getHeight_0", [], False, c1_m14__getheight), 
            jr.Method("setVisible_1", ["boolean"], False, c1_m15__setvisible), 
            jr.Method("isVisible_0", [], False, c1_m16__isvisible), 
            jr.Method("paint_1", ["Graphics"], False, c1_m17__paint), 
            jr.Method("onChangeEvent_1", ["ViewPositionEvent"], False, c1_m18__onchangeevent), 
            jr.Method("paintThreed_1", ["Graphics"], False, c1_m19__paintthreed), 
            jr.Method("getX2_0", [], False, c1_m20__getx2), 
            jr.Method("getY2_0", [], False, c1_m21__gety2), 
            jr.Method("getZ2_0", [], False, c1_m22__getz2), 
            jr.Method("getName_0", [], False, c1_m23__getname), 
            jr.Method("setHalfWidth_1", ["int"], False, c1_m24__sethalfwidth), 
            jr.Method("getHalfWidth_0", [], False, c1_m25__gethalfwidth), 
            jr.Method("setHalfHeight_1", ["int"], False, c1_m26__sethalfheight), 
            jr.Method("getHalfHeight_0", [], False, c1_m27__gethalfheight), 
            jr.Method("getHalfDepth_0", [], False, c1_m28__gethalfdepth), 
            jr.Method("getViewPosition_0", [], False, c1_m29__getviewposition), 
            jr.Method("setViewPosition_1", ["ViewPositionBase"], False, c1_m30__setviewposition), 
            jr.Method("getGroupInterface_0", [], False, c1_m31__getgroupinterface), 
            jr.Method("implmentsTickableInterface_0", [], False, c1_m32__implmentstickableinterface), 
            jr.Method("implmentsGameInputInterface_0", [], False, c1_m33__implmentsgameinputinterface), 
            jr.Method("implmentsArtificialIntelligenceCompositeInterface_0", [], False, c1_m34__implmentsartificialintelligencecompositeinterface), 
            jr.Method("implmentsCollidableInterface_0", [], False, c1_m35__implmentscollidableinterface), 
            jr.Method("implementsThreedInterface_0", [], False, c1_m36__implementsthreedinterface), 
            jr.Method("getType_0", [], False, c1_m37__gettype), 
            jr.Method("getMultiPlayerType_0", [], False, c1_m38__getmultiplayertype), 
            jr.Method("toStringAppend_1", ["StringMaker"], False, c1_m40__tostringappend), 
            jr.Method("toString_0", [], False, c1_m41__tostring), 
            jr.Method("jinit_3", ["String", "Rectangle", "ViewPositionBase"], False, c1_jinit7)],
        c1_jfields,
        c1_jclinit,
    )
}

