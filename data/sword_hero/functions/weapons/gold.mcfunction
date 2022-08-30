execute as @a[tag=sword,scores={sword-gold=1..}] run clear @s carrot_on_a_stick{swh:1b}
execute as @a[tag=sword,scores={sword-gold=1..}] run clear @s wooden_sword{swh:1b}
execute as @a[tag=sword,scores={sword-gold=1..}] run clear @s stone_sword{swh:1b}
execute as @a[tag=sword,scores={sword-gold=1..}] run clear @s iron_sword{swh:1b}
execute as @a[tag=sword,scores={sword-gold=1..}] run clear @s golden_sword{swh:1b}
execute as @a[tag=sword,scores={sword-gold=1..}] run clear @s diamond_sword{swh:1b}
execute as @a[tag=sword,scores={sword-gold=1..}] run clear @s netherite_sword{swh:1b}
execute as @a[tag=sword,scores={sword-gold=1..}] run tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
scoreboard players add @a[tag=sword,scores={sword-gold=1..}] goldprof 0
scoreboard players add @a[tag=sword,scores={sword-gold=1..}] gold_smelt 0
execute as @a[tag=sword,scores={sword-gold=1..,goldprof=0..9}] run give @s golden_sword{display:{Name:'{"text":"Gold Sword 0/6 C","color":"gold","bold":true}',Lore:['{"text":"-Abilities Locked-"}','{"text":"equip bonus:"}','{"text":"impact resistance 1"}']},Unbreakable:1b,CustomModelData:3690019,swh:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:7,Operation:0,UUID:[I;-1217320802,-527020286,-1703098721,-1107391386],Slot:"mainhand"},{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:2,Operation:0,UUID:[I;-1782472086,-97435029,-1264437812,-1510696631],Slot:"mainhand"},{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:.1,Operation:0,UUID:[I;952765262,1875263552,-1843329073,1924791734],Slot:"mainhand"}]} 1
execute as @a[tag=sword,scores={sword-gold=1..,goldprof=10..}] run function sword_hero:level_up/basic
execute as @a[tag=sword,scores={sword-gold=1..,gold_smelt=1..}] run item modify entity @s weapon.mainhand sword_hero:gold_smelt
execute as @a[tag=sword,scores={sword-gold=1..,gold_smelt=1..}] run item modify entity @s weapon.mainhand sword_hero:gold_smelt_name
