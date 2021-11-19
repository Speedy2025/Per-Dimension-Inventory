function #rx.playerdb:api/v2/get/self

data modify storage rx.playerdb:io player.data.pdi_cache.inventory set from storage rx.playerdb:io player.data.pdi[5].inventory
function pdi:swap/backend/inventory

data modify storage rx.playerdb:io player.data.pdi_cache.ender_chest set from storage rx.playerdb:io player.data.pdi[5].ender_chest
function pdi:swap/backend/ender_chest

execute store result score @s pdi.levels run data get storage rx.playerdb:io player.data.pdi[5].xpl
function pdi:swap/backend/levels/root

execute store result score @s pdi.levels run data get storage rx.playerdb:io player.data.pdi[5].xpp
function pdi:swap/backend/points/root
