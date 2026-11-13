function wolfie_ore:distance
execute if score @s wo.d2 matches 257.. run return run function wolfie_ore:reset
execute store result storage wolfie_ore:runtime scan.x int 1 run scoreboard players get @s wo.tx
execute store result storage wolfie_ore:runtime scan.y int 1 run scoreboard players get @s wo.ty
execute store result storage wolfie_ore:runtime scan.z int 1 run scoreboard players get @s wo.tz
function wolfie_ore:validate_block with storage wolfie_ore:runtime scan
