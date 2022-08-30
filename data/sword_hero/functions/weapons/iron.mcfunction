execute as @a[tag=sword,scores={sword-iron=1..}] run clear @s carrot_on_a_stick{swh:1b}
execute as @a[tag=sword,scores={sword-iron=1..}] run clear @s wooden_sword{swh:1b}
execute as @a[tag=sword,scores={sword-iron=1..}] run clear @s stone_sword{swh:1b}
execute as @a[tag=sword,scores={sword-iron=1..}] run clear @s iron_sword{swh:1b}
execute as @a[tag=sword,scores={sword-iron=1..}] run clear @s golden_sword{swh:1b}
execute as @a[tag=sword,scores={sword-iron=1..}] run clear @s diamond_sword{swh:1b}
execute as @a[tag=sword,scores={sword-iron=1..}] run clear @s netherite_sword{swh:1b}
execute as @a[tag=sword,scores={sword-iron=1..}] run tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
scoreboard players add @a[tag=sword,scores={sword-iron=1..}] ironprof 0
scoreboard players add @a[tag=sword,scores={sword-iron=1..}] iron_smelt 0
execute as @a[tag=sword,scores={sword-iron=1..,ironprof=0..9}] run give @s iron_sword{display:{Name:'{"text":"Iron Sword 0/6 C","color":"gold","bold":true}',Lore:['{"text":"-Abilities Locked-"}','{"text":"equip bonus:"}','{"text":"magic destruction 1"}']},Unbreakable:1b,CustomModelData:3690018,swh:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:7,Operation:0,UUID:[I;-1389426538,-1024310824,-1599871677,1185799334],Slot:"mainhand"},{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:2,Operation:0,UUID:[I;-542395520,-240303756,-1120245637,776033934],Slot:"mainhand"}]} 1
execute as @a[tag=sword,scores={sword-iron=1..,ironprof=10..}] run function sword_hero:level_up/basic
execute as @a[tag=sword,scores={sword-iron=1..,iron_smelt=1..}] run item modify entity @s weapon.mainhand sword_hero:iron_smelt
execute as @a[tag=sword,scores={sword-iron=1..,iron_smelt=1..}] run item modify entity @s weapon.mainhand sword_hero:iron_smelt_name
