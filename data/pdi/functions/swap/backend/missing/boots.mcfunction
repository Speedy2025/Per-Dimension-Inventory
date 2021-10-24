data modify block 0 0 0 Items set value [{id:"minecraft:cod",Count:1b}]
data modify block 0 0 0 Items[0].id set from storage rx:io playerdb.player.data.pdi_cache.inventory[{Slot:100b}].id
data modify block 0 0 0 Items[0].Count set from storage rx:io playerdb.player.data.pdi_cache.inventory[{Slot:100b}].Count
execute if data storage rx:io playerdb.player.data.pdi_cache.inventory[{Slot:100b}].tag run data modify block 0 0 0 Items[0].tag set from storage rx:io playerdb.player.data.pdi_cache.inventory[{Slot:100b}].tag
loot replace entity @s armor.feet 1 mine 0 0 0 air{drop_contents:1b}
