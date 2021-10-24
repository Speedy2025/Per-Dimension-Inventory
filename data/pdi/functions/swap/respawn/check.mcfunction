tag @s add pdi.death

# Special case for @e- detecting if they're dead
execute if entity @e[tag=pdi.death] run function pdi:swap/respawn/success
tag @s remove pdi.death
advancement revoke @s only pdi:respawn 2