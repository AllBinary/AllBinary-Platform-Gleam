// Generated Code Do Not Modify
// package org.allbinary.game.input
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class LocalPlayerInputIdFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "MAX_NUMBER_OF_PLAYERS", jr.as_i(jr.JInt(6)))
    jr.set_field(this, "MAX_FAST_DEVICEID", jr.as_i(jr.JInt(65)))
    jr.set_field(this, "deviceIdToplayerId", jr.new_array("I", 1, [jr.get_field(this, "MAX_FAST_DEVICEID")]))
    jr.set_field(this, "playerIdToDeviceId", jr.new_array("I", 1, [jr.get_field(this, "MAX_NUMBER_OF_PLAYERS")]))
    jr.set_field(this, "playersInPlay", jr.new_array("Z", 1, [jr.get_field(this, "MAX_NUMBER_OF_PLAYERS")]))
    jr.set_field(this, "totalDevicesMapped", jr.as_i(jr.JInt(0)))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("LocalPlayerInputIdFactory", "instance", jr.new("LocalPlayerInputIdFactory", []))
    jr.JNull
}

fn c1_m10__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("LocalPlayerInputIdFactory", "instance")
}

fn c1_m11__getdeviceid(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_player_input_id] = jargs
    let l_player_input_id = jr.as_i(l_player_input_id)
    jr.as_i(jr.aget(jr.get_field(this, "playerIdToDeviceId"), l_player_input_id))
}

fn c1_m12__getplayerfordevice(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_device_id] = jargs
    let l_device_id = jr.as_i(l_device_id)
    jr.method(fn() {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            case jr.truth(jr.lt(l_device_id, jr.get_field(this, "MAX_FAST_DEVICEID"))) {
            True -> {
            let l_player_input_id = jr.as_i(jr.aget(jr.get_field(this, "deviceIdToplayerId"), l_device_id))
            case jr.truth(jr.ne(l_player_input_id, jr.JInt(-1))) {
                True -> {
                jr.ret(jr.as_i(l_player_input_id))
                Nil
            }
                False -> Nil
            }
            Nil
        }
            False -> {
            {
                jr.set(l_index, jr.as_i(jr.sub(jr.get_field(this, "totalDevicesMapped"), jr.JInt(1))))
                jr.for_loop("", fn() { jr.ge(jr.get(l_index), jr.JInt(0)) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, True) Nil }, fn() {
                case jr.truth(jr.eq(jr.aget(jr.get_field(this, "playerIdToDeviceId"), jr.get(l_index)), l_device_id)) {
                    True -> {
                    jr.ret(jr.as_i(jr.get(l_index)))
                    Nil
                }
                    False -> Nil
                }
                Nil
            })
                Nil
            }
            Nil
        }
        }
            jr.set(l_index, jr.as_i(jr.get_field(this, "totalDevicesMapped")))
            case jr.truth(jr.lt(l_device_id, jr.get_field(this, "MAX_FAST_DEVICEID"))) {
            True -> {
            jr.aset(jr.get_field(this, "deviceIdToplayerId"), l_device_id, jr.as_i(jr.get(l_index)))
            Nil
        }
            False -> {
            jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.JStr("Added DeviceId: ")]), "appendint_1", [l_device_id]), "append_1", [jr.JStr(" beyond fast Id list")]), "toString_0", []), this, jr.JStr("getPlayerForDevice")])
            Nil
        }
        }
            jr.aset(jr.get_field(this, "playerIdToDeviceId"), jr.get(l_index), jr.as_i(l_device_id))
            jr.call(jr.call_static("AnalogLocationInputFactory", "getInstance_0", []), "addPlayer_1", [jr.get_field(this, "totalDevicesMapped")])
            jr.incr(fn() { jr.get_field(this, "totalDevicesMapped") }, fn(jv) { jr.set_field(this, "totalDevicesMapped", jv) }, 1, True)
            jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.call(jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.JStr("Added DeviceId: ")]), "appendint_1", [l_device_id]), "append_1", [jr.JStr(" at: ")]), "appendint_1", [jr.get(l_index)]), "append_1", [jr.JStr(" Total: ")]), "appendint_1", [jr.get_field(this, "totalDevicesMapped")]), "toString_0", []), this, jr.JStr("getPlayerForDevice")])
            jr.ret(jr.as_i(jr.get(l_index)))
        jr.JNull
    })
}

