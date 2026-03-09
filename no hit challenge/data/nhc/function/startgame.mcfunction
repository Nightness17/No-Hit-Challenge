#Acomodar jugadores
clear @a
effect clear @a
gamemode spectator @a[tag=nhc_spectator]
gamemode survival @a[tag=nhc_player]

scoreboard players set #estado_global nhc_st_game_state 2
difficulty hard
gamerule random_tick_speed 3


#Configuraciones
execute if score #global nhc_cfg_pvp matches 1 run gamerule pvp true


title @a title "The game has started."
playsound minecraft:entity.dragon_fireball.explode ambient @a ~ ~ ~ 100

worldborder add 10000000