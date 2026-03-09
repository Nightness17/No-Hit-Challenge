#Inicio
tellraw @a {"text":"Welcome to the No Hit Challenge made by Nightness17!"}

#Gamerules
gamerule immediate_respawn true
gamerule send_command_feedback false
gamerule log_admin_commands false

#Scoreboards
scoreboard objectives add nhc_st_damage_taken minecraft.custom:minecraft.damage_taken
scoreboard objectives add nhc_tr_start_votes trigger
scoreboard objectives add nhc_st_game_state dummy
scoreboard objectives add nhc_st_spread_success dummy
scoreboard objectives add nhc_tr_spectators trigger
scoreboard objectives add nhc_tr_forced_start trigger

#Configuraciones
scoreboard objectives add nhc_cfg_pvp dummy
scoreboard objectives add nhc_cfg_shieldless dummy

#Triggers de configuraciones
scoreboard objectives add nhc_tr_shieldless trigger
scoreboard objectives add nhc_tr_pvp trigger

#Verificar partida ya comenzada
execute unless score #estado_global nhc_st_game_state matches 0..2 run function nhc:preparegame