fn c1_m13__gettotaldevicesinplay(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_total = jr.cell(jr.as_i(jr.JInt(0)))
        {
            let l_index = jr.cell(jr.as_i(jr.sub(jr.get_field(this, "totalDevicesMapped"), jr.JInt(1))))
            jr.for_loop("", fn() { jr.ge(jr.get(l_index), jr.JInt(0)) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, True) Nil }, fn() {
            case jr.truth(jr.eq(jr.aget(jr.get_field(this, "playersInPlay"), jr.get(l_index)), jr.JBool(True))) {
                True -> {
                jr.incr(fn() { jr.get(l_total) }, fn(jv) { jr.set(l_total, jv) }, 1, True)
                Nil
            }
                False -> Nil
            }
            Nil
        })
            Nil
        }
    jr.as_i(jr.get(l_total))
}

fn c1_m14__isplayerinplay(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_player_input_id] = jargs
    let l_player_input_id = jr.as_i(l_player_input_id)
    jr.aget(jr.get_field(this, "playersInPlay"), l_player_input_id)
}

fn c1_m15__setplayerinplay(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_player_input_id] = jargs
    let l_player_input_id = jr.as_i(l_player_input_id)
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.JStr("Setting PlayerInPlay with playerInputId: ")]), "appendint_1", [l_player_input_id]), "toString_0", []), this, jr.JStr("setPlayerInPlay")])
        jr.aset(jr.get_field(this, "playersInPlay"), l_player_input_id, jr.JBool(True))
    jr.JNull
}

fn c1_m16__setplayeroutofplay(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_player_input_id] = jargs
    let l_player_input_id = jr.as_i(l_player_input_id)
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.JStr("Setting PlayerOutOfPlay with playerInputId: ")]), "appendint_1", [l_player_input_id]), "toString_0", []), this, jr.JStr("setPlayerOutOfPlay")])
        jr.aset(jr.get_field(this, "playersInPlay"), l_player_input_id, jr.JBool(False))
    jr.JNull
}

fn c1_m17__getplayersinplay(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "playersInPlay")
}

fn c1_jinit9(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
        {
            let l_index = jr.cell(jr.as_i(jr.sub(jr.alen(jr.get_field(this, "deviceIdToplayerId")), jr.JInt(1))))
            jr.for_loop("", fn() { jr.ge(jr.get(l_index), jr.JInt(0)) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, True) Nil }, fn() {
            jr.aset(jr.get_field(this, "deviceIdToplayerId"), jr.get(l_index), jr.as_i(jr.JInt(-1)))
            Nil
        })
            Nil
        }
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "LocalPlayerInputIdFactory",
        "org.allbinary.game.input.LocalPlayerInputIdFactory",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull), #("MAX_NUMBER_OF_PLAYERS", jr.JInt(0)), #("MAX_FAST_DEVICEID", jr.JInt(0)), #("deviceIdToplayerId", jr.JNull), #("playerIdToDeviceId", jr.JNull), #("playersInPlay", jr.JNull), #("totalDevicesMapped", jr.JInt(0))],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m10__getinstance), 
            jr.Method("getDeviceId_1", ["int"], False, c1_m11__getdeviceid), 
            jr.Method("getPlayerForDevice_1", ["int"], False, c1_m12__getplayerfordevice), 
            jr.Method("getTotalDevicesInPlay_0", [], False, c1_m13__gettotaldevicesinplay), 
            jr.Method("isPlayerInPlay_1", ["int"], False, c1_m14__isplayerinplay), 
            jr.Method("setPlayerInPlay_1", ["int"], False, c1_m15__setplayerinplay), 
            jr.Method("setPlayerOutOfPlay_1", ["int"], False, c1_m16__setplayeroutofplay), 
            jr.Method("getPlayersInPlay_0", [], False, c1_m17__getplayersinplay), 
            jr.Method("jinit_0", [], False, c1_jinit9)],
        c1_jfields,
        c1_jclinit,
    )
}

