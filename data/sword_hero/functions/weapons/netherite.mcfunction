execute as @a[tag=sword,scores={sword-netherite=1..}] run clear @s carrot_on_a_stick{swh:1b}
execute as @a[tag=sword,scores={sword-netherite=1..}] run clear @s wooden_sword{swh:1b}
execute as @a[tag=sword,scores={sword-netherite=1..}] run clear @s stone_sword{swh:1b}
execute as @a[tag=sword,scores={sword-netherite=1..}] run clear @s iron_sword{swh:1b}
execute as @a[tag=sword,scores={sword-netherite=1..}] run clear @s golden_sword{swh:1b}
execute as @a[tag=sword,scores={sword-netherite=1..}] run clear @s diamond_sword{swh:1b}
execute as @a[tag=sword,scores={sword-netherite=1..}] run clear @s netherite_sword{swh:1b}
execute as @a[tag=sword,scores={sword-netherite=1..}] run tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
scoreboard players add @a[tag=sword,scores={sword-netherite=1..}] netheriteprof 0
scoreboard players add @a[tag=sword,scores={sword-netherite=1..}] netherite_smelt 0
execute as @a[tag=sword,scores={sword-netherite=1..,netheriteprof=0..9}] run give @s netherite_sword{display:{Name:'{"text":"Netherite Sword 0/10 C","color":"gold","bold":true}',Lore:['{"text":"-Abilities Locked-"}','{"text":"equip bonus:"}','{"text":"heat resistance 1"}']},Unbreakable:1b,CustomModelData:3690021,swh:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:9,Operation:0,UUID:[I;-355879044,-1029485682,-1512009712,1790354407],Slot:"mainhand"},{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:3,Operation:0,UUID:[I;-1524600408,887112502,-1215541401,1050334887],Slot:"mainhand"}]} 1
execute as @a[tag=sword,scores={sword-netherite=1..,netheriteprof=10..}] run function sword_hero:level_up/basic
execute as @a[tag=sword,scores={sword-netherite=1..,netherite_smelt=1..}] run item modify entity @s weapon.mainhand sword_hero:netherite_smelt
execute as @a[tag=sword,scores={sword-netherite=1..,netherite_smelt=1..}] run item modify entity @s weapon.mainhand sword_hero:netherite_smelt_name
