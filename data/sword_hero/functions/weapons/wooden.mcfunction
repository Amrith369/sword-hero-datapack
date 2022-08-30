execute as @a[tag=sword,scores={sword-wooden=1..}] run clear @s carrot_on_a_stick{swh:1b}
execute as @a[tag=sword,scores={sword-wooden=1..}] run clear @s wooden_sword{swh:1b}
execute as @a[tag=sword,scores={sword-wooden=1..}] run clear @s stone_sword{swh:1b}
execute as @a[tag=sword,scores={sword-wooden=1..}] run clear @s iron_sword{swh:1b}
execute as @a[tag=sword,scores={sword-wooden=1..}] run clear @s golden_sword{swh:1b}
execute as @a[tag=sword,scores={sword-wooden=1..}] run clear @s diamond_sword{swh:1b}
execute as @a[tag=sword,scores={sword-wooden=1..}] run clear @s netherite_sword{swh:1b}
execute as @a[tag=sword,scores={sword-wooden=1..}] run tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
scoreboard players add @a[tag=sword,scores={sword-wooden=1..}] woodenprof 0
scoreboard players add @a[tag=sword,scores={sword-wooden=1..}] wooden_smelt 0
execute as @a[tag=sword,scores={sword-wooden=1..,woodenprof=0..9}] run give @s wooden_sword{display:{Name:'{"text":"Wooden Sword 0/2 C","color":"gold","bold":true}',Lore:['{"text":"-Abilities Locked-"}','{"text":"equip bonus:"}','{"text":"training 1"}']},CustomModelData:3690016,swh:1b,Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:4,Operation:0,UUID:[I;-326197703,-356957026,-2098765150,1659899704],Slot:"mainhand"},{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:2,Operation:0,UUID:[I;-891815971,-1368438823,-1187219797,-1348927482],Slot:"mainhand"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.01,Operation:0,UUID:[I;-1814408656,597577653,-1536618546,1045922590],Slot:"mainhand"}]} 1
execute as @a[tag=sword,scores={sword-wooden=1..,woodenprof=10..}] run function sword_hero:level_up/basic
execute as @a[tag=sword,scores={sword-wooden=1..,wooden_smelt=1..}] run item modify entity @s weapon.mainhand sword_hero:wooden_smelt
execute as @a[tag=sword,scores={sword-wooden=1..,wooden_smelt=1..}] run item modify entity @s weapon.mainhand sword_hero:wooden_smelt_name
