// Generated Code Do Not Modify
// package org.allbinary.logic.system.hardware.components
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ComponentFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "VGA", jr.new("Component", [jr.JStr("VGA")]))
    jr.set_field(this, "IDE", jr.new("Component", [jr.JStr("IDE")]))
    jr.set_field(this, "SCSI", jr.new("Component", [jr.JStr("SCSI")]))
    jr.set_field(this, "BRIDGE", jr.new("Component", [jr.JStr("bridge")]))
    jr.set_field(this, "ETHERNET", jr.new("Component", [jr.JStr("Ethernet")]))
    jr.set_field(this, "USB", jr.new("Component", [jr.JStr("USB")]))
    jr.set_field(this, "MULTIMEDIA", jr.new("Component", [jr.JStr("Multimedia")]))
    jr.set_field(this, "PCI", jr.new("Component", [jr.JStr("PCI")]))
    jr.set_field(this, "RAID", jr.new("Component", [jr.JStr("RAID")]))
    jr.set_field(this, "SMBUS", jr.new("Component", [jr.JStr("SMBus")]))
    jr.set_field(this, "PIC", jr.new("Component", [jr.JStr("PIC")]))
    jr.set_field(this, "Class", jr.new("Component", [jr.JStr("Class")]))
    jr.set_field(this, "UNKNOWN", jr.new("Component", [jr.get_field(jr.call_static("CommonStrings", "getInstance_0", []), "UNKNOWN")]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("ComponentFactory", "instance", jr.new("ComponentFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("ComponentFactory", "instance")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ComponentFactory",
        "org.allbinary.logic.system.hardware.components.ComponentFactory",
        "Object",
        [],
        False,
        [#("VGA", jr.JNull), #("IDE", jr.JNull), #("SCSI", jr.JNull), #("BRIDGE", jr.JNull), #("ETHERNET", jr.JNull), #("USB", jr.JNull), #("MULTIMEDIA", jr.JNull), #("PCI", jr.JNull), #("RAID", jr.JNull), #("SMBUS", jr.JNull), #("PIC", jr.JNull), #("Class", jr.JNull), #("UNKNOWN", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

