## Call this on entities which launch the raycast


# Tag prevents current caster from being detected
tag @s add raycasting


# Anchor to the eyes and position with vector coordinates (Remove if not running from eyes of entity)
execute positioned -2284 100 3216 unless entity @s[distance=..10] at @s anchored eyes positioned ^ ^ ^ run function fling:raycast

playsound entity.evoker.cast_spell player @a ~ ~ ~

# Remove the raycasting tag after raycast completion to prepare fo the next player
tag @s remove raycasting
scoreboard players reset .distance rc
scoreboard players set @a casting 0
