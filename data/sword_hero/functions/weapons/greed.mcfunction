execute as @a[tag=sword,scores={sword-greed=1..}] run clear @s carrot_on_a_stick{swh:1b}
execute as @a[tag=sword,scores={sword-greed=1..}] run clear @s wooden_sword{swh:1b}
execute as @a[tag=sword,scores={sword-greed=1..}] run clear @s stone_sword{swh:1b}
execute as @a[tag=sword,scores={sword-greed=1..}] run clear @s iron_sword{swh:1b}
execute as @a[tag=sword,scores={sword-greed=1..}] run clear @s golden_sword{swh:1b}
execute as @a[tag=sword,scores={sword-greed=1..}] run clear @s diamond_sword{swh:1b}
execute as @a[tag=sword,scores={sword-greed=1..}] run clear @s netherite_sword{swh:1b}
execute as @a[tag=sword,scores={sword-greed=1..}] run tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
scoreboard players add @a[tag=sword,scores={sword-greed=1..}] greedprof 0
scoreboard players add @a[tag=sword,scores={sword-greed=1..}] greed_smelt 0
execute as @a[tag=sword,scores={sword-greed=1..,greedprof=0..9}] run give @s minecraft:carrot_on_a_stick{display:{Name:'{"text":"Sword of Greed III 0/50","color":"gold","bold":true}',Lore:['{"text":"-Abilities Locked-"}','{"text":"equip bonus: skill: \\"Assassinating Sword,\\" "}','{"text":"\\"Maneater,\\"\\"Guillotine\\""}','{"text":"and \\"Gold Rebellion\\""}','{"text":"special equip effect: "}','{"text":"Automatic self repair (high)"}']},HideFlags:1,Unbreakable:1b,swh:1b,CustomModelData:3690013,Enchantments:[{id:"minecraft:thorns",lvl:1s},{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:knockback",lvl:1s},{id:"minecraft:looting",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:6,Operation:0,UUID:[I;150718361,-1012842181,-1764496365,2145011958],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:8,Operation:0,UUID:[I;634727900,-1076149122,-1531152071,-639730779],Slot:"mainhand"}]} 1
execute as @a[tag=sword,scores={sword-greed=1..,greedprof=10..}] run function sword_hero:level_up/basic
execute as @a[tag=sword,scores={sword-greed=1..,greed_smelt=1..}] run item modify entity @s weapon.mainhand sword_hero:greedsmelt/greed_smelt
execute as @a[tag=sword,scores={sword-greed=1..,greed_smelt=1..}] run item modify entity @s weapon.mainhand sword_hero:greedsmelt/greed_smelt_name
