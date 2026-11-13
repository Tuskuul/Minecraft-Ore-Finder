scoreboard players set @s wo.tmp -1
scoreboard players operation @s wo.dy *= @s wo.tmp
title @s actionbar [{"text":"Ore · ↓ ","color":"gold"},{"score":{"name":"@s","objective":"wo.dy"}},{"text":" blocks below"}]
