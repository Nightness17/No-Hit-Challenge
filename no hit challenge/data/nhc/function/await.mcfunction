#Otorgar a todos los jugadores los libros y mostrar mensaje de espera.
execute if score #estado_global nhc_st_game_state matches 0 as @a[tag=!nhc_choosing] run function nhc:prepareplayer
execute if score #estado_global nhc_st_game_state matches 0 run title @a actionbar [{"text":"Waiting for players... "},{"selector":"@a[tag=!nhc_ready]"}]

#Ejecución de voto de cada jugador.
execute as @a[scores={nhc_tr_start_votes=1}] run function nhc:playervote
execute as @a[scores={nhc_tr_spectators=1}] run function nhc:spectatorvote


execute as @a[scores={nhc_tr_shieldless=1..}] run function nhc:settings/toggleshieldlessmode
execute as @a[scores={nhc_tr_pvp=1..}] run function nhc:settings/togglepvp
