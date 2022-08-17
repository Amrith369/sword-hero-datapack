scoreboard players enable @a[advancements={sword_hero:swords/portal=true}] set_warp_a
scoreboard players enable @a[advancements={sword_hero:swords/portal=true}] set_warp_b
scoreboard players enable @a[scores={portalprof=100..},advancements={sword_hero:swords/portal=true}] set_warp_c
scoreboard players enable @a[advancements={sword_hero:swords/portal=true}] warp_a
scoreboard players enable @a[advancements={sword_hero:swords/portal=true}] warp_b
scoreboard players enable @a[scores={portalprof=100..},advancements={sword_hero:swords/portal=true}] warp_c
#SET WARP A
tellraw @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:3690014}}},tag=sword,scores={set_warp_a=1..}] {"text":"[NOTICE] Warp Point A Set","color":"#9DE1A9"}
execute at @a[tag=sword,scores={set_warp_a=1..}] run execute store result score z sword_a_coords run data get entity @p[tag=sword] Pos[2]
execute at @a[tag=sword,scores={set_warp_a=1..}] run execute store result score y sword_a_coords run data get entity @p[tag=sword] Pos[1]
execute at @a[tag=sword,scores={set_warp_a=1..}] run execute store result score x sword_a_coords run data get entity @p[tag=sword] Pos[0]
#execute at @a[tag=sword,scores={set_warp_a=1..}] run summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,Invulnerable:1,Tags:["point_a"]}
#SET WARP B
tellraw @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:3690014}}},tag=sword,scores={set_warp_b=1..}] {"text":"[NOTICE] Warp Point B Set","color":"#9DE1A9"}
execute at @a[tag=sword,scores={set_warp_b=1..}] run execute store result score z sword_b_coords run data get entity @p[tag=sword] Pos[2]
execute at @a[tag=sword,scores={set_warp_b=1..}] run execute store result score y sword_b_coords run data get entity @p[tag=sword] Pos[1]
execute at @a[tag=sword,scores={set_warp_b=1..}] run execute store result score x sword_b_coords run data get entity @p[tag=sword] Pos[0]
#SET WARP C
tellraw @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:3690014}}},tag=sword,scores={set_warp_c=1..}] {"text":"[NOTICE] Warp Point C Set","color":"#9DE1A9"}
execute at @a[tag=sword,scores={set_warp_c=1..}] run execute store result score z sword_c_coords run data get entity @p[tag=sword] Pos[2]
execute at @a[tag=sword,scores={set_warp_c=1..}] run execute store result score y sword_c_coords run data get entity @p[tag=sword] Pos[1]
execute at @a[tag=sword,scores={set_warp_c=1..}] run execute store result score x sword_c_coords run data get entity @p[tag=sword] Pos[0]
#TELEPORT TO POINT A
tellraw @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:3690014}}},tag=sword,scores={warp_a=1..,sp=50..}] {"text":"[NOTICE] Warp Successful","color":"#70FF8A"}
execute at @a[tag=sword,scores={warp_a=1..}] run summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,Invulnerable:1,Tags:["point_a"]}
execute store result entity @e[tag=point_a,limit=1] Pos[0] double 1 run scoreboard players get x sword_a_coords
execute store result entity @e[tag=point_a,limit=1] Pos[1] double 1 run scoreboard players get y sword_a_coords
execute store result entity @e[tag=point_a,limit=1] Pos[2] double 1 run scoreboard players get z sword_a_coords
tp @a[tag=sword,scores={warp_a=1..,sp=50..}] @e[tag=point_a,limit=1]
execute at @a[tag=sword,scores={warp_a=1..,sp=50..}] run tp @a[tag=sword-party,distance=0..4] @e[tag=point_a,limit=1]
execute at @a[tag=sword,scores={warp_a=1..,sp=50..}] run particle minecraft:flash ~ ~ ~ 1 1 1 0.03 100
#TELEPORT TO POINT B
tellraw @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:3690014}}},tag=sword,scores={warp_b=1..,sp=50..}] {"text":"[NOTICE] Warp Successful","color":"#70FF8A"}
execute at @a[tag=sword,scores={warp_b=1..}] run summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,Invulnerable:1,Tags:["point_b"]}
execute store result entity @e[tag=point_b,limit=1] Pos[0] double 1 run scoreboard players get x sword_b_coords
execute store result entity @e[tag=point_b,limit=1] Pos[1] double 1 run scoreboard players get y sword_b_coords
execute store result entity @e[tag=point_b,limit=1] Pos[2] double 1 run scoreboard players get z sword_b_coords
tp @a[tag=sword,scores={warp_b=1..,sp=50..}] @e[tag=point_b,limit=1]
execute at @a[tag=sword,scores={warp_b=1..,sp=50..}] run tp @a[tag=sword-party,distance=0..4] @e[tag=point_b,limit=1]
execute at @a[tag=sword,scores={warp_b=1..,sp=50..}] run particle minecraft:flash ~ ~ ~ 1 1 1 0.03 100
#TELEPORT TO POINT C
tellraw @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:3690014}}},tag=sword,scores={warp_c=1..,sp=50..}] {"text":"[NOTICE] Warp Successful","color":"#70FF8A"}
execute at @a[tag=sword,scores={warp_c=1..}] run summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,Invulnerable:1,Tags:["point_c"]}
execute store result entity @e[tag=point_c,limit=1] Pos[0] double 1 run scoreboard players get x sword_c_coords
execute store result entity @e[tag=point_c,limit=1] Pos[1] double 1 run scoreboard players get y sword_c_coords
execute store result entity @e[tag=point_c,limit=1] Pos[2] double 1 run scoreboard players get z sword_c_coords
tp @a[tag=sword,scores={warp_c=1..,sp=50..}] @e[tag=point_c,limit=1]
execute at @a[tag=sword,scores={warp_c=1..,sp=50..}] run tp @a[tag=sword-party,distance=0..4] @e[tag=point_c,limit=1]
execute at @a[tag=sword,scores={warp_c=1..,sp=50..}] run particle minecraft:flash ~ ~ ~ 1 1 1 0.03 100
#REMOVE SP & SCORES
scoreboard players remove @a[tag=sword,scores={warp_a=1..,sp=50..}] sp 50
scoreboard players remove @a[tag=sword,scores={warp_b=1..,sp=50..}] sp 50
scoreboard players remove @a[tag=sword,scores={warp_c=1..,sp=50..}] sp 50
scoreboard players set @a[tag=sword,scores={warp_b=1..}] warp_b 0
scoreboard players set @a[tag=sword,scores={warp_a=1..}] warp_a 0
scoreboard players set @a[tag=sword,scores={warp_c=1..}] warp_c 0
scoreboard players set @a[tag=sword,scores={set_warp_a=1..}] set_warp_a 0
scoreboard players set @a[tag=sword,scores={set_warp_b=1..}] set_warp_b 0
scoreboard players set @a[tag=sword,scores={set_warp_c=1..}] set_warp_c 0
kill @e[tag=point_a]
kill @e[tag=point_b]
kill @e[tag=point_c]
#Proficiency
scoreboard players add @a[scores={swordcounter=1799,portalprof=0..100},tag=sword] portalprof 1
tag @a[tag=sword,scores={portalprof=100}] add port
execute as @a[scores={status=1},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:3690014}}}] run tellraw @p ["",{"text":"Current Sword Proficiency: ","bold":true,"color":"dark_aqua"},{"score":{"name":"@s","objective":"portalprof"},"bold":true,"color":"green"},{"text":"%","color":"dark_aqua"}]
execute as @a[scores={take_energy=1..,portalprof=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:3690014}}}] run function sword_hero:energy_reset
execute as @a[scores={give_energy=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:3690014}}}] run function sword_hero:energy_reset
#scoreboard players set @a[tag=sword,scores={status=1..}] status 0
