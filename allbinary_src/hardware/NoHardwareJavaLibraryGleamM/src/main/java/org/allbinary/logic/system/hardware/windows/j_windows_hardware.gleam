// Generated Code Do Not Modify
// package org.allbinary.logic.system.hardware.windows
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class WindowsHardware

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__getmultimedia(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_index] = jargs
    let l_index = jr.as_i(l_index)
        jr.throw(jr.new("RuntimeException", []))
    jr.JNull
}

fn c1_m3__getbridge(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_index] = jargs
    let l_index = jr.as_i(l_index)
        jr.throw(jr.new("RuntimeException", []))
    jr.JNull
}

fn c1_m4__getcpu(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_index] = jargs
    let l_index = jr.as_i(l_index)
        jr.throw(jr.new("RuntimeException", []))
    jr.JNull
}

fn c1_m5__getethernet(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_index] = jargs
    let l_index = jr.as_i(l_index)
        jr.throw(jr.new("RuntimeException", []))
    jr.JNull
}

fn c1_m6__getfirewire(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_index] = jargs
    let l_index = jr.as_i(l_index)
        jr.throw(jr.new("RuntimeException", []))
    jr.JNull
}

fn c1_m7__getharddrivecontroller(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_index] = jargs
    let l_index = jr.as_i(l_index)
        jr.throw(jr.new("RuntimeException", []))
    jr.JNull
}

fn c1_m8__getharddrive(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_index] = jargs
    let l_index = jr.as_i(l_index)
        jr.throw(jr.new("RuntimeException", []))
    jr.JNull
}

fn c1_m9__getmachineaccesscontroladdress(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_index] = jargs
    let l_index = jr.as_i(l_index)
        jr.throw(jr.new("RuntimeException", []))
    jr.JNull
}

fn c1_m10__getmonitor(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_index] = jargs
    let l_index = jr.as_i(l_index)
        jr.throw(jr.new("RuntimeException", []))
    jr.JNull
}

fn c1_m11__getusb(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_index] = jargs
    let l_index = jr.as_i(l_index)
        jr.throw(jr.new("RuntimeException", []))
    jr.JNull
}

fn c1_m12__getvideo(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_index] = jargs
    let l_index = jr.as_i(l_index)
        jr.throw(jr.new("RuntimeException", []))
    jr.JNull
}

fn c1_m13__getcomponent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_index] = jargs
    let l_index = jr.as_i(l_index)
        jr.throw(jr.new("RuntimeException", []))
    jr.JNull
}

fn c1_m14__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING")
}

fn c1_m15__compareto(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_hardware_interface] = jargs
    jr.JBool(True)
}

fn c1_m16__difference(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_hardware_interface] = jargs
    jr.get_field(jr.call_static("StdUtil", "getInstance_0", []), "NULL_TABLE")
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "WindowsHardware",
        "org.allbinary.logic.system.hardware.windows.WindowsHardware",
        "Object",
        ["HardwareInterface"],
        False,
        [],
        [],
        [
            jr.Method("getMultimedia_1", ["int"], False, c1_m2__getmultimedia), 
            jr.Method("getBridge_1", ["int"], False, c1_m3__getbridge), 
            jr.Method("getCpu_1", ["int"], False, c1_m4__getcpu), 
            jr.Method("getEthernet_1", ["int"], False, c1_m5__getethernet), 
            jr.Method("getFireWire_1", ["int"], False, c1_m6__getfirewire), 
            jr.Method("getHardDriveController_1", ["int"], False, c1_m7__getharddrivecontroller), 
            jr.Method("getHardDrive_1", ["int"], False, c1_m8__getharddrive), 
            jr.Method("getMachineAccessControlAddress_1", ["int"], False, c1_m9__getmachineaccesscontroladdress), 
            jr.Method("getMonitor_1", ["int"], False, c1_m10__getmonitor), 
            jr.Method("getUsb_1", ["int"], False, c1_m11__getusb), 
            jr.Method("getVideo_1", ["int"], False, c1_m12__getvideo), 
            jr.Method("getComponent_1", ["int"], False, c1_m13__getcomponent), 
            jr.Method("toString_0", [], False, c1_m14__tostring), 
            jr.Method("compareTo_1", ["HardwareInterface"], False, c1_m15__compareto), 
            jr.Method("difference_1", ["HardwareInterface"], False, c1_m16__difference), 
            jr.Method("jinit_0", [], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}

