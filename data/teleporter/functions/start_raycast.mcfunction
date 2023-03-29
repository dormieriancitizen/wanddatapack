## Call this on entities which launch the raycast


# Tag prevents current caster from being detected
tag @s add raycasting

playsound entity.enderman.teleport player @a ~ ~ ~ 10

# Anchor to the eyes and position with vector coordinates (Remove if not running from eyes of entity)
execute anchored eyes positioned ^ ^ ^ run function teleporter:raycast

# Remove the raycasting tag after raycast completion to prepare fo the next player
tag @s remove raycasting
scoreboard players reset .distance rc
scoreboard players set @a casting 0
