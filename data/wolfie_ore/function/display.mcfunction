scoreboard players set @s wo.ui 5
execute if score @s wo.state matches 1 run return run function wolfie_ore:locked_display
execute if score @s wo.slot matches 0 run item modify entity @s weapon.mainhand wolfie_ore:clear
execute if score @s wo.slot matches 1 run item modify entity @s weapon.offhand wolfie_ore:clear
execute if score @s wo.state matches 0 run title @s actionbar {"text":"Scanning for ore…","color":"gray"}
execute if score @s wo.state matches 2 run title @s actionbar {"text":"No matching ore within 16 blocks","color":"gray"}
