// Generated Code Do Not Modify
// package org.allbinary.game.ag.layer.weapon.mine
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class MineWeaponResources

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "DROP_TEXT_RESOURCE", jr.JStr("/mine_drop_text_20_by_20.png"))
    jr.set_field(this, "DROP_RESOURCE", jr.JStr("/mine_drop_20_by_20.png"))
    jr.set_field(this, "DROP_ICON_RESOURCE", jr.JStr("/mine_drop_icon_20_by_20.png"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("MineWeaponResources", "instance", jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.eq(jr.get_static("MineWeaponResources", "instance"), jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))) {
            True -> {
            jr.set_static("MineWeaponResources", "instance", jr.new("MineWeaponResources", []))
            Nil
        }
            False -> Nil
        }
    jr.get_static("MineWeaponResources", "instance")
}

fn c1_jinit6(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("BasicGameResources", this, [])
    c1_jfields(this)
        let l__r_o_o_t = jr.JStr("/mine")
        let l__s_m_a_l_l = jr.JStr("_20_by_20.png")
        let l__m_e_d_i_u_m = l__s_m_a_l_l
        let l__s_i_z_e___f_o_u_r = l__s_m_a_l_l
        let l__s_i_z_e___f_i_v_e = l__s_m_a_l_l
        let l__s_i_z_e___s_i_x = l__s_m_a_l_l
        let l__s_i_z_e = jr.array_of("L", [l__s_m_a_l_l, l__m_e_d_i_u_m, l__s_i_z_e___f_o_u_r, l__s_i_z_e___f_i_v_e, l__s_i_z_e___s_i_x])
        jr.call_super("BasicGameResources", this, "init_2", [l__r_o_o_t, l__s_i_z_e])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "MineWeaponResources",
        "org.allbinary.game.ag.layer.weapon.mine.MineWeaponResources",
        "BasicGameResources",
        [],
        False,
        [#("DROP_TEXT_RESOURCE", jr.JNull), #("DROP_RESOURCE", jr.JNull), #("DROP_ICON_RESOURCE", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit6)],
        c1_jfields,
        c1_jclinit,
    )
}

