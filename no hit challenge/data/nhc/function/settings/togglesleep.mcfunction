execute if score @s nhc_tr_allow_sleep matches 1 run scoreboard players set #global nhc_cfg_allow_sleep 1
execute if score @s nhc_tr_allow_sleep matches 2 run scoreboard players set #global nhc_cfg_allow_sleep 0

execute if score #global nhc_cfg_allow_sleep matches 1 run tellraw @a [{selector: "@s"}, {text:" has"}, {text: " ENABLED ", color: "green"}, {text: "sleeping."}]
execute if score #global nhc_cfg_allow_sleep matches 0 run tellraw @a [{selector: "@s"}, {text:" has"}, {text: " DISABLED ", color: "red"}, {text: "sleeping."}]

scoreboard players set @s nhc_tr_allow_sleep 0
scoreboard players enable @s nhc_tr_allow_sleep

execute as @a run function nhc:settings/updatebook