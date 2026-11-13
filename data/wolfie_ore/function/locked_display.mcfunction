execute store result storage wolfie_ore:runtime scan.x int 1 run scoreboard players get @s wo.tx
execute store result storage wolfie_ore:runtime scan.y int 1 run scoreboard players get @s wo.ty
execute store result storage wolfie_ore:runtime scan.z int 1 run scoreboard players get @s wo.tz
function wolfie_ore:point with storage wolfie_ore:runtime scan
scoreboard players operation @s wo.dy = @s wo.ty
scoreboard players operation @s wo.dy -= @s wo.py
execute if score @s wo.dy matches 1.. run title @s actionbar [{"text":"Ore · ↑ ","color":"aqua"},{"score":{"name":"@s","objective":"wo.dy"}},{"text":" blocks above"}]
execute if score @s wo.dy matches 0 run title @s actionbar {"text":"Ore · ◆ Same level","color":"green"}
execute if score @s wo.dy matches ..-1 run function wolfie_ore:below
