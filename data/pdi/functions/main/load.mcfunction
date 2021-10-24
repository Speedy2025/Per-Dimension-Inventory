## PDI Scoreboard Objective Creation

# Some things to note:
# 1. PDI does NOT handle teleporting around.
#    SEv3 will handle teleporting around, if you want it.
#     Keep in mind you can disable SEv3 using admin tags.
# 2. PDI does NOT handle pets, though you could "store" them in theory.


# - Scoreboards -

#Note: Prefixed with c to support legacy stuff on my server
scoreboard objectives add c.inv.curr dummy [{"text":"inv.curr","color":"#5137c4"}]
scoreboard objectives add c.inv.prev dummy [{"text":"inv.prev","color":"#5137c4"}]
scoreboard objectives add pdi.levels dummy [{"text":"levels","color":"#5137c4"}]
scoreboard objectives add pdi.death deathCount [{"text":"death","color":"#5137c4"}]
