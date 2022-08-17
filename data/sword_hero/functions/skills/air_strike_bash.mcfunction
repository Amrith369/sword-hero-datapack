#say Air Strike Bash!
execute at @a[scores={right_click=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:3690012}}}] run playsound minecraft:entity.elder_guardian.hurt player @a
effect give @a[scores={right_click=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:3690012}}}] resistance 1 10 true
title @a[tag=sword,scores={right_click=1..,sp=20..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:3690012}}}] actionbar {"text":"Air Strike Bash!","color":"#9bcff7","bold":true,"italic":true}
execute at @s run summon armor_stand ^ ^ ^3 {Tags:["bash","global"],Invisible:1,NoGravity:1}
execute at @e[tag=bash] run particle crit ~ ~ ~ 0 0 0 2 1 normal
execute at @e[tag=bash] run particle dust 0.078 1.000 0.969 1 ~ ~1.5 ~ 1 1 1 2 30 normal
execute at @e[tag=bash] run summon minecraft:fireball ^ ^1 ^ {life:20,ExplosionPower:1,direction:[0.0,-2.0,0.0],power:[0.0,-2.0,0.0],Item:{id:"minecraft:heart_of_the_sea",Count:1b}}
execute at @e[tag=bash] run scoreboard players remove @a[tag=sword,distance=0..5] sp 20
kill @e[tag=bash]
scoreboard players set @s right_click 0
