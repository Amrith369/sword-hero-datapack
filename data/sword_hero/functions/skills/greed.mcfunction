execute at @e[tag=guillolock] run scoreboard players set @a[tag=sword,scores={guillo=1..}] guillo 0
#execute at @a[scores={ass=1..,sp=50..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:3690013}}}] run say Curses Incoming
execute at @a[scores={ass=1..,sp=50..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:3690013}}}] run summon armor_stand ^ ^0.5 ^4 {Tags:["sw_curse_select"],Invisible:0,Invulnerable:1,Marker:1}
execute at @e[tag=sw_curse_select] run scoreboard players set @e[distance=0,scores={greed-counter=80..}] greed-counter 0
execute at @e[tag=sw-selected] run kill @e[tag=sw_curse_select]
execute at @e[tag=sw_curse_select] run tag @e[limit=1,distance=0..3,tag=!greed,type=!#sword_hero:exclude] add sw-selected
execute at @e[tag=sw-selected,scores={greed-counter=1}] run tellraw @a[distance=0..20,advancements={sword_hero:swords/greed=true}] {"text":"GUILLOTINE","bold":true,"color":"#f7ea3d","clickEvent":{"action":"run_command","value":"/trigger guillo add 1"}}
execute at @e[tag=sw-selected,scores={greed-counter=1}] run tellraw @a[distance=0..20,advancements={sword_hero:swords/greed=true}] {"text":"GOLD REBELLION","bold":true,"color":"#d6b248","clickEvent":{"action":"run_command","value":"/trigger gold add 1"}}
execute at @e[tag=sw_curse_select] run effect give @e[limit=1,distance=0..3,tag=!greed] glowing 7 4 true
execute at @a[scores={guillo=1..},advancements={sword_hero:swords/greed=true}] run tag @e[tag=sw-selected,tag=!sword] add guillolock
execute at @e[tag=guillolock] run scoreboard players set @a[advancements={sword_hero:swords/greed=true},scores={guillo=1..,sp=50..}] sp 0
tellraw @a[advancements={sword_hero:swords/greed=true},scores={guillo=1..,sp=..49}] {"text":"You Do Not Have Enough SP!","bold":true,"color":"#F53D3D","hoverEvent":{"action":"show_text","contents":{"text":"SP is below 50. Wait for it to recharge!","color":"#E0FFE7"}}}
#tellraw @a[advancements={sword_hero:swords/wrath=true},scores={blood=1..,sp=..49}] {"text":"You Do Not Have Enough SP!","bold":true,"color":"#F53D3D","hoverEvent":{"action":"show_text","contents":{"text":"SP is below 50. Wait for it to recharge!","color":"#E0FFE7"}}}
execute at @e[tag=guillolock,scores={swordcounter=0..3}] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["guilloobject"],ArmorItems:[{},{},{},{id:"minecraft:brick",Count:1b,tag:{CustomModelData:369012}}]}
execute at @e[tag=guillolock,scores={swordcounter=0..3}] run summon lightning_bolt ~ ~30 ~
execute at @e[tag=guilloobject] run tp @e[tag=guillolock,distance=0..20] ~ ~ ~
execute at @e[tag=guillolock,scores={swordcounter=5}] run summon armor_stand ~ ~2 ~ {NoGravity:0b;Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["guilloblade"],ArmorItems:[{},{},{},{id:"minecraft:brick",Count:1b,tag:{CustomModelData:369013}}]}
#execute at @e[tag=guillolock,scores={swordcounter=10}] run item replace entity @e[type=minecraft:armor_stand,tag=guilloobject,distance=0..5] armor.head with brick{CustomModelData:369003}
execute at @e[tag=guillolock,scores={swordcounter=4..30}] run summon minecraft:firework_rocket ~ ~ ~ {LifeTime:1,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Colors:[I;16711680,7012352],FadeColors:[I;2228038]}]}}}}
execute at @e[tag=guillolock,scores={swordcounter=2}] run tellraw @a[scores={guillo=1..},tag=sword,advancements={sword_hero:swords/greed=true},nbt={SelectedItem:{id:"minecraft:sword",Count:1b,tag:{CustomModelData:3690013}}}] {"text":"With nary time to scream, let their head be seperated from body!","color":"gold","bold":true,"italic":true}
execute at @e[tag=guillolock,scores={swordcounter=22}] run tellraw @a[scores={guillo=1..},tag=sword,advancements={sword_hero:swords/greed=true},nbt={SelectedItem:{id:"minecraft:sword",Count:1b,tag:{CustomModelData:3690013}}}] {"text":"Guillotine!","color":"gold","bold":true,"italic":true}
