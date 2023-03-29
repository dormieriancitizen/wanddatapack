## Run from raycast:start_raycast

# Using dx for precise hitbox detection
# Parameters:
#     Edit not_mob.json in tags/entities to change which entities will not be targetted
#     Change the "positioned" offsets to change projectile size
#       - If > 1 block, just use one dx detection
execute positioned ^ ^ ^0.1 rotated ~ ~ unless block ~ ~ ~ #summoner:raycast_pass run function summoner:block_collide 

scoreboard players add .distance rc 1

# Make raycast visible
particle minecraft:ash ~ ~ ~ 0 0 0 0 0 force

# Repeat the raycast if certain conditions are met
# Parameters:
#    (score after "matches") * (accuracy increment) = range
#    The "positioned" value specifies the precision
#    Edit raycast_pass.json in tags/blocks to change which blocks the raycast ignores
#    "rotated" controls arc/curve of raycast path
execute if score .distance rc matches ..2000 positioned ^ ^ ^0.1 rotated ~ ~ if block ~ ~ ~ #summoner:raycast_pass run function summoner:raycast
