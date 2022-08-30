scoreboard players add @a[scores={swordcounter=1799,diamondprof=0..100},tag=sword] diamondprof 1
execute as @a[tag=sword,scores={status=1},nbt={SelectedItem:{id:"minecraft:diamond_sword",Count:1b,tag:{swh:1b,CustomModelData:3690020}}}] run tellraw @s ["",{"text":"Current Sword Proficiency: ","bold":true,"color":"2B9CFF"},{"score":{"name":"@s","objective":"diamondprof"},"bold":true,"color":"aqua"},{"text":"%","color":"dark_aqua"}]
execute as @a[tag=sword,scores={take_energy=1..,diamondprof=1..},nbt={SelectedItem:{id:"minecraft:diamond_sword",Count:1b,tag:{swh:1b,CustomModelData:3690020}}}] run function sword_hero:level_up/energy_reset
execute as @a[tag=sword,scores={give_energy=1..,sword_ep=20..},nbt={SelectedItem:{id:"minecraft:diamond_sword",Count:1b,tag:{swh:1b,CustomModelData:3690020}}}] run function sword_hero:level_up/energy_reset
scoreboard players set @a[tag=sword,scores={status=1..}] status 0
