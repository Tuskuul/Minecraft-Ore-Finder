execute unless entity @s[tag=wo.recipes] run function wolfie_ore:unlock
scoreboard players set @s wo.type 0
execute if items entity @s weapon.mainhand minecraft:compass[minecraft:custom_data~{wolfie_ore:{}}] run function wolfie_ore:hand/mainhand
execute if score @s wo.type matches 0 if items entity @s weapon.offhand minecraft:compass[minecraft:custom_data~{wolfie_ore:{}}] run function wolfie_ore:hand/offhand
execute if score @s wo.type matches 0 run return run function wolfie_ore:inactive
execute store result score @s wo.px run data get entity @s Pos[0] 1
execute store result score @s wo.py run data get entity @s Pos[1] 1
execute store result score @s wo.pz run data get entity @s Pos[2] 1
scoreboard players set @s wo.dim 0
execute if dimension minecraft:overworld run scoreboard players set @s wo.dim 1
execute if dimension minecraft:the_nether run scoreboard players set @s wo.dim 2
execute if dimension minecraft:the_end run scoreboard players set @s wo.dim 3
execute unless score @s wo.type = @s wo.prev run function wolfie_ore:reset
execute unless score @s wo.slot = @s wo.pslot run function wolfie_ore:reset
execute unless score @s wo.dim = @s wo.pdim run function wolfie_ore:reset
execute if score @s wo.type matches 1 run data modify storage wolfie_ore:runtime scan.ore set value "coal"
execute if score @s wo.type matches 2 run data modify storage wolfie_ore:runtime scan.ore set value "iron"
execute if score @s wo.type matches 3 run data modify storage wolfie_ore:runtime scan.ore set value "copper"
execute if score @s wo.type matches 4 run data modify storage wolfie_ore:runtime scan.ore set value "gold"
execute if score @s wo.type matches 5 run data modify storage wolfie_ore:runtime scan.ore set value "redstone"
execute if score @s wo.type matches 6 run data modify storage wolfie_ore:runtime scan.ore set value "lapis"
execute if score @s wo.type matches 7 run data modify storage wolfie_ore:runtime scan.ore set value "diamond"
execute if score @s wo.type matches 8 run data modify storage wolfie_ore:runtime scan.ore set value "emerald"
execute if score @s wo.type matches 9 run data modify storage wolfie_ore:runtime scan.ore set value "quartz"
execute if score @s wo.type matches 10 run data modify storage wolfie_ore:runtime scan.ore set value "ancient_debris"
execute if dimension minecraft:overworld run data modify storage wolfie_ore:runtime scan.dimension set value "minecraft:overworld"
execute if dimension minecraft:the_nether run data modify storage wolfie_ore:runtime scan.dimension set value "minecraft:the_nether"
execute if dimension minecraft:the_end run data modify storage wolfie_ore:runtime scan.dimension set value "minecraft:the_end"
execute if score @s wo.state matches 1 run function wolfie_ore:validate
execute if score @s wo.state matches 0 run function wolfie_ore:scan
execute if score @s wo.state matches 2 run scoreboard players remove @s wo.wait 1
execute if score @s wo.state matches 2 if score @s wo.wait matches ..0 run function wolfie_ore:reset
scoreboard players remove @s wo.ui 1
execute if score @s wo.ui matches ..0 run function wolfie_ore:display
