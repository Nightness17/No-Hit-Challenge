tag @s add nhc_spectator
tag @s add nhc_ready
tellraw @a [{"selector": "@s"}, {"text":" is now an spectator."}]
scoreboard players set @s nhc_tr_spectators 0

execute if entity @a unless entity @a[tag=!nhc_ready, tag=!nhc_spectator] run scoreboard players set #estado_global nhc_st_game_state 1