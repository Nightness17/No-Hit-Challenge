scoreboard players set @a nhc_st_damage_taken 0
tag @a remove nhc_choosing
tag @a remove nhc_hit
tag @a remove nhc_ready
tag @a remove nhc_spectator
tag @a remove nhc_player
tag @a remove nhc_map_center

advancement revoke @a everything
experience set @a 0 points
experience set @a 0 levels

execute as @a run function nhc:prepareplayer
function nhc:preparegame