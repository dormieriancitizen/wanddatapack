execute at @s rotated as @s run summon minecraft:tnt ~ ~ ~ {Tags:["to_add_motion"], Fuse:20}
execute at @s rotated as @s as @e[tag=to_add_motion] run function okboomer:apply_motion