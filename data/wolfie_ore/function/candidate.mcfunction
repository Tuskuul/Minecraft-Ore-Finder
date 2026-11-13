scoreboard players operation @s wo.tx = @s wo.ox
$scoreboard players set @s wo.tmp $(dx)
scoreboard players operation @s wo.tx += @s wo.tmp
scoreboard players operation @s wo.ty = @s wo.oy
$scoreboard players set @s wo.tmp $(dy)
scoreboard players operation @s wo.ty += @s wo.tmp
scoreboard players operation @s wo.tz = @s wo.oz
$scoreboard players set @s wo.tmp $(dz)
scoreboard players operation @s wo.tz += @s wo.tmp
function wolfie_ore:distance
execute if score @s wo.d2 matches ..256 run scoreboard players set @s wo.state 1
execute if score @s wo.state matches 1 run scoreboard players set @s wo.ui 0
