execute if score @s nhc_tr_pvp matches 1 run scoreboard players set #global nhc_cfg_pvp 1
execute if score @s nhc_tr_pvp matches 2 run scoreboard players set #global nhc_cfg_pvp 0

execute if score #global nhc_cfg_pvp matches 1 run tellraw @a [{"selector":"@s"}, {"text":" has"}, {text: " ENABLED", color: green}, {text:" PvP."}]
execute if score #global nhc_cfg_pvp matches 0 run tellraw @a [{"selector":"@s"}, {"text":" has"}, {text: " DISABLED", color: red}, {text: " PvP."}]

scoreboard players set @s nhc_tr_pvp 0
scoreboard players enable @s nhc_tr_pvp

function nhc:settings/updatebook