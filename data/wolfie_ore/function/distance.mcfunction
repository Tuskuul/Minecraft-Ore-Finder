scoreboard players set @s wo.d2 0
scoreboard players operation @s wo.tmp = @s wo.tx
scoreboard players operation @s wo.tmp -= @s wo.px
scoreboard players operation @s wo.tmp *= @s wo.tmp
scoreboard players operation @s wo.d2 += @s wo.tmp
scoreboard players operation @s wo.tmp = @s wo.ty
scoreboard players operation @s wo.tmp -= @s wo.py
scoreboard players operation @s wo.tmp *= @s wo.tmp
scoreboard players operation @s wo.d2 += @s wo.tmp
scoreboard players operation @s wo.tmp = @s wo.tz
scoreboard players operation @s wo.tmp -= @s wo.pz
scoreboard players operation @s wo.tmp *= @s wo.tmp
scoreboard players operation @s wo.d2 += @s wo.tmp
