execute as @a[tag=!nhc_ready] run tag @s add nhc_ready
execute as @a[tag=!nhc_spectator] run tag @s add nhc_player
scoreboard players set @a nhc_tr_forced_start 0
scoreboard players set #estado_global nhc_st_game_state 1
