function #rx.playerdb:api/v2/get/self

#Starting with preparing to migrate inventory
data modify storage rx.playerdb:io player.data.pdi set value [{inventory:[],xpp:0,xpl:0,ender_chest:[]},{inventory:[],xpp:0,xpl:0,ender_chest:[]},{inventory:[],xpp:0,xpl:0,ender_chest:[]},{inventory:[],xpp:0,xpl:0,ender_chest:[]},{inventory:[],xpp:0,xpl:0,ender_chest:[]},{inventory:[],xpp:0,xpl:0,ender_chest:[]},{inventory:[],xpp:0,xpl:0,ender_chest:[]},{inventory:[],xpp:0,xpl:0,ender_chest:[]},{inventory:[],xpp:0,xpl:0,ender_chest:[]},{inventory:[],xpp:0,xpl:0,ender_chest:[]}]
data modify storage rx.playerdb:io player.data.pdi_cache set value {inventory:[],ender_chest:[]}

#Bugfix :speedy:
function #rx.playerdb:api/v2/save/self
#Now, provided C was previously installed, we'll move their inventory. If it wasn't, no harm done.

#In C, there was only 2 inventories and you swapped between them.
function se:misc/dimension/get

tag @s add se.dim.marker
function pdi:misc/register
tag @s remove se.dim.marker
tag @s remove pdi.registered

execute if score @s c.inv.curr matches 1 run function pdi:swap/save/1
execute if score @s c.inv.curr matches 2 run function pdi:swap/save/2

#The above functions save, so I must get again.
function #rx.playerdb:api/v2/get/self

execute if score @s c.inv.curr matches 1 run data modify storage rx.playerdb:io player.data.pdi[1].inventory set from storage rx.playerdb:io player.data.c.inventory
execute if score @s c.inv.curr matches 2 run data modify storage rx.playerdb:io player.data.pdi[0].inventory set from storage rx.playerdb:io player.data.c.inventory

execute if score @s c.inv.curr matches 1 run data modify storage rx.playerdb:io player.data.pdi[1].xpl set from storage rx.playerdb:io player.data.c.levels
execute if score @s c.inv.curr matches 2 run data modify storage rx.playerdb:io player.data.pdi[0].xpl set from storage rx.playerdb:io player.data.c.levels

execute if score @s c.inv.curr matches 1 run data modify storage rx.playerdb:io player.data.pdi[1].ender_chest set from storage rx.playerdb:io player.data.c.ender_chest
execute if score @s c.inv.curr matches 1 run data modify storage rx.playerdb:io player.data.pdi[0].ender_chest set from storage rx.playerdb:io player.data.c.ender_chest
tag @s add pdi.migrated
function #rx.playerdb:api/v2/save/self
tellraw @s ["",{"text":"[PDI] ","color":"green"},{"text":"Attempted Migration from previous world!"}]