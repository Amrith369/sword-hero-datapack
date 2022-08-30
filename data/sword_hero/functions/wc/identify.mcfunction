#execute as @s[]
tellraw @a[tag=sword,scores={weapon_copy=1..},advancements={sword_hero:swords/wooden=false},nbt={Inventory:[{id:"minecraft:wooden_sword",Count:1b}]}] {"text":"Weapon Copy: Wooden Sword Acquired","italic":true,"color":"gold"}
advancement grant @a[tag=sword,scores={weapon_copy=1..},advancements={sword_hero:swords/wooden=false},nbt={Inventory:[{id:"minecraft:wooden_sword",Count:1b}]}] only sword_hero:swords/wooden
tellraw @a[tag=sword,scores={weapon_copy=1..},advancements={sword_hero:swords/stone=false},nbt={Inventory:[{id:"minecraft:stone_sword",Count:1b}]}] {"text":"Weapon Copy: Stone Sword Acquired","italic":true,"color":"gold"}
advancement grant @a[tag=sword,scores={weapon_copy=1..},advancements={sword_hero:swords/stone=false},nbt={Inventory:[{id:"minecraft:stone_sword",Count:1b}]}] only sword_hero:swords/stone
tellraw @a[tag=sword,scores={weapon_copy=1..},advancements={sword_hero:swords/iron=false},nbt={Inventory:[{id:"minecraft:iron_sword",Count:1b}]}] {"text":"Weapon Copy: Iron Sword Acquired","italic":true,"color":"gold"}
advancement grant @a[tag=sword,scores={weapon_copy=1..},advancements={sword_hero:swords/iron=false},nbt={Inventory:[{id:"minecraft:iron_sword",Count:1b}]}] only sword_hero:swords/iron
tellraw @a[tag=sword,scores={weapon_copy=1..},advancements={sword_hero:swords/gold=false},nbt={Inventory:[{id:"minecraft:golden_sword",Count:1b}]}] {"text":"Weapon Copy: Gold Sword Acquired","italic":true,"color":"gold"}
advancement grant @a[tag=sword,scores={weapon_copy=1..},advancements={sword_hero:swords/gold=false},nbt={Inventory:[{id:"minecraft:golden_sword",Count:1b}]}] only sword_hero:swords/gold
tellraw @a[tag=sword,scores={weapon_copy=1..},advancements={sword_hero:swords/diamond=false},nbt={Inventory:[{id:"minecraft:diamond_sword",Count:1b}]}] {"text":"Weapon Copy: Diamond Sword Acquired","italic":true,"color":"gold"}
advancement grant @a[tag=sword,scores={weapon_copy=1..},advancements={sword_hero:swords/diamond=false},nbt={Inventory:[{id:"minecraft:diamond_sword",Count:1b}]}] only sword_hero:swords/diamond
tellraw @a[tag=sword,scores={weapon_copy=1..},advancements={sword_hero:swords/netherite=false},nbt={Inventory:[{id:"minecraft:netherite_sword",Count:1b}]}] {"text":"Weapon Copy: Netherite Sword Acquired","italic":true,"color":"gold"}
advancement grant @a[tag=sword,scores={weapon_copy=1..},advancements={sword_hero:swords/netherite=false},nbt={Inventory:[{id:"minecraft:netherite_sword",Count:1b}]}] only sword_hero:swords/netherite
