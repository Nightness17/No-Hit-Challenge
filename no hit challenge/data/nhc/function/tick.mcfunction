execute if score #estado_global nhc_st_game_state matches 0 run function nhc:await

#Animación de comienzo de partida.
execute if score #estado_global nhc_st_game_state matches 1 run function nhc:startgame
execute if entity @a[scores={nhc_tr_forced_start=1}] run function nhc:forcestart

#Iniciar la partida.
execute if score #estado_global nhc_st_game_state matches 2 run function nhc:play
