execute as @a[tag=sword,scores={sword-diamond=1..}] run clear @s carrot_on_a_stick{swh:1b}
execute as @a[tag=sword,scores={sword-diamond=1..}] run clear @s wooden_sword{swh:1b}
execute as @a[tag=sword,scores={sword-diamond=1..}] run clear @s stone_sword{swh:1b}
execute as @a[tag=sword,scores={sword-diamond=1..}] run clear @s iron_sword{swh:1b}
execute as @a[tag=sword,scores={sword-diamond=1..}] run clear @s golden_sword{swh:1b}
execute as @a[tag=sword,scores={sword-diamond=1..}] run clear @s diamond_sword{swh:1b}
execute as @a[tag=sword,scores={sword-diamond=1..}] run clear @s netherite_sword{swh:1b}
execute as @a[tag=sword,scores={sword-diamond=1..}] run tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
scoreboard players add @a[tag=sword,scores={sword-diamond=1..}] diamondprof 0
scoreboard players add @a[tag=sword,scores={sword-diamond=1..}] diamond_smelt 0
execute as @a[tag=sword,scores={sword-diamond=1..,diamondprof=0..9}] run give @s diamond_sword{display:{Name:'{"text":"Diamond Sword 0/8 C","color":"gold","bold":true}',Lore:['{"text":"-Abilities Locked-"}','{"text":"equip bonus:"}','{"text":"defense 3"}']},Unbreakable:1b,CustomModelData:3690020,swh:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:8,Operation:0,UUID:[I;1023055297,-914865687,-1568488178,1564244149],Slot:"mainhand"},{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:3,Operation:0,UUID:[I;388835181,457919386,-2079901922,-2144842911],Slot:"mainhand"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:3,Operation:0,UUID:[I;441106167,1089946612,-1322312947,-1522910897],Slot:"mainhand"}]} 1
execute as @a[tag=sword,scores={sword-diamond=1..,diamondprof=10..}] run function sword_hero:level_up/basic
execute as @a[tag=sword,scores={sword-diamond=1..,diamond_smelt=1..}] run item modify entity @s weapon.mainhand sword_hero:diamond_smelt
execute as @a[tag=sword,scores={sword-diamond=1..,diamond_smelt=1..}] run item modify entity @s weapon.mainhand sword_hero:diamond_smelt_name
