// Generated Code Do Not Modify
// package org.allbinary.emulator.device
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class TrueTypeFontUtilBase

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "patternAsBytes", jr.array_of("B", [jr.JInt(32), jr.JInt(48), jr.JInt(49), jr.JInt(50), jr.JInt(51), jr.JInt(52), jr.JInt(53), jr.JInt(54), jr.JInt(55), jr.JInt(56), jr.JInt(57), jr.JInt(65), jr.JInt(66), jr.JInt(32), jr.JInt(32), jr.JInt(32), jr.JInt(67), jr.JInt(68), jr.JInt(69), jr.JInt(70), jr.JInt(71), jr.JInt(72), jr.JInt(73), jr.JInt(74), jr.JInt(75), jr.JInt(76), jr.JInt(77), jr.JInt(78), jr.JInt(79), jr.JInt(32), jr.JInt(32), jr.JInt(32), jr.JInt(80), jr.JInt(81), jr.JInt(82), jr.JInt(83), jr.JInt(84), jr.JInt(85), jr.JInt(86), jr.JInt(87), jr.JInt(88), jr.JInt(89), jr.JInt(90), jr.JInt(97), jr.JInt(98), jr.JInt(32), jr.JInt(32), jr.JInt(32), jr.JInt(99), jr.JInt(100), jr.JInt(101), jr.JInt(102), jr.JInt(103), jr.JInt(104), jr.JInt(105), jr.JInt(106), jr.JInt(107), jr.JInt(108), jr.JInt(109), jr.JInt(110), jr.JInt(111), jr.JInt(32), jr.JInt(32), jr.JInt(32), jr.JInt(112), jr.JInt(113), jr.JInt(114), jr.JInt(115), jr.JInt(116), jr.JInt(117), jr.JInt(118), jr.JInt(119), jr.JInt(120), jr.JInt(121), jr.JInt(122), jr.JInt(46), jr.JInt(63), jr.JInt(32), jr.JInt(32), jr.JInt(32), jr.JInt(33), jr.JInt(36), jr.JInt(37), jr.JInt(96), jr.to_b(jr.JInt(-62)), jr.to_b(jr.JInt(-84)), jr.to_b(jr.JInt(-62)), jr.to_b(jr.JInt(-84)), jr.JInt(34), jr.to_b(jr.JInt(-62)), jr.to_b(jr.JInt(-93)), jr.to_b(jr.JInt(-62)), jr.to_b(jr.JInt(-93)), jr.JInt(94), jr.JInt(38), jr.JInt(42), jr.JInt(40), jr.JInt(32), jr.JInt(32), jr.JInt(32), jr.JInt(41), jr.JInt(95), jr.JInt(43), jr.JInt(45), jr.JInt(61), jr.JInt(91), jr.JInt(93), jr.JInt(123), jr.JInt(125), jr.JInt(59), jr.JInt(39), jr.JInt(35), jr.JInt(58), jr.JInt(32), jr.JInt(32), jr.JInt(32), jr.JInt(64), jr.JInt(126), jr.JInt(44), jr.JInt(47), jr.JInt(60), jr.JInt(62), jr.JInt(92), jr.JInt(124), jr.to_b(jr.JInt(-62)), jr.to_b(jr.JInt(-82)), jr.to_b(jr.JInt(-62)), jr.to_b(jr.JInt(-82)), jr.to_b(jr.JInt(-62)), jr.to_b(jr.JInt(-87)), jr.to_b(jr.JInt(-62)), jr.to_b(jr.JInt(-87))]))
    jr.set_field(this, "pattern", jr.new("String", [jr.get_field(this, "patternAsBytes")]))
    jr.set_field(this, "charArray", jr.array_of("S", [jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x6f)), jr.JInt(jr.wrap_i(0x50)), jr.JInt(jr.wrap_i(0x56)), jr.JInt(jr.wrap_i(0x6b)), jr.JInt(jr.wrap_i(0x51)), jr.JInt(jr.wrap_i(0x52)), jr.JInt(jr.wrap_i(0x5a)), jr.JInt(jr.wrap_i(0x6a)), jr.JInt(jr.wrap_i(0x5c)), jr.JInt(jr.wrap_i(0x60)), jr.JInt(jr.wrap_i(0x5b)), jr.JInt(jr.wrap_i(0x62)), jr.JInt(jr.wrap_i(0x72)), jr.JInt(jr.wrap_i(0x63)), jr.JInt(jr.wrap_i(0x4b)), jr.JInt(jr.wrap_i(0x73)), jr.JInt(jr.wrap_i(0x1)), jr.JInt(jr.wrap_i(0x2)), jr.JInt(jr.wrap_i(0x3)), jr.JInt(jr.wrap_i(0x4)), jr.JInt(jr.wrap_i(0x5)), jr.JInt(jr.wrap_i(0x6)), jr.JInt(jr.wrap_i(0x7)), jr.JInt(jr.wrap_i(0x8)), jr.JInt(jr.wrap_i(0x9)), jr.JInt(jr.wrap_i(0xa)), jr.JInt(jr.wrap_i(0x6c)), jr.JInt(jr.wrap_i(0x69)), jr.JInt(jr.wrap_i(0x74)), jr.JInt(jr.wrap_i(0x64)), jr.JInt(jr.wrap_i(0x75)), jr.JInt(jr.wrap_i(0x4c)), jr.JInt(jr.wrap_i(0x70)), jr.JInt(jr.wrap_i(0xb)), jr.JInt(jr.wrap_i(0xc)), jr.JInt(jr.wrap_i(0x10)), jr.JInt(jr.wrap_i(0x11)), jr.JInt(jr.wrap_i(0x12)), jr.JInt(jr.wrap_i(0x13)), jr.JInt(jr.wrap_i(0x14)), jr.JInt(jr.wrap_i(0x15)), jr.JInt(jr.wrap_i(0x16)), jr.JInt(jr.wrap_i(0x17)), jr.JInt(jr.wrap_i(0x18)), jr.JInt(jr.wrap_i(0x19)), jr.JInt(jr.wrap_i(0x1a)), jr.JInt(jr.wrap_i(0x1b)), jr.JInt(jr.wrap_i(0x1c)), jr.JInt(jr.wrap_i(0x20)), jr.JInt(jr.wrap_i(0x21)), jr.JInt(jr.wrap_i(0x22)), jr.JInt(jr.wrap_i(0x23)), jr.JInt(jr.wrap_i(0x24)), jr.JInt(jr.wrap_i(0x25)), jr.JInt(jr.wrap_i(0x26)), jr.JInt(jr.wrap_i(0x27)), jr.JInt(jr.wrap_i(0x28)), jr.JInt(jr.wrap_i(0x29)), jr.JInt(jr.wrap_i(0x2a)), jr.JInt(jr.wrap_i(0x65)), jr.JInt(jr.wrap_i(0x76)), jr.JInt(jr.wrap_i(0x66)), jr.JInt(jr.wrap_i(0x59)), jr.JInt(jr.wrap_i(0x61)), jr.JInt(jr.wrap_i(0x53)), jr.JInt(jr.wrap_i(0x2b)), jr.JInt(jr.wrap_i(0x2c)), jr.JInt(jr.wrap_i(0x30)), jr.JInt(jr.wrap_i(0x31)), jr.JInt(jr.wrap_i(0x32)), jr.JInt(jr.wrap_i(0x33)), jr.JInt(jr.wrap_i(0x34)), jr.JInt(jr.wrap_i(0x35)), jr.JInt(jr.wrap_i(0x36)), jr.JInt(jr.wrap_i(0x37)), jr.JInt(jr.wrap_i(0x38)), jr.JInt(jr.wrap_i(0x39)), jr.JInt(jr.wrap_i(0x3a)), jr.JInt(jr.wrap_i(0x3b)), jr.JInt(jr.wrap_i(0x3c)), jr.JInt(jr.wrap_i(0x40)), jr.JInt(jr.wrap_i(0x41)), jr.JInt(jr.wrap_i(0x42)), jr.JInt(jr.wrap_i(0x43)), jr.JInt(jr.wrap_i(0x44)), jr.JInt(jr.wrap_i(0x45)), jr.JInt(jr.wrap_i(0x46)), jr.JInt(jr.wrap_i(0x47)), jr.JInt(jr.wrap_i(0x48)), jr.JInt(jr.wrap_i(0x49)), jr.JInt(jr.wrap_i(0x4a)), jr.JInt(jr.wrap_i(0x67)), jr.JInt(jr.wrap_i(0x77)), jr.JInt(jr.wrap_i(0x68)), jr.JInt(jr.wrap_i(0x71)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x58)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x7b)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x55)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x79)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0)), jr.JInt(jr.wrap_i(0x0))]))
    jr.set_field(this, "_characterWidth", jr.new_array("I", 1, [jr.call(jr.get_field(this, "pattern"), "length_0", [])]))
    jr.set_field(this, "characterArray", jr.new_array("C", 1, [jr.JInt(1)]))
    jr.set_field(this, "size", jr.as_i(jr.call(jr.get_field(this, "pattern"), "length_0", [])))
    jr.set_field(this, "lastCapIndex", jr.as_i(jr.call(jr.get_field(this, "pattern"), "indexOf_1", [jr.JChar(90)])))
    jr.set_field(this, "currentFont", jr.call_static("Font", "getDefaultFont_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m18__getastexturesize(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_texture_size] = jargs
    let l_texture_size = jr.cell(jr.as_i(l_texture_size))
        case jr.truth(jr.le(jr.get(l_texture_size), jr.JInt(64))) {
            True -> {
            jr.set(l_texture_size, jr.as_i(jr.JInt(64)))
            Nil
        }
            False -> case jr.truth(jr.le(jr.get(l_texture_size), jr.JInt(128))) {
            True -> {
            jr.set(l_texture_size, jr.as_i(jr.JInt(128)))
            Nil
        }
            False -> case jr.truth(jr.le(jr.get(l_texture_size), jr.JInt(256))) {
            True -> {
            jr.set(l_texture_size, jr.as_i(jr.JInt(256)))
            Nil
        }
            False -> case jr.truth(jr.le(jr.get(l_texture_size), jr.JInt(512))) {
            True -> {
            jr.set(l_texture_size, jr.as_i(jr.JInt(512)))
            Nil
        }
            False -> case jr.truth(jr.le(jr.get(l_texture_size), jr.JInt(1024))) {
            True -> {
            jr.set(l_texture_size, jr.as_i(jr.JInt(1024)))
            Nil
        }
            False -> Nil
        }
        }
        }
        }
        }
    jr.as_i(jr.get(l_texture_size))
}

fn c1_m19__getcellsize(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_cell_size] = jargs
    let l_cell_size = jr.cell(jr.as_i(l_cell_size))
        case jr.truth(jr.le(jr.get(l_cell_size), jr.JInt(16))) {
            True -> {
            jr.set(l_cell_size, jr.as_i(jr.JInt(16)))
            Nil
        }
            False -> case jr.truth(jr.le(jr.get(l_cell_size), jr.JInt(32))) {
            True -> {
            jr.set(l_cell_size, jr.as_i(jr.JInt(32)))
            Nil
        }
            False -> case jr.truth(jr.le(jr.get(l_cell_size), jr.JInt(64))) {
            True -> {
            jr.set(l_cell_size, jr.as_i(jr.JInt(64)))
            Nil
        }
            False -> case jr.truth(jr.le(jr.get(l_cell_size), jr.JInt(128))) {
            True -> {
            jr.set(l_cell_size, jr.as_i(jr.JInt(128)))
            Nil
        }
            False -> case jr.truth(jr.le(jr.get(l_cell_size), jr.JInt(256))) {
            True -> {
            jr.set(l_cell_size, jr.as_i(jr.JInt(256)))
            Nil
        }
            False -> Nil
        }
        }
        }
        }
        }
    jr.as_i(jr.get(l_cell_size))
}

