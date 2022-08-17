#ROPE
scoreboard players add @a[scores={take_energy=1,ropeprof=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:3690012}}}] sword_ep 20
scoreboard players remove @a[scores={take_energy=1,ropeprof=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:3690012}}}] ropeprof 1
scoreboard players set @a[scores={take_energy=1,ropeprof=0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:3690012}}}] take_energy 0
scoreboard players add @a[scores={give_energy=1..,sword_ep=20..,ropeprof=..1000},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:3690012}}}] ropeprof 1
scoreboard players remove @a[scores={give_energy=1..,sword_ep=20..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:3690012}}}] sword_ep 20
scoreboard players set @a[scores={give_energy=1..,sword_ep=..19},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:3690012}}}] give_energy 0
#SIDERITE
scoreboard players add @a[scores={take_energy=1,sideriteprof=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:3690013}}}] sword_ep 20
scoreboard players remove @a[scores={take_energy=1,sideriteprof=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:3690013}}}] sideriteprof 1
scoreboard players set @a[scores={take_energy=1,sideriteprof=0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:3690013}}}] take_energy 0
scoreboard players add @a[scores={give_energy=1..,sword_ep=20..,sideriteprof=..1000},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:3690013}}}] sideriteprof 1
scoreboard players remove @a[scores={give_energy=1..,sword_ep=20..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:3690013}}}] sword_ep 20
scoreboard players set @a[scores={give_energy=1..,sword_ep=..19},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:3690013}}}] give_energy 0
#PORTAL
scoreboard players add @a[scores={take_energy=1,portalprof=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:3690014}}}] sword_ep 20
scoreboard players remove @a[scores={take_energy=1,portalprof=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:3690014}}}] portalprof 1
scoreboard players set @a[scores={take_energy=1,portalprof=0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:3690014}}}] take_energy 0
scoreboard players add @a[scores={give_energy=1..,sword_ep=20..,portalprof=..1000},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:3690014}}}] portalprof 1
scoreboard players remove @a[scores={give_energy=1..,sword_ep=20..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:3690014}}}] sword_ep 20
scoreboard players set @a[scores={give_energy=1..,sword_ep=..19},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:3690014}}}] give_energy 0
#STAR
scoreboard players add @a[scores={take_energy=1,starprof=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:3690015}}}] sword_ep 20
scoreboard players remove @a[scores={take_energy=1,starprof=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:3690015}}}] starprof 1
scoreboard players set @a[scores={take_energy=1,starprof=0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:3690015}}}] take_energy 0
scoreboard players add @a[scores={give_energy=1..,sword_ep=20..,starprof=..1000},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:3690015}}}] starprof 1
scoreboard players remove @a[scores={give_energy=1..,sword_ep=20..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:3690015}}}] sword_ep 20
scoreboard players set @a[scores={give_energy=1..,sword_ep=..19},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:3690015}}}] give_energy 0
#Messages
execute as @a[tag=sword,scores={give_energy=1..}] run title @s[tag=sword] actionbar [{"text":"Imbuing Energy Points...","color":"aqua"}]
execute as @a[tag=sword,scores={take_energy=1..}] run title @s[tag=sword] actionbar [{"text":"Resetting Proficiency...","color":"gold"}]
