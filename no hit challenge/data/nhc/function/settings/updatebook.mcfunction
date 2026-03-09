data modify storage mi_conf:ui colors set value {escudo_on:"gray", escudo_off:"gray", pvp_on:"gray", pvp_off:"gray"}

execute if score #global nhc_cfg_shieldless matches 0 run data modify storage mi_conf:ui colors.escudo_on set value "green"
execute if score #global nhc_cfg_shieldless matches 1 run data modify storage mi_conf:ui colors.escudo_off set value "red"

execute if score #global nhc_cfg_pvp matches 1 run data modify storage mi_conf:ui colors.pvp_on set value "green"
execute if score #global nhc_cfg_pvp matches 0 run data modify storage mi_conf:ui colors.pvp_off set value "red"


function nhc:settings/givebook with storage mi_conf:ui colors