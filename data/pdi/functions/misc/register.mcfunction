# Each dimension must be registered to 1 of 11 inventories.


# To conform to a system, here is what I suggest that you follow when
#  assigning inventories, assuming a survival-based world:

# 1 - Survival (Default)
# 2 - Creative
# 3 through 10 - Anything
# 11 (Hard Coded) - Minigames

# Inventory 11 is never saved and should be used for controlled inventories like
# a lobby or minigames where the player is given items or shouldn't keep items.

# Inventory 1
execute in minecraft:the_nether run scoreboard players set @e[tag=se.dim.marker,tag=!pdi.registered,distance=0..] c.inv.curr 1
execute in minecraft:overworld run scoreboard players set @e[tag=se.dim.marker,tag=!pdi.registered,distance=0..] c.inv.curr 1
execute in minecraft:the_end run scoreboard players set @e[tag=se.dim.marker,tag=!pdi.registered,distance=0..] c.inv.curr 1
execute in minecraft:tse/mining run scoreboard players set @e[tag=se.dim.marker,tag=!pdi.registered,distance=0..] c.inv.curr 4
execute in minecraft:tse/mushroom_land run scoreboard players set @e[tag=se.dim.marker,tag=!pdi.registered,distance=0..] c.inv.curr 11
# The above four prefixed with tser_dim or minecraft:tse are safe to remove without causing issues.

# Inventory 2
execute in c:10 run scoreboard players set @e[tag=se.dim.marker,tag=!pdi.registered,distance=0..] c.inv.curr 2
execute in c:1 run scoreboard players set @e[tag=se.dim.marker,tag=!pdi.registered,distance=0..] c.inv.curr 2
# The above two prefixed with c are safe to remove without causing issues.

# Inventory 11 (Lobby or Minigames)
execute in tser_dim:night_mg run scoreboard players set @e[tag=se.dim.marker,tag=!pdi.registered,distance=0..] c.inv.curr 11

# Default Setting for New Dimensions is 1 (Survival)
tag @e[tag=se.dim.marker,scores={c.inv.curr=1..}] add pdi.registered
scoreboard players set @e[tag=se.dim.marker,tag=!pdi.registered] c.inv.curr 1