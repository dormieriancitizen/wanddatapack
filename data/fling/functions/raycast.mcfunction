## Run from raycast:start_raycast

# Using dx for precise hitbox detection
# Parameters:
#     Edit not_mob.json in tags/entities to change which entities will not be targetted
#     Change the "positioned" offsets to change projectile size
#       - If > 1 block, just use one dx detection
execute as @e[tag=!raycasting,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0,type=!#fling:not_mob] positioned ~0.99 ~0.99 ~0.99 run function fling:collide

scoreboard players add .distance rc 1

# Make raycast visible
particle end_rod ~ ~ ~ 0 0 0 0 0 force


# Repeat the raycast if certain conditions are met
# Parameters:
#    (score after "matches") * (accuracy increment) = range
#    The "positioned" value specifies the precision
#    Edit raycast_pass.json in tags/blocks to change which blocks the raycast ignores
#    "rotated" controls arc/curve of raycast path
execute if score .distance rc matches ..5000 positioned ^ ^ ^0.2 rotated ~ ~ if block ~ ~ ~ #fling:raycast_pass run function fling:raycast
