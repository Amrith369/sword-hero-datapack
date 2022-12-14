#SP METER
scoreboard players add @a[tag=sword] sp 0
scoreboard players add @a[tag=sword,scores={sp=..295,swordcounter=600}] sp 5
scoreboard players add @a[tag=sword,scores={sp=..295,swordcounter=1200}] sp 5
scoreboard players add @a[tag=sword,scores={sp=..295,swordcounter=1800}] sp 5
execute as @a[tag=sword] run title @s[tag=sword,x_rotation=45..90] actionbar [{"text":"SP: "},{"score":{"name":"@s","objective":"sp"},"bold":"true","color":"#40C6FF"},{"text":"/300","bold":"true","color":"#4D82FF"}]
#FAFIK RANDOMNESS
function fafik77:rng/tick
#ENERGY STUFF
execute as @a[tag=sword,scores={check_energy=1..}] run tellraw @s ["",{"text":"Weapon Energy Points: ","bold":true,"color":"#40C6FF"},{"score":{"name":"@s","objective":"sword_ep"},"bold":true,"color":"gold"},{"text":" available.","color":"gold"}]
scoreboard players set @a[tag=sword,scores={check_energy=1..}] check_energy 0
execute at @a[tag=sword,scores={give_energy=1..}] run particle nautilus ~ ~1 ~ 0.3 0 0.3 0.03 0 normal
#INITIATE
execute as @a[tag=sword] run give @s[tag=!starto] minecraft:carrot_on_a_stick{display:{Name:'{"text":"Legendary Sword","color":"gold","bold":true}',Lore:['{"text":"-Abilities Unlocked-","italic":true}','{"text":"Equip Bonus: attack 3 agility 3"}']},HideFlags:1,Unbreakable:1b,swh:1b,CustomModelData:3690011,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:3,Operation:0,UUID:[I;-187608077,1838040435,-1418259760,1506327830],Slot:"mainhand"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.02,Operation:0,UUID:[I;-1606460784,-656519506,-1315808417,104879726],Slot:"mainhand"}]} 1
execute as @a[tag=sword] run tellraw @s[tag=!starto] ["",{"text":"You have become the "},{"text":"Sword Hero","color":"#40C6FF"}]
tag @a[tag=sword] add starto
tag @a[tag=sword] add hero
tag @a[tag=sword] add sword.party
#SWORD COUNTER
scoreboard players add @a[tag=sword] swordcounter 1
scoreboard players set @a[tag=sword,scores={swordcounter=1800..}] swordcounter 0
#SWORD UNLOCK
tellraw @a[tag=sword,scores={absorb=1..},advancements={sword_hero:swords/rope=false},nbt={Inventory:[{id:"minecraft:string"}]}] {"text":"Rope Sword: conditions met","italic":true,"color":"gold"}
advancement grant @a[tag=sword,scores={absorb=1..},nbt={Inventory:[{id:"minecraft:string"}]}] only sword_hero:swords/rope
tellraw @a[tag=sword,scores={absorb=1..},advancements={sword_hero:swords/portal=false},nbt={Inventory:[{id:"minecraft:redstone"}]}] {"text":"Portal Sword: conditions met","italic":true,"color":"gold"}
advancement grant @a[tag=sword,scores={absorb=1..},nbt={Inventory:[{id:"minecraft:redstone"}]}] only sword_hero:swords/portal
tellraw @a[tag=sword,advancements={sword_hero:swords/greed=false},scores={sword-greed=1..}] {"text":"Sword of Greed: conditions met","italic":true,"color":"dark_red"}
advancement grant @a[tag=sword,scores={sword-greed=1..}] only sword_hero:swords/greed
#WEAPON-COPY
execute as @a[tag=sword,scores={weapon_copy=1}] run function sword_hero:wc/identify
#SWORD CHANGE
execute at @a[tag=sword,scores={select=1..}] run tp @e[distance=0..5,type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b}}] ~ ~ ~
execute at @a[tag=sword,scores={select=1..}] run data merge entity @e[type=item,limit=1,distance=0..6,nbt={Item:{Count:1b,tag:{swh:1b}}}] {PickupDelay:1,Item:{Count:1b,tag:{swh:1b}}}
execute as @e[type=item,limit=1,nbt={Item:{tag:{swh:1b}}}] run tellraw @a[tag=sword,scores={select=1..}] ["",{"text":"===========","bold":true,"color":"white"},{"text":"\n"},{"text":"Change Sword:","italic":true},{"text":"\n"},{"text":"===========","bold":true,"color":"white"},{"text":"\n"},{"text":"Starter Sword","bold":true,"color":"white","clickEvent":{"action":"run_command","value":"/trigger basic_sw add 1"}}]
#CHANGE SWORD
#-SMALL SWORD
execute as @a[tag=sword,scores={basic_sw=1..}] run clear @s carrot_on_a_stick{swh:1b}
execute as @a[tag=sword,scores={basic_sw=1..}] run clear @s wooden_sword{swh:1b}
execute as @a[tag=sword,scores={basic_sw=1..}] run clear @s stone_sword{swh:1b}
execute as @a[tag=sword,scores={basic_sw=1..}] run clear @s iron_sword{swh:1b}
execute as @a[tag=sword,scores={basic_sw=1..}] run clear @s golden_sword{swh:1b}
execute as @a[tag=sword,scores={basic_sw=1..}] run clear @s diamond_sword{swh:1b}
execute as @a[tag=sword,scores={basic_sw=1..}] run clear @s netherite_sword{swh:1b}
execute as @a[tag=sword,scores={basic_sw=1..}] run tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
execute as @a[tag=sword,scores={basic_sw=1..}] run give @s minecraft:carrot_on_a_stick{display:{Name:'{"text":"Legendary Sword","color":"gold","bold":true}',Lore:['{"text":"-Abilities Unlocked-","italic":true}','{"text":"Equip Bonus: attack 3 agility 3"}']},HideFlags:1,Unbreakable:1b,swh:1b,CustomModelData:3690011,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:3,Operation:0,UUID:[I;-187608077,1838040435,-1418259760,1506327830],Slot:"mainhand"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.02,Operation:0,UUID:[I;-1606460784,-656519506,-1315808417,104879726],Slot:"mainhand"}]} 1
#-ROPE SWORD
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:3690012}}}] run function sword_hero:level_up/rope_mastery
execute as @e[type=item,limit=1,nbt={Item:{tag:{swh:1b}}}] run tellraw @a[tag=sword,scores={select=1..},advancements={sword_hero:swords/rope=true}] {"text":"Rope Sword","bold":true,"color":"#9bcff7","clickEvent":{"action":"run_command","value":"/trigger sword-rope add 1"}}
execute as @a[tag=sword,scores={sword-rope=1..}] run clear @s carrot_on_a_stick{swh:1b}
execute as @a[tag=sword,scores={sword-rope=1..}] run clear @s wooden_sword{swh:1b}
execute as @a[tag=sword,scores={sword-rope=1..}] run clear @s stone_sword{swh:1b}
execute as @a[tag=sword,scores={sword-rope=1..}] run clear @s iron_sword{swh:1b}
execute as @a[tag=sword,scores={sword-rope=1..}] run clear @s golden_sword{swh:1b}
execute as @a[tag=sword,scores={sword-rope=1..}] run clear @s diamond_sword{swh:1b}
execute as @a[tag=sword,scores={sword-rope=1..}] run clear @s netherite_sword{swh:1b}
execute as @a[tag=sword,scores={sword-rope=1..}] run tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
scoreboard players add @a[tag=sword,scores={sword-rope=1..}] ropeprof 0
scoreboard players add @a[tag=sword,scores={sword-rope=1..}] rope_smelt 0
execute as @a[tag=sword,scores={sword-rope=1..,ropeprof=0..9,rope_smelt=0}] run give @s minecraft:carrot_on_a_stick{display:{Name:'{"text":"Rope Sword 0/10 C","color":"gold","bold":true}',Lore:['{"text":"-Abilities Locked-"}','{"text":"equip bonus:"}','{"text":"skill: Air Strike Bash"}','{"text":"special equip effect: rope"}']},swh:1b,CustomModelData:3690012,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:4,Operation:0,UUID:[I;-1112127720,-2042802221,-1781638823,-1434932982],Slot:"mainhand"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.01,Operation:0,UUID:[I;-192861355,-501331428,-1515350886,-1769012557],Slot:"mainhand"}]} 1
execute as @a[tag=sword,scores={sword-rope=1..,ropeprof=10..,rope_smelt=0}] run function sword_hero:level_up/basic
execute as @a[tag=sword,scores={sword-rope=1..,rope_smelt=1..}] run function sword_hero:level_up/rope_smelt
#-PORTAL SWORD
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:3690014}}}] run function sword_hero:level_up/portal_mastery
execute as @e[type=item,limit=1,nbt={Item:{tag:{swh:1b}}}] run tellraw @a[tag=sword,scores={select=1..},advancements={sword_hero:swords/portal=true}] {"text":"Portal Sword","bold":true,"color":"#2B41FF","clickEvent":{"action":"run_command","value":"/trigger sword-portal add 1"}}
execute as @a[tag=sword,scores={sword-portal=1..}] run clear @s carrot_on_a_stick{swh:1b}
execute as @a[tag=sword,scores={sword-portal=1..}] run clear @s wooden_sword{swh:1b}
execute as @a[tag=sword,scores={sword-portal=1..}] run clear @s stone_sword{swh:1b}
execute as @a[tag=sword,scores={sword-portal=1..}] run clear @s iron_sword{swh:1b}
execute as @a[tag=sword,scores={sword-portal=1..}] run clear @s golden_sword{swh:1b}
execute as @a[tag=sword,scores={sword-portal=1..}] run clear @s diamond_sword{swh:1b}
execute as @a[tag=sword,scores={sword-portal=1..}] run clear @s netherite_sword{swh:1b}
execute as @a[tag=sword,scores={sword-portal=1..}] run tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
scoreboard players add @a[tag=sword,scores={sword-portal=1..}] portalprof 0
scoreboard players add @a[tag=sword,scores={sword-portal=1..}] portal_smelt 0
execute as @a[tag=sword,scores={sword-portal=1..,portalprof=0..9,portal_smelt=0}] run give @s carrot_on_a_stick{display:{Name:'{"text":"Dragon Hourglass Sand Sword Sword 0/20 C","color":"gold","bold":true}',Lore:['{"text":"-Abilities Locked-"}','{"text":"equip bonus:"}','{"text":"skill: Transport Sword"}']},swh:1b,CustomModelData:3690014,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:5,Operation:0,UUID:[I;924220658,-1084800462,-1169889065,1032890591],Slot:"mainhand"},{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:4,Operation:0,UUID:[I;1204118509,972770776,-2048139146,-1485039515],Slot:"mainhand"}]} 1
execute as @a[tag=sword,scores={sword-portal=1..,portalprof=10..,portal_smelt=0}] run function sword_hero:level_up/basic
execute as @a[tag=sword,scores={sword-portal=1..,portal_smelt=1..}] run function sword_hero:level_up/portal_smelt
#-SWORD OF GREED
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:3690013}}}] run function sword_hero:level_up/greed_mastery
execute as @e[type=item,limit=1,nbt={Item:{tag:{swh:1b}}}] run tellraw @a[tag=sword,scores={select=1..},advancements={sword_hero:swords/greed=true}] {"text":"Sword of Greed","bold":true,"color":"#BFAD14","clickEvent":{"action":"run_command","value":"/trigger sword-greed add 1"}}
execute as @a[scores={sword-greed=1..}] run function sword_hero:weapons/greed
#-STAR SWORD
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:3690015}}}] run function sword_hero:level_up/star_mastery
execute as @e[type=item,limit=1,nbt={Item:{tag:{swh:1b}}}] run tellraw @a[tag=sword,scores={select=1..},advancements={sword_hero:swords/star=true}] {"text":"Siderite Sword","bold":true,"color":"#5991FF","clickEvent":{"action":"run_command","value":"/trigger sword-star add 1"}}
execute as @a[scores={sword-star=1..}] run function sword_hero:weapons/star
#-WOODEN SWORD
execute as @a[nbt={SelectedItem:{id:"minecraft:wooden_sword",Count:1b,tag:{swh:1b}}}] run function sword_hero:level_up/wooden_mastery
#execute as @e[type=item,nbt={Item:{tag:{swh:1b}}}] run function sword_hero:weapons/wooden
execute as @e[type=item,limit=1,nbt={Item:{tag:{swh:1b}}}] run tellraw @a[tag=sword,scores={select=1..},advancements={sword_hero:swords/wooden=true}] {"text":"Wooden Sword","bold":true,"color":"#66928d","clickEvent":{"action":"run_command","value":"/trigger sword-wooden add 1"}}
execute as @a[scores={sword-wooden=1..}] run function sword_hero:weapons/wooden
#-STONE SWORD
execute as @a[nbt={SelectedItem:{id:"minecraft:stone_sword",Count:1b,tag:{swh:1b}}}] run function sword_hero:level_up/stone_mastery
execute as @e[type=item,limit=1,nbt={Item:{tag:{swh:1b}}}] run tellraw @a[tag=sword,scores={select=1..},advancements={sword_hero:swords/stone=true}] {"text":"Stone Sword","bold":true,"color":"#8fdcd5","clickEvent":{"action":"run_command","value":"/trigger sword-stone add 1"}}
execute as @a[scores={sword-stone=1..}] run function sword_hero:weapons/stone
#-IRON SWORD
execute as @a[nbt={SelectedItem:{id:"minecraft:iron_sword",Count:1b,tag:{swh:1b}}}] run function sword_hero:level_up/iron_mastery
execute as @e[type=item,limit=1,nbt={Item:{tag:{swh:1b}}}] run tellraw @a[tag=sword,scores={select=1..},advancements={sword_hero:swords/iron=true}] {"text":"Iron Sword","bold":true,"color":"#77a7ef","clickEvent":{"action":"run_command","value":"/trigger sword-iron add 1"}}
execute as @a[scores={sword-iron=1..}] run function sword_hero:weapons/iron
#-GOLD SWORD
execute as @a[nbt={SelectedItem:{id:"minecraft:golden_sword",Count:1b,tag:{swh:1b}}}] run function sword_hero:level_up/gold_mastery
execute as @e[type=item,limit=1,nbt={Item:{tag:{swh:1b}}}] run tellraw @a[tag=sword,scores={select=1..},advancements={sword_hero:swords/gold=true}] {"text":"Gold Sword","bold":true,"color":"#43c394","clickEvent":{"action":"run_command","value":"/trigger sword-gold add 1"}}
execute as @a[scores={sword-gold=1..}] run function sword_hero:weapons/gold
#-DIAMOND SWORD
execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_sword",Count:1b,tag:{swh:1b}}}] run function sword_hero:level_up/diamond_mastery
execute as @e[type=item,limit=1,nbt={Item:{tag:{swh:1b}}}] run tellraw @a[tag=sword,scores={select=1..},advancements={sword_hero:swords/diamond=true}] {"text":"Diamond Sword","bold":true,"color":"#26ddd7","clickEvent":{"action":"run_command","value":"/trigger sword-diamond add 1"}}
execute as @a[scores={sword-diamond=1..}] run function sword_hero:weapons/diamond
#-NETHERITE SWORD
execute as @a[nbt={SelectedItem:{id:"minecraft:netherite_sword",Count:1b,tag:{swh:1b}}}] run function sword_hero:level_up/netherite_mastery
execute as @e[type=item,limit=1,nbt={Item:{tag:{swh:1b}}}] run tellraw @a[tag=sword,scores={select=1..},advancements={sword_hero:swords/netherite=true}] {"text":"Netherite Sword","bold":true,"color":"#554c8a","clickEvent":{"action":"run_command","value":"/trigger sword-netherite add 1"}}
execute as @a[scores={sword-netherite=1..}] run function sword_hero:weapons/netherite
#SKILLS
#-AIR STRIKE BASH
execute as @a[tag=sword,scores={right_click=1..,sp=20..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:3690012}}}] run function sword_hero:skills/air_strike_bash
#-TRANSPORT SWORD
execute as @a[tag=sword,scores={sp=30..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:3690014}}}] run function sword_hero:skills/portal
#-GREED
#execute as @a[tag=sword,scores={sp=10..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:3690013}}}] run function sword_hero:skills/greed
#kill @e[tag=sw_curse_select,scores={greed-counter=1..}]
#scoreboard players add @e[tag=sw_curse_select] greed-counter 1
#scoreboard players add @e[tag=sw-selected] greed-counter 1
#tag @e[tag=selected,scores={greed-counter=80..}] remove selected
#scoreboard players add @e[tag=guillolock] swordcounter 1
#scoreboard players add @e[tag=maidentimer] skillcounter 1
#-SHOOTING STAR
execute as @a[tag=sword,scores={right_click=1..,sp=20..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:3690015}}}] run function sword_hero:skills/shooting_star
#-WOODEN
execute as @a[tag=sword,nbt={SelectedItem:{id:"minecraft:wooden_sword",Count:1b,tag:{swh:1b,CustomModelData:3690016}}}] run function sword_hero:skills/training
#-NETHERITE
execute as @a[tag=sword,nbt={SelectedItem:{id:"minecraft:netherite_sword",Count:1b,tag:{swh:1b,CustomModelData:3690021}}}] run function sword_hero:skills/heat
#POTIONS
execute as @a[tag=sword,nbt={SelectedItem:{id:"minecraft:blaze_powder"}},scores={craft_sp_potion=1..}] run function sword_hero:crafting/soulsoothing
scoreboard players add @a[tag=sword,scores={sp=..300},nbt={AbsorptionAmount:20f}] sp 50
clear @a[tag=sword,nbt={AbsorptionAmount:20f}] glass_bottle 1
#SMELTING
execute as @a[scores={smelt=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:3690012}}}] run function sword_hero:level_up/smelting_rope
execute as @a[scores={smelt=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:3690014}}}] run function sword_hero:level_up/smelting_portal
execute as @a[scores={smelt=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:3690015}}}] run function sword_hero:level_up/smelting-star/smelt-id
execute as @a[scores={smelt=1..},nbt={SelectedItem:{id:"minecraft:wooden_sword",Count:1b,tag:{swh:1b,CustomModelData:3690016}}}] run function sword_hero:level_up/smelting-wooden/smelt-id
execute as @a[scores={smelt=1..},nbt={SelectedItem:{id:"minecraft:stone_sword",Count:1b,tag:{swh:1b,CustomModelData:3690017}}}] run function sword_hero:level_up/smelting-stone/smelt-id
execute as @a[scores={smelt=1..},nbt={SelectedItem:{id:"minecraft:iron_sword",Count:1b,tag:{swh:1b,CustomModelData:3690018}}}] run function sword_hero:level_up/smelting-iron/smelt-id
execute as @a[scores={smelt=1..},nbt={SelectedItem:{id:"minecraft:golden_sword",Count:1b,tag:{swh:1b,CustomModelData:3690019}}}] run function sword_hero:level_up/smelting-gold/smelt-id
execute as @a[scores={smelt=1..},nbt={SelectedItem:{id:"minecraft:diamond_sword",Count:1b,tag:{swh:1b,CustomModelData:3690020}}}] run function sword_hero:level_up/smelting-diamond/smelt-id
execute as @a[scores={smelt=1..},nbt={SelectedItem:{id:"minecraft:netherite_sword",Count:1b,tag:{swh:1b,CustomModelData:3690021}}}] run function sword_hero:level_up/smelting-netherite/smelt-id
#STATUS
execute as @a[tag=sword,scores={status_all=1..}] run function sword_hero:level_up/status_all
execute as @a[tag=sword,scores={take_energy=1..}] run function sword_hero:level_up/energy_reset
execute as @a[tag=sword,scores={give_energy=1..}] run function sword_hero:level_up/energy_reset
#PARTY SYSTEM
execute as @a[tag=shield,scores={party=1..}] run execute at @s run tag @e[distance=1..2] add sword.party
execute as @a[tag=shield,scores={party=1..}] run execute at @e[tag=sword.party] run tellraw @a[tag=shield,scores={party=1..}] ["",{"text":"[Notice] ","bold":true,"color":"green"},{"selector":"@e[tag=sword.party,limit=1,sort=nearest]","bold":true,"color":"white"},{"text":" Has Joined Your Party!","bold":true,"color":"green"}]
execute as @a[tag=shield,scores={disband=1..}] run execute at @s run tag @e[tag=sword.party] remove sword.party
scoreboard players set @a[tag=shield,scores={party=1..}] party 0
scoreboard players set @a[tag=shield,scores={disband=1..}] disband 0
#ENABLE SCORES
scoreboard players enable @a[tag=sword] absorb
scoreboard players enable @a[tag=sword] take_energy
scoreboard players enable @a[tag=sword] give_energy
scoreboard players enable @a[tag=sword] check_energy
scoreboard players enable @a[tag=sword] weapon_copy
scoreboard players enable @a[tag=sword] craft_sp_potion
scoreboard players enable @a[tag=sword] basic_sw
scoreboard players enable @a[tag=sword] status_all
scoreboard players enable @a[tag=sword] smelt
scoreboard players enable @a[tag=sword,advancements={sword_hero:swords/rope=true}] sword-rope
scoreboard players enable @a[tag=sword,advancements={sword_hero:swords/portal=true}] sword-portal
scoreboard players enable @a[tag=sword] sword-greed
scoreboard players enable @a[tag=sword,advancements={sword_hero:swords/star=true}] sword-star
scoreboard players enable @a[tag=sword,advancements={sword_hero:swords/wooden=true}] sword-wooden
scoreboard players enable @a[tag=sword,advancements={sword_hero:swords/stone=true}] sword-stone
scoreboard players enable @a[tag=sword,advancements={sword_hero:swords/iron=true}] sword-iron
scoreboard players enable @a[tag=sword,advancements={sword_hero:swords/gold=true}] sword-gold
scoreboard players enable @a[tag=sword,advancements={sword_hero:swords/diamond=true}] sword-diamond
scoreboard players enable @a[tag=sword,advancements={sword_hero:swords/netherite=true}] sword-netherite
scoreboard players enable @a[tag=sword,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:3690013}}}] guillo
scoreboard players enable @a[tag=sword] status
scoreboard players add @a[tag=sword] ropeprof 0
scoreboard players add @a[tag=sword] rope_smelt 0
scoreboard players add @e[tag=sw_curse_select] greed-counter 1
scoreboard players add @e[tag=sw-selected] greed-counter 1
kill @e[tag=sw_curse_select,scores={greed-counter=1..}]
tag @e[tag=sw-selected,scores={greed-counter=80..}] remove sw-selected
#RESET SCORES
scoreboard players set @a[tag=sword,scores={sword-rope=1..},limit=1] sword-rope 0
scoreboard players set @a[tag=sword,scores={sword-portal=1..},limit=1] sword-portal 0
scoreboard players set @a[tag=sword,scores={sword-star=1..},limit=1] sword-star 0
scoreboard players set @a[tag=sword,scores={sword-greed=1..},limit=1] sword-greed 0
scoreboard players set @a[tag=sword,scores={sword-wooden=1..},limit=1] sword-wooden 0
scoreboard players set @a[tag=sword,scores={sword-stone=1..},limit=1] sword-stone 0
scoreboard players set @a[tag=sword,scores={sword-iron=1..},limit=1] sword-iron 0
scoreboard players set @a[tag=sword,scores={sword-gold=1..},limit=1] sword-gold 0
scoreboard players set @a[tag=sword,scores={sword-diamond=1..},limit=1] sword-diamond 0
scoreboard players set @a[tag=sword,scores={sword-netherite=1..},limit=1] sword-netherite 0
scoreboard players set @a[tag=sword,scores={basic_sw=1..}] basic_sw 0
scoreboard players set @a[tag=sword,scores={select=1..}] select 0
scoreboard players set @a[tag=sword,scores={status=1..}] status 0
scoreboard players set @a[tag=sword,scores={absorb=1..}] absorb 0
scoreboard players set @a[tag=sword,scores={weapon_copy=1..}] weapon_copy 0
scoreboard players set @a[tag=sword,scores={ass=1..}] ass 0
