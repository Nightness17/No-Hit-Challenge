effect clear @a absorption
execute if score #global nhc_cfg_shieldless matches 1 run clear @a shield 65

execute if entity @a[scores={nhc_st_damage_taken=1..}, tag=!nhc_hit] run function nhc:endgame
gamemode spectator @a[tag=!nhc_ready, gamemode=!spectator]

