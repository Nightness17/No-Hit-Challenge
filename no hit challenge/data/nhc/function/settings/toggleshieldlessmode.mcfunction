execute if score @s nhc_tr_shieldless matches 1 run scoreboard players set #global nhc_cfg_shieldless 1
execute if score @s nhc_tr_shieldless matches 2 run scoreboard players set #global nhc_cfg_shieldless 0
 
execute if score #global nhc_cfg_shieldless matches 1 run tellraw @a [{"selector":"@s"}, {"text":" has"}, {text: " DISABLED", color: red}, {text:" shields."}]
execute if score #global nhc_cfg_shieldless matches 0 run tellraw @a [{"selector":"@s"}, {"text":" has"}, {text: " ENABLED", color: green}, {text: " shield."}]

scoreboard players set @s nhc_tr_shieldless 0
scoreboard players enable @s nhc_tr_shieldless

execute as @a run function nhc:settings/updatebook