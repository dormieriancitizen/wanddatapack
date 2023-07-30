execute as @a[tag=casting,nbt={SelectedItem:{tag:{key:1}}}] run tag @s add arrowing

execute as @a[tag=arrowing,nbt={SelectedItem:{tag:{key:1}}}] at @a[tag=arrowing,nbt={SelectedItem:{tag:{key:1}}}] run function cast:go

execute as @e[tag=magic_arrow,nbt={inGround:1b}] run kill @s