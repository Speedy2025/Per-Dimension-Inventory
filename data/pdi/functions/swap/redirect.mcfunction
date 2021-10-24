#Save Inventories
execute if score @s c.inv.prev matches 1 run function pdi:swap/save/1
execute if score @s c.inv.prev matches 2 run function pdi:swap/save/2
execute if score @s c.inv.prev matches 3 run function pdi:swap/save/3
execute if score @s c.inv.prev matches 4 run function pdi:swap/save/4
execute if score @s c.inv.prev matches 5 run function pdi:swap/save/5
execute if score @s c.inv.prev matches 6 run function pdi:swap/save/6
execute if score @s c.inv.prev matches 7 run function pdi:swap/save/7
execute if score @s c.inv.prev matches 8 run function pdi:swap/save/8
execute if score @s c.inv.prev matches 9 run function pdi:swap/save/9
execute if score @s c.inv.prev matches 10 run function pdi:swap/save/10

#Assist the transfer!
clear @s
xp set @s 0 levels
xp set @s 0 points
effect clear @s

#Load Inventories
execute if score @s c.inv.curr matches 1 run function pdi:swap/load/1
execute if score @s c.inv.curr matches 2 run function pdi:swap/load/2
execute if score @s c.inv.curr matches 3 run function pdi:swap/load/3
execute if score @s c.inv.curr matches 4 run function pdi:swap/load/4
execute if score @s c.inv.curr matches 5 run function pdi:swap/load/5
execute if score @s c.inv.curr matches 6 run function pdi:swap/load/6
execute if score @s c.inv.curr matches 7 run function pdi:swap/load/7
execute if score @s c.inv.curr matches 8 run function pdi:swap/load/8
execute if score @s c.inv.curr matches 9 run function pdi:swap/load/9
execute if score @s c.inv.curr matches 10 run function pdi:swap/load/10