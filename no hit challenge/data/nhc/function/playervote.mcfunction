tag @s add nhc_ready
tag @s add nhc_player
tellraw @a [{"selector": "@s"}, {"text":" has voted to start the game."}]
scoreboard players set @s nhc_tr_start_votes 0

#Evaluar el inicio de la partida.
execute if entity @a unless entity @a[tag=!nhc_ready] run scoreboard players set #estado_global nhc_st_game_state 1