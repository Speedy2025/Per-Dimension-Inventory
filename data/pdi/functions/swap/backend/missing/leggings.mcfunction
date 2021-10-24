data modify block 0 0 0 Items set value [{id:"minecraft:cod",Count:1b}]
data modify block 0 0 0 Items[0].id set from storage rx:io playerdb.player.data.pdi_cache.inventory[{Slot:101b}].id
data modify block 0 0 0 Items[0].Count set from storage rx:io playerdb.player.data.pdi_cache.inventory[{Slot:101b}].Count
execute if data storage rx:io playerdb.player.data.pdi_cache.inventory[{Slot:101b}].tag run data modify block 0 0 0 Items[0].tag set from storage rx:io playerdb.player.data.pdi_cache.inventory[{Slot:101b}].tag
loot replace entity @s armor.legs 1 mine 0 0 0 air{drop_contents:1b}
