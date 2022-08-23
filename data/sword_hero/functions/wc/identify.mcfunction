#execute as @s[]
tellraw @a[tag=sword,scores={weapon_copy=1..},advancements={sword_hero:swords/wooden=false},nbt={Inventory:[{id:"minecraft:wooden_sword",Count:1b}]}] {"text":"Weapon Copy: Wooden Sword Acquired","italic":true,"color":"gold"}
advancement grant @a[tag=sword,scores={weapon_copy=1..},advancements={sword_hero:swords/wooden=false},nbt={Inventory:[{id:"minecraft:wooden_sword",Count:1b}]}] only sword_hero:swords/wooden
tellraw @a[tag=sword,scores={weapon_copy=1..},advancements={sword_hero:swords/stone=false},nbt={Inventory:[{id:"minecraft:stone_sword",Count:1b}]}] {"text":"Weapon Copy: Stone Sword Acquired","italic":true,"color":"gold"}
advancement grant @a[tag=sword,scores={weapon_copy=1..},advancements={sword_hero:swords/stone=false},nbt={Inventory:[{id:"minecraft:stone_sword",Count:1b}]}] only sword_hero:swords/stone
