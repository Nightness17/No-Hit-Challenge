execute as @a[scores={nhc_st_damage_taken=1..}] run scoreboard players add @s nhc_st_damage_taken 1
playsound minecraft:entity.player.death master @a[scores={nhc_st_damage_taken=1}] ~ ~ ~
gamemode spectator @a[scores={nhc_st_damage_taken=1..}]
title @a title "§4GAME OVER"
tellraw @a [{"text":"¡", "color":"red"}, {"selector":"@a[scores={nhc_st_damage_taken=1..}]", "color":"gold"}, {"text":" has been hit!", "color":"red"}]
execute as @a[scores={nhc_st_damage_taken=1..}] run tag @s add nhc_hit
playsound minecraft:entity.wither.death ambient @a ^ ^ ^ 100
schedule function nhc:restartgame 7s