data modify block 29999998 1 -29999964 Items set from storage rx.playerdb:io player.data.pdi_cache.inventory
loot replace entity @s hotbar.0 mine 29999998 1 -29999964 air{drop_contents:1b}

# Offhand, Missing Row, & Armor
#-> Offhand
execute if data storage rx.playerdb:io player.data.pdi_cache.inventory[{Slot:-106b}] run function pdi:swap/backend/missing/offhand
#-> Missing Row
execute if data storage rx.playerdb:io player.data.pdi_cache.inventory[{Slot:27b}] run function pdi:swap/backend/missing/27
execute if data storage rx.playerdb:io player.data.pdi_cache.inventory[{Slot:28b}] run function pdi:swap/backend/missing/28
execute if data storage rx.playerdb:io player.data.pdi_cache.inventory[{Slot:29b}] run function pdi:swap/backend/missing/29
execute if data storage rx.playerdb:io player.data.pdi_cache.inventory[{Slot:30b}] run function pdi:swap/backend/missing/30
execute if data storage rx.playerdb:io player.data.pdi_cache.inventory[{Slot:31b}] run function pdi:swap/backend/missing/31
execute if data storage rx.playerdb:io player.data.pdi_cache.inventory[{Slot:32b}] run function pdi:swap/backend/missing/32
execute if data storage rx.playerdb:io player.data.pdi_cache.inventory[{Slot:33b}] run function pdi:swap/backend/missing/33
execute if data storage rx.playerdb:io player.data.pdi_cache.inventory[{Slot:34b}] run function pdi:swap/backend/missing/34
execute if data storage rx.playerdb:io player.data.pdi_cache.inventory[{Slot:35b}] run function pdi:swap/backend/missing/35
#-> Armor
execute if data storage rx.playerdb:io player.data.pdi_cache.inventory[{Slot:103b}] run function pdi:swap/backend/missing/helmet
execute if data storage rx.playerdb:io player.data.pdi_cache.inventory[{Slot:102b}] run function pdi:swap/backend/missing/chestplate
execute if data storage rx.playerdb:io player.data.pdi_cache.inventory[{Slot:101b}] run function pdi:swap/backend/missing/leggings
execute if data storage rx.playerdb:io player.data.pdi_cache.inventory[{Slot:100b}] run function pdi:swap/backend/missing/boots
