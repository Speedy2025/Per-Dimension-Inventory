function #rx.playerdb:api/v2/get/self
data modify storage rx.playerdb:io player.data.pdi[9].inventory set from entity @s Inventory
data modify storage rx.playerdb:io player.data.pdi[9].ender_chest set from entity @s EnderItems
execute store result storage rx.playerdb:io player.data.pdi[9].xpp int 1 run xp query @s points
execute store result storage rx.playerdb:io player.data.pdi[9].xpl int 1 run xp query @s levels
function #rx.playerdb:api/v2/save/self
