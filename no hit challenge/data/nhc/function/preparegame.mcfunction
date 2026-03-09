scoreboard players set #estado_global nhc_st_game_state 0
difficulty peaceful
gamerule pvp false

execute store success score #spreadSuccess nhc_st_spread_success run spreadplayers ~-20000 ~-20000 10 10 false @a
execute if score #spreadSuccess nhc_st_spread_success matches 0 run spreadplayers ~-30000 ~-30000 10 10 false @a

tag @r add nhc_map_center
execute at @a[tag=nhc_map_center] run setworldspawn ~ ~ ~
worldborder set 25
execute at @a[tag=nhc_map_center] run worldborder center ~ ~
tag @a remove nhc_map_center

weather clear
gamerule random_tick_speed 0
time set 0
