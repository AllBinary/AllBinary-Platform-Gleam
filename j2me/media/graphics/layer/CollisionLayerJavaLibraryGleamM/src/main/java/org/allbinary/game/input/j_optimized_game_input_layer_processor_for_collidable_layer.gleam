// Generated Code Do Not Modify
// package org.allbinary.game.input
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class OptimizedGameInputLayerProcessorForCollidableLayer

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__processat(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_all_binary_layer_manager, l_layer_interface, l_index] = jargs
    let l_index = jr.as_i(l_index)
        let l_game_input_interface = l_layer_interface
        jr.call(l_game_input_interface, "processInput_1", [l_all_binary_layer_manager])
    jr.JNull
}

fn c1_m3__isprocessorlayer(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_interface] = jargs
    jr.method(fn() {
            case jr.truth(jr.call(l_layer_interface, "implmentsGameInputInterface_0", [])) {
            True -> {
            jr.ret(jr.JBool(True))
            Nil
        }
            False -> {
            jr.ret(jr.JBool(False))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.super_init("LayerProcessor", this, [jr.new("OptimizedGameInputLayerManager", [])])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "OptimizedGameInputLayerProcessorForCollidableLayer",
        "org.allbinary.game.input.OptimizedGameInputLayerProcessorForCollidableLayer",
        "LayerProcessor",
        [],
        False,
        [],
        [],
        [
            jr.Method("processAt_3", ["AllBinaryLayerManager", "AllBinaryLayer", "int"], False, c1_m2__processat), 
            jr.Method("isProcessorLayer_1", ["AllBinaryLayer"], False, c1_m3__isprocessorlayer), 
            jr.Method("jinit_0", [], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}

