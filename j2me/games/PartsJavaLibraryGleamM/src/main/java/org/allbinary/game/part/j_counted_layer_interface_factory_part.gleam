// Generated Code Do Not Modify
// package org.allbinary.game.part
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CountedLayerInterfaceFactoryPart

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "updateMyFontProcessor", jr.new("UpdateMyFontProcessor", [this]))
    jr.set_field(this, "myFontProcessor", jr.get_field(this, "updateMyFontProcessor"))
    jr.set_field(this, "animationInterface", jr.call(jr.call_static("NullAnimationFactory", "getFactoryInstance_0", []), "getInstance_1", [jr.JInt(0)]))
    jr.set_field(this, "totalString", jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_CHAR_ARRAY"))
    jr.set_field(this, "countedPickedUpLayerInterfaceFactory", jr.get_static("CountedPickedUpLayerInterfaceFactory", "NULL_COUNTED_PICKUP_LAYER_FACTORY"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("CountedLayerInterfaceFactoryPart", "NULL_COUNTED_LAYER_INTERFACE_FACTORY", jr.new("CountedLayerInterfaceFactoryPart", [jr.JInt(0), jr.get_static("CountedPickedUpLayerInterfaceFactory", "NULL_COUNTED_PICKUP_LAYER_FACTORY")]))
    jr.JNull
}

fn c1_m11__updatemeasurement(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        let l_font = jr.call(l_graphics, "getFont_0", [])
        jr.call(this, "setXOffset_1", [jr.add(jr.call(l_font, "charsWidth_3", [jr.get_field(this, "totalString"), jr.JInt(0), jr.call(jr.get_field(this, "primitiveLongUtil"), "getCurrentTotalDigits_0", [])]), jr.shr(jr.call(l_font, "getSize_0", []), jr.JInt(1)))])
        jr.set_field(this, "myFontProcessor", jr.call_static("MyFontProcessor", "getInstance_0", []))
    jr.JNull
}

fn c1_m12__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_total, l_counted_picked_up_layer_interface_factory] = jargs
    let l_total = jr.as_i(l_total)
        jr.call(this, "setCountedPickedUpLayerInterfaceFactory_1", [l_counted_picked_up_layer_interface_factory])
        jr.set_field(this, "total", jr.as_i(l_total))
    jr.JNull
}

fn c1_m13__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_hashtable, l_x, l_y, l_z] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    let l_z = jr.as_i(l_z)
    jr.method(fn() {
            case jr.truth(jr.gt(jr.get_field(this, "total"), jr.JInt(0))) {
            True -> {
            jr.call(this, "setTotal_1", [jr.sub(jr.get_field(this, "total"), jr.JInt(1))])
            jr.ret(jr.call(jr.call(this, "getCountedPickedUpLayerInterfaceFactory_0", []), "getNextInstance_4", [l_hashtable, l_x, l_y, l_z]))
            Nil
        }
            False -> {
            jr.throw(jr.new("Exception", [jr.JStr("No more left. Could use a listener to automatically remove")]))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_m14__gettotal(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "total"))
}

fn c1_m15__settotal(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_total] = jargs
    let l_total = jr.as_i(l_total)
        jr.set_field(this, "total", jr.as_i(l_total))
        jr.set_field(this, "totalString", jr.call(jr.get_field(this, "primitiveLongUtil"), "getCharArray_1", [l_total]))
        jr.set_field(this, "myFontProcessor", jr.get_field(this, "updateMyFontProcessor"))
    jr.JNull
}

fn c1_m16__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        jr.call(jr.get_field(this, "myFontProcessor"), "process_1", [l_graphics])
    jr.JNull
}

fn c1_m17__paintthreed(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
    jr.JNull
}

fn c1_m18__getanimationinterface(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "animationInterface")
}

fn c1_m19__setanimationinterface(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_animation_interface] = jargs
        jr.set_field(this, "animationInterface", l_animation_interface)
    jr.JNull
}

fn c1_m20__getxoffset(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "xOffset"))
}

fn c1_m21__setxoffset(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_total_string_width] = jargs
    let l_total_string_width = jr.as_i(l_total_string_width)
        jr.set_field(this, "xOffset", jr.as_i(l_total_string_width))
    jr.JNull
}

fn c1_m22__gettotalstring(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "totalString")
}

fn c1_m23__getcountedpickeduplayerinterfacefactory(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "countedPickedUpLayerInterfaceFactory")
}

fn c1_m24__setcountedpickeduplayerinterfacefactory(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_counted_picked_up_layer_interface_factory] = jargs
        jr.set_field(this, "countedPickedUpLayerInterfaceFactory", l_counted_picked_up_layer_interface_factory)
    jr.JNull
}

fn c1_jinit10(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_total, l_counted_picked_up_layer_interface_factory] = jargs
    let l_total = jr.as_i(l_total)
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "primitiveLongUtil", jr.call_static("PrimitiveLongUtil", "createPowerOfTen_1", [jr.JInt(1000)]))
        jr.call(this, "init_2", [l_total, l_counted_picked_up_layer_interface_factory])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CountedLayerInterfaceFactoryPart",
        "org.allbinary.game.part.CountedLayerInterfaceFactoryPart",
        "Object",
        ["PartInterface", "UpdateMyFontInterface"],
        False,
        [#("updateMyFontProcessor", jr.JNull), #("myFontProcessor", jr.JNull), #("animationInterface", jr.JNull), #("total", jr.JInt(0)), #("totalString", jr.JNull), #("xOffset", jr.JInt(0)), #("countedPickedUpLayerInterfaceFactory", jr.JNull), #("primitiveLongUtil", jr.JNull)],
        [#("NULL_COUNTED_LAYER_INTERFACE_FACTORY", jr.JNull)],
        [
            jr.Method("updateMeasurement_1", ["Graphics"], False, c1_m11__updatemeasurement), 
            jr.Method("init_2", ["int", "CountedPickedUpLayerInterfaceFactory"], False, c1_m12__init), 
            jr.Method("getInstance_4", ["ABHashtable", "int", "int", "int"], False, c1_m13__getinstance), 
            jr.Method("getTotal_0", [], False, c1_m14__gettotal), 
            jr.Method("setTotal_1", ["int"], False, c1_m15__settotal), 
            jr.Method("paint_1", ["Graphics"], False, c1_m16__paint), 
            jr.Method("paintThreed_1", ["Graphics"], False, c1_m17__paintthreed), 
            jr.Method("getAnimationInterface_0", [], False, c1_m18__getanimationinterface), 
            jr.Method("setAnimationInterface_1", ["Animation"], False, c1_m19__setanimationinterface), 
            jr.Method("getXOffset_0", [], False, c1_m20__getxoffset), 
            jr.Method("setXOffset_1", ["int"], False, c1_m21__setxoffset), 
            jr.Method("getTotalString_0", [], False, c1_m22__gettotalstring), 
            jr.Method("getCountedPickedUpLayerInterfaceFactory_0", [], False, c1_m23__getcountedpickeduplayerinterfacefactory), 
            jr.Method("setCountedPickedUpLayerInterfaceFactory_1", ["CountedPickedUpLayerInterfaceFactory"], False, c1_m24__setcountedpickeduplayerinterfacefactory), 
            jr.Method("jinit_2", ["int", "CountedPickedUpLayerInterfaceFactory"], False, c1_jinit10)],
        c1_jfields,
        c1_jclinit,
    )
}

