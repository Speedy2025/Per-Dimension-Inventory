#Fixes a bug where it doesn't care about @s
advancement revoke @s only pdi:dimswap

#Register dimension if needed

#Bugfix >.<
# - I'm cheating my own system, but by doing this I force the player to
#   have a c.inv.curr score.
scoreboard players operation @s[tag=!pdi.override] c.inv.prev = @s c.inv.curr
tag @s add se.dim.marker

#Precautionary Measure
function pdi:misc/register

#Bugfix part 2
schedule function pdi:createme 10s append

# Bugfix part 3
# - now that I cheated the system, I need to clean up after myself.
tag @s remove se.dim.marker
tag @s remove pdi.registered

#Update Inventory
#scoreboard players operation @s[tag=!pdi.override] c.inv.prev = @s c.inv.curr
#scoreboard players operation @s[tag=!pdi.override] c.inv.curr = @e[tag=pdi.registered,distance=0..] c.inv.curr

execute if entity @s[tag=!pdi.bypass] unless score @s c.inv.prev = @s c.inv.curr in minecraft:overworld run function pdi:swap/redirect

#Update mode
gamemode survival @s[scores={c.inv.curr=1}]
gamemode creative @s[scores={c.inv.curr=2}]
gamemode survival @s[scores={c.inv.curr=3..10}]
gamemode adventure @s[scores={c.inv.curr=11}]

function #pdi:update_mode
