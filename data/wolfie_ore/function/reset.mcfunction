scoreboard players operation @s wo.prev = @s wo.type
scoreboard players operation @s wo.pslot = @s wo.slot
scoreboard players operation @s wo.pdim = @s wo.dim
scoreboard players operation @s wo.ox = @s wo.px
scoreboard players operation @s wo.oy = @s wo.py
scoreboard players operation @s wo.oz = @s wo.pz
scoreboard players set @s wo.state 0
scoreboard players set @s wo.batch 0
scoreboard players set @s wo.ui 0
execute if score @s wo.slot matches 0 run item modify entity @s weapon.mainhand wolfie_ore:clear
execute if score @s wo.slot matches 1 run item modify entity @s weapon.offhand wolfie_ore:clear