fn c1_m20__getyoffset(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.mul(jr.sub(jr.get_field(this, "scale"), jr.JInt(1)), jr.get_field(this, "cellSize")))
}

fn c1_jinit17(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_scale] = jargs
    let l_scale = jr.as_i(l_scale)
    jr.super_init("Object", this, [])
    c1_jfields(this)
        let l_short_pattern = jr.cell(jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"))
        case jr.truth(jr.call_static("AvianUtil", "isAvian_0", [])) {
            True -> {
            let l_short_patter_as_byte_array = jr.array_of("B", [jr.JInt(32), jr.JInt(48), jr.JInt(49), jr.JInt(50), jr.JInt(51), jr.JInt(52), jr.JInt(53), jr.JInt(54), jr.JInt(55), jr.JInt(56), jr.JInt(57), jr.JInt(65), jr.JInt(66), jr.JInt(67), jr.JInt(68), jr.JInt(69), jr.JInt(70), jr.JInt(71), jr.JInt(72), jr.JInt(73), jr.JInt(74), jr.JInt(75), jr.JInt(76), jr.JInt(77), jr.JInt(78), jr.JInt(79), jr.JInt(80), jr.JInt(81), jr.JInt(82), jr.JInt(83), jr.JInt(84), jr.JInt(85), jr.JInt(86), jr.JInt(87), jr.JInt(88), jr.JInt(89), jr.JInt(90), jr.JInt(97), jr.JInt(98), jr.JInt(99), jr.JInt(100), jr.JInt(101), jr.JInt(102), jr.JInt(103), jr.JInt(104), jr.JInt(105), jr.JInt(106), jr.JInt(107), jr.JInt(108), jr.JInt(109), jr.JInt(110), jr.JInt(111), jr.JInt(112), jr.JInt(113), jr.JInt(114), jr.JInt(115), jr.JInt(116), jr.JInt(117), jr.JInt(118), jr.JInt(119), jr.JInt(120), jr.JInt(121), jr.JInt(122), jr.JInt(46), jr.JInt(63), jr.JInt(33), jr.JInt(36), jr.JInt(37), jr.JInt(96), jr.to_b(jr.JInt(-62)), jr.to_b(jr.JInt(-84)), jr.to_b(jr.JInt(-62)), jr.to_b(jr.JInt(-84)), jr.JInt(34), jr.to_b(jr.JInt(-62)), jr.to_b(jr.JInt(-93)), jr.to_b(jr.JInt(-62)), jr.to_b(jr.JInt(-93)), jr.JInt(94), jr.JInt(38), jr.JInt(42), jr.JInt(40), jr.JInt(41), jr.JInt(95), jr.JInt(43), jr.JInt(45), jr.JInt(61), jr.JInt(91), jr.JInt(93), jr.JInt(123), jr.JInt(125), jr.JInt(59), jr.JInt(39), jr.JInt(35), jr.JInt(58), jr.JInt(64), jr.JInt(126), jr.JInt(44), jr.JInt(47), jr.JInt(60), jr.JInt(62), jr.JInt(92), jr.JInt(124), jr.to_b(jr.JInt(-62)), jr.to_b(jr.JInt(-82)), jr.to_b(jr.JInt(-62)), jr.to_b(jr.JInt(-82)), jr.to_b(jr.JInt(-62)), jr.to_b(jr.JInt(-87)), jr.to_b(jr.JInt(-62)), jr.to_b(jr.JInt(-87))])
            jr.set(l_short_pattern, jr.new("String", [l_short_patter_as_byte_array]))
            Nil
        }
            False -> {
            let l_short_patter_as_byte_array = jr.array_of("B", [jr.JInt(32), jr.JInt(48), jr.JInt(49), jr.JInt(50), jr.JInt(51), jr.JInt(52), jr.JInt(53), jr.JInt(54), jr.JInt(55), jr.JInt(56), jr.JInt(57), jr.JInt(65), jr.JInt(66), jr.JInt(67), jr.JInt(68), jr.JInt(69), jr.JInt(70), jr.JInt(71), jr.JInt(72), jr.JInt(73), jr.JInt(74), jr.JInt(75), jr.JInt(76), jr.JInt(77), jr.JInt(78), jr.JInt(79), jr.JInt(80), jr.JInt(81), jr.JInt(82), jr.JInt(83), jr.JInt(84), jr.JInt(85), jr.JInt(86), jr.JInt(87), jr.JInt(88), jr.JInt(89), jr.JInt(90), jr.JInt(97), jr.JInt(98), jr.JInt(99), jr.JInt(100), jr.JInt(101), jr.JInt(102), jr.JInt(103), jr.JInt(104), jr.JInt(105), jr.JInt(106), jr.JInt(107), jr.JInt(108), jr.JInt(109), jr.JInt(110), jr.JInt(111), jr.JInt(112), jr.JInt(113), jr.JInt(114), jr.JInt(115), jr.JInt(116), jr.JInt(117), jr.JInt(118), jr.JInt(119), jr.JInt(120), jr.JInt(121), jr.JInt(122), jr.JInt(46), jr.JInt(63), jr.JInt(33), jr.JInt(36), jr.JInt(37), jr.JInt(96), jr.to_b(jr.JInt(-62)), jr.to_b(jr.JInt(-84)), jr.JInt(34), jr.to_b(jr.JInt(-62)), jr.to_b(jr.JInt(-93)), jr.JInt(94), jr.JInt(38), jr.JInt(42), jr.JInt(40), jr.JInt(41), jr.JInt(95), jr.JInt(43), jr.JInt(45), jr.JInt(61), jr.JInt(91), jr.JInt(93), jr.JInt(123), jr.JInt(125), jr.JInt(59), jr.JInt(39), jr.JInt(35), jr.JInt(58), jr.JInt(64), jr.JInt(126), jr.JInt(44), jr.JInt(47), jr.JInt(60), jr.JInt(62), jr.JInt(92), jr.JInt(124), jr.to_b(jr.JInt(-62)), jr.to_b(jr.JInt(-82)), jr.to_b(jr.JInt(-62)), jr.to_b(jr.JInt(-87))])
            jr.set(l_short_pattern, jr.new("String", [l_short_patter_as_byte_array]))
            Nil
        }
        }
        jr.set_field(this, "shortPattern", jr.get(l_short_pattern))
        jr.set_field(this, "scale", jr.as_i(l_scale))
        jr.set_field(this, "CELLS_PER_ROW", jr.as_i(jr.JInt(16)))
        jr.set_field(this, "fontSize", jr.as_i(jr.mul(jr.add(jr.JInt(20), jr.JInt(6)), jr.get_field(this, "scale"))))
        jr.set_field(this, "baseCharWidth", jr.as_i(jr.add(jr.get_field(this, "fontSize"), jr.mul(jr.JInt(6), jr.get_field(this, "scale")))))
        jr.set_field(this, "cellSize", jr.as_i(jr.add(jr.get_field(this, "fontSize"), jr.mul(jr.JInt(6), jr.get_field(this, "scale")))))
        jr.set_field(this, "textureSize", jr.as_i(jr.call(this, "getAsTextureSize_1", [jr.mul(jr.get_field(this, "CELLS_PER_ROW"), jr.get_field(this, "cellSize"))])))
        jr.set_field(this, "actualCellsPerRow", jr.as_i(jr.div(jr.get_field(this, "textureSize"), jr.get_field(this, "cellSize"))))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "TrueTypeFontUtilBase",
        "org.allbinary.emulator.device.TrueTypeFontUtilBase",
        "Object",
        [],
        False,
        [#("shortPattern", jr.JNull), #("patternAsBytes", jr.JNull), #("pattern", jr.JNull), #("charArray", jr.JNull), #("_characterWidth", jr.JNull), #("characterArray", jr.JNull), #("size", jr.JInt(0)), #("lastCapIndex", jr.JInt(0)), #("currentFont", jr.JNull), #("scale", jr.JInt(0)), #("CELLS_PER_ROW", jr.JInt(0)), #("fontSize", jr.JInt(0)), #("baseCharWidth", jr.JInt(0)), #("cellSize", jr.JInt(0)), #("textureSize", jr.JInt(0)), #("actualCellsPerRow", jr.JInt(0))],
        [],
        [
            jr.Method("getAsTextureSize_1", ["int"], False, c1_m18__getastexturesize), 
            jr.Method("getCellSize_1", ["int"], False, c1_m19__getcellsize), 
            jr.Method("getYOffset_0", [], False, c1_m20__getyoffset), 
            jr.Method("jinit_1", ["int"], False, c1_jinit17)],
        c1_jfields,
        c1_jclinit,
    )
}

