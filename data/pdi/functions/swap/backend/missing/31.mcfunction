data modify block 29999998 1 -29999964 Items set value [{id:"minecraft:cod",Count:1b}]
data modify block 29999998 1 -29999964 Items[0].id set from storage rx.playerdb:io player.data.pdi_cache.inventory[{Slot:31b}].id
data modify block 29999998 1 -29999964 Items[0].Count set from storage rx.playerdb:io player.data.pdi_cache.inventory[{Slot:31b}].Count
execute if data storage rx.playerdb:io player.data.pdi_cache.inventory[{Slot:31b}].tag run data modify block 29999998 1 -29999964 Items[0].tag set from storage rx.playerdb:io player.data.pdi_cache.inventory[{Slot:31b}].tag
loot replace entity @s inventory.22 1 mine 29999998 1 -29999964 air{drop_contents:1b}