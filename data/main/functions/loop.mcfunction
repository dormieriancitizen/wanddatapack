execute as @a[scores={casting=1..}] run tag @s add casting
function raycast:check
function okboomer:check
function teleporter:check
function fling:check
function nuker:check
function summoner:check
function cast:check


scoreboard players set @a casting 0
tag @a remove casting

execute as @a[tag=!hasStuff] run function main:addstuff
execute unless entity @e[type=armor_stand,name="Server"] run summon minecraft:armor_stand -2283 63 3210 {ShowArms:1b,NoBasePlate:1b,CustomName:'[{"text":"Server","color":"blue"}]',Health:1000000,Glowing:1b,HasVisualFire:1b,Invulnerable:1b,NoAI:1b,NoGravity:1b,Silent:1b,HandItems:[{id:netherite_sword,Count:1},{id:netherite_pickaxe,Count:1}],ArmorItems:[{id:netherite_boots,Count:1},{id:netherite_leggings,Count:1},{id:netherite_chestplate,Count:1},{id:pearlescent_froglight,Count:1}],HandDropChances:[0f,0f],ArmorDropChances:[0f,0f,0f,0f],Attributes:[{Name:"generic.max_health",Base:1000000f}]}
execute positioned -2283 63 3210 if block -2283 63 3210 air run function main:spawnsign