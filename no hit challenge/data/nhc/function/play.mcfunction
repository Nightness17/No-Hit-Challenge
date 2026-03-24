effect clear @a absorption
execute if score #global nhc_cfg_shieldless matches 1 run clear @a shield 65
execute if score #globbal nhc_cfg_allow_sleep matches 0 run gamerule players_sleeping_percentage 101

execute if entity @a[scores={nhc_st_damage_taken=1..}, tag=!nhc_hit] run function nhc:endgame
gamemode spectator @a[tag=!nhc_ready, gamemode=!spectator]

