execute as @a[tag=sword,scores={sword-stone=1..}] run clear @s carrot_on_a_stick{swh:1b}
execute as @a[tag=sword,scores={sword-stone=1..}] run clear @s wooden_sword{swh:1b}
execute as @a[tag=sword,scores={sword-stone=1..}] run clear @s stone_sword{swh:1b}
execute as @a[tag=sword,scores={sword-stone=1..}] run clear @s iron_sword{swh:1b}
execute as @a[tag=sword,scores={sword-stone=1..}] run clear @s golden_sword{swh:1b}
execute as @a[tag=sword,scores={sword-stone=1..}] run clear @s diamond_sword{swh:1b}
execute as @a[tag=sword,scores={sword-stone=1..}] run clear @s netherite_sword{swh:1b}
execute as @a[tag=sword,scores={sword-stone=1..}] run tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
scoreboard players add @a[tag=sword,scores={sword-stone=1..}] stoneprof 0
scoreboard players add @a[tag=sword,scores={sword-stone=1..}] stone_smelt 0
execute as @a[tag=sword,scores={sword-stone=1..,stoneprof=0..9}] run give @s stone_sword{display:{Name:'{"text":"Stone Sword 0/4 C","color":"gold","bold":true}',Lore:['{"text":"-Abilities Locked-"}','{"text":"equip bonus:"}','{"text":"defense 1"}']},Unbreakable:1b,CustomModelData:3690017,swh:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:6,Operation:0,UUID:[I;-1389426538,-1024310824,-1599871677,1185799334],Slot:"mainhand"},{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:1,Operation:0,UUID:[I;-542395520,-240303756,-1120245637,776033934],Slot:"mainhand"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:1,Operation:0,UUID:[I;-696853909,2134722092,-1218300900,531401355],Slot:"mainhand"}]} 1
execute as @a[tag=sword,scores={sword-stone=1..,stoneprof=10..}] run function sword_hero:level_up/basic
execute as @a[tag=sword,scores={sword-stone=1..,stone_smelt=1..}] run item modify entity @s weapon.mainhand sword_hero:stone_smelt
execute as @a[tag=sword,scores={sword-stone=1..,stone_smelt=1..}] run item modify entity @s weapon.mainhand sword_hero:stone_smelt_name
