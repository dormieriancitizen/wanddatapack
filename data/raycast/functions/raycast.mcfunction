## Run from raycast:start_raycast

# Using dx for precise hitbox detection
# Parameters:
#     Edit not_mob.json in tags/entities to change which entities will not be targetted
#     Change the "positioned" offsets to change projectile size
#       - If > 1 block, just use one dx detection
execute as @e[tag=!raycasting,type=!#raycast:not_mob,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run function raycast:collide
execute positioned ^ ^ ^0.1 rotated ~ ~ unless block ~ ~ ~ #raycast:raycast_pass run function raycast:block_collide 

scoreboard players add .distance rc 1

# Make raycast visible
execute if score .distance rc matches 20.. run particle minecraft:explosion ~ ~ ~ 0 0 0 0 0 force

# Repeat the raycast if certain conditions are met
# Parameters:
#    (score after "matches") * (accuracy increment) = range
#    The "positioned" value specifies the precision
#    Edit raycast_pass.json in tags/blocks to change which blocks the raycast ignores
#    "rotated" controls arc/curve of raycast path
execute if score .distance rc matches ..5000 positioned ^ ^ ^0.1 rotated ~ ~ if block ~ ~ ~ #raycast:raycast_pass run function raycast:raycast
