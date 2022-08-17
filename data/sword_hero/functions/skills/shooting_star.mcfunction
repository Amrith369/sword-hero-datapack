#say Air Strike star!
execute at @a[scores={right_click=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:3690015}}}] run playsound minecraft:block.amethyst_block.hit player @a
effect give @a[scores={right_click=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:3690015}}}] resistance 1 10 true
title @a[tag=sword,scores={right_click=1..,sp=20..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:3690015}}}] actionbar {"text":"Shooting Star Sword!","color":"#5991FF","bold":true,"italic":true}
execute at @s run summon armor_stand ^ ^1 ^5 {Tags:["star","global"],Invisible:1,NoGravity:1}
execute at @e[tag=star] run particle dust 0.078 1.000 0.956 1 ~ ~ ~ 0 0 0 2 1 normal
execute at @e[tag=star] run particle dust 0.078 1.000 0.969 1 ~ ~1.5 ~ 1 1 1 2 30 normal
execute at @e[tag=star] run summon minecraft:fireball ^ ^1 ^ {life:20,ExplosionPower:1,direction:[0.0,-2.0,0.0],power:[0.0,-2.0,0.0],Item:{id:"minecraft:heart_of_the_sea",Count:1b}}
execute at @e[tag=star] run summon firework_rocket ^ ^ ^ {Life:1,LifeTime:1,ShotAtAngle:1b,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:2,Flicker:1b,Trail:1b,Colors:[I;581375,2402303],FadeColors:[I;16777215,12239871]}]}}}}
execute at @e[tag=star] run summon firework_rocket ^1 ^ ^ {Life:1,LifeTime:1,ShotAtAngle:1b,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:2,Flicker:1b,Trail:1b,Colors:[I;581375,2402303],FadeColors:[I;16777215,12239871]}]}}}}
execute at @e[tag=star] run summon firework_rocket ^-1 ^ ^ {Life:1,LifeTime:1,ShotAtAngle:1b,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:2,Flicker:1b,Trail:1b,Colors:[I;581375,2402303],FadeColors:[I;16777215,12239871]}]}}}}
execute at @e[tag=star] run scoreboard players remove @a[tag=sword,distance=0..5] sp 25
kill @e[tag=star]
scoreboard players set @s right_click 0
