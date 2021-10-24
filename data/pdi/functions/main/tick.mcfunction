## PDI by Speedy2025

# I've moved most personal-player logic to advancements.
#   They save a few commands, but it isn't perfect. I'm doing it
#   to let me learn alternative methods to making the same things.
execute as @a[tag=!pdi.migrated] at @s run function pdi:misc/migrate
advancement grant @a[scores={pdi.death=1..}] only pdi:respawn 1

#One last thing that needs ticking: bobber
# It's okay that this breaks- it won't affect anything while it waits.
#  also what kind of madman throws a fishing rod within 0s ._.
execute as @e[type=fishing_bobber] at @s run scoreboard players operation @s c.inv.curr = @e[tag=pdi.registered,distance=0..] c.inv.curr

# Another note: I am FULLY aware that I'm not taking advantage
#   of an optimization with not using rx.playerdb:api/get or save self
#   if it already is done. Although this pack is meant for advanced
#   users, people are unpredictable. I do NOT trust the user 
#   to remember to get and safe, so I do it for them so that a 
#   less advanced user doesn't break the DP and I myself don't have 
#   to worry about it. That and I anticipate the user to bounce
#   around functions (like saving 1, 2, and 10 but not
#   ever loading an inventory) as a way to increase openness.

# Thus concludes my rant, I don't intend to optimize that aspect.