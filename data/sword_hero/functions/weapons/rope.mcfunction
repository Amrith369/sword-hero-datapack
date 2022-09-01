execute as @a[tag=sword,scores={sword-star=1..}] run clear @s carrot_on_a_stick{swh:1b}
execute as @a[tag=sword,scores={sword-star=1..}] run clear @s wooden_sword{swh:1b}
execute as @a[tag=sword,scores={sword-star=1..}] run clear @s stone_sword{swh:1b}
execute as @a[tag=sword,scores={sword-star=1..}] run clear @s iron_sword{swh:1b}
execute as @a[tag=sword,scores={sword-star=1..}] run clear @s golden_sword{swh:1b}
execute as @a[tag=sword,scores={sword-star=1..}] run clear @s diamond_sword{swh:1b}
execute as @a[tag=sword,scores={sword-star=1..}] run clear @s netherite_sword{swh:1b}
execute as @a[tag=sword,scores={sword-star=1..}] run tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
scoreboard players add @a[tag=sword,scores={sword-star=1..}] diamondprof 0
scoreboard players add @a[tag=sword,scores={sword-star=1..}] star_smelt 0
execute as @a[tag=sword,scores={sword-star=1..,diamondprof=0..9}] run give @s carrot_on_a_stick{display:{Name:'{"text":"Siderite Sword 0/20 C","color":"gold","bold":true}',Lore:['{"text":"-Abilities Locked-"}','{"text":"equip bonus:"}','{"text":"skill: Shooting Star Sword"}']},swh:1b,CustomModelData:3690015,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:6,Operation:0,UUID:[I;-455555115,1679641992,-1761619034,668937757],Slot:"mainhand"},{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:2,Operation:0,UUID:[I;-210198264,-1206238600,-1180093127,-855528502],Slot:"mainhand"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.02,Operation:0,UUID:[I;-173912168,-26130579,-1582449710,-976207972],Slot:"mainhand"}]} 1
execute as @a[tag=sword,scores={sword-star=1..,diamondprof=10..}] run function sword_hero:level_up/basic
execute as @a[tag=sword,scores={sword-star=1..,star_smelt=1..}] run item modify entity @s weapon.mainhand sword_hero:starsmelt/star_smelt
execute as @a[tag=sword,scores={sword-star=1..,star_smelt=1..}] run item modify entity @s weapon.mainhand sword_hero:starsmelt/star_smelt_name
