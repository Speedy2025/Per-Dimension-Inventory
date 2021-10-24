function rx.playerdb:api/get_self

data modify storage rx:io playerdb.player.data.pdi_cache.inventory set from storage rx:io playerdb.player.data.pdi[2].inventory
function pdi:swap/backend/inventory

data modify storage rx:io playerdb.player.data.pdi_cache.ender_chest set from storage rx:io playerdb.player.data.pdi[2].ender_chest
function pdi:swap/backend/ender_chest

execute store result score @s pdi.levels run data get storage rx:io playerdb.player.data.pdi[2].xpl
function pdi:swap/backend/levels/root

execute store result score @s pdi.levels run data get storage rx:io playerdb.player.data.pdi[2].xpp
function pdi:swap/backend/points/root
