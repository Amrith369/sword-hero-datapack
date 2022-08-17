scoreboard players add @a[scores={swordcounter=1799,starprof=0..100},tag=sword] starprof 1
execute as @a[tag=sword,scores={status=1},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:3690015}}}] run tellraw @s ["",{"text":"Current Sword Proficiency: ","bold":true,"color":"2B9CFF"},{"score":{"name":"@s","objective":"starprof"},"bold":true,"color":"aqua"},{"text":"%","color":"dark_aqua"}]
execute as @a[tag=sword,scores={take_energy=1..,starprof=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:3690015}}}] run function sword_hero:level_up/energy_reset
execute as @a[tag=sword,scores={give_energy=1..,sword_ep=20..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:3690015}}}] run function sword_hero:level_up/energy_reset
scoreboard players set @a[tag=sword,scores={status=1..}] status 0
