function rx.playerdb:api/get_self
data modify storage rx:io playerdb.player.data.pdi[0].inventory set from entity @s Inventory
data modify storage rx:io playerdb.player.data.pdi[0].ender_chest set from entity @s EnderItems
execute store result storage rx:io playerdb.player.data.pdi[0].xpp int 1 run xp query @s points
execute store result storage rx:io playerdb.player.data.pdi[0].xpl int 1 run xp query @s levels
function rx.playerdb:api/save_self
