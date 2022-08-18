execute at @s run execute at @e[type=experience_orb,distance=0..7,tag=!doublexp] run summon experience_orb ~ ~ ~ {Glowing:1b,Health:30b,Value:1}
execute at @s run tag @e[type=experience_orb,distance=0..7,tag=!doublexp] add doublexp
