scoreboard objectives add posx dummy
scoreboard objectives add posy dummy
scoreboard objectives add posz dummy

scoreboard objectives add prevx dummy
scoreboard objectives add prevy dummy
scoreboard objectives add prevz dummy

scoreboard objectives add diffx dummy
scoreboard objectives add diffy dummy
scoreboard objectives add diffz dummy

scoreboard objectives add diff dummy

scoreboard objectives add lagspiked dummy

execute as @a at @a run execute store result score @s prevx run data get entity @s Pos[0] 10
execute as @a at @a run execute store result score @s prevy run data get entity @s Pos[1] 10
execute as @a at @a run execute store result score @s prevz run data get entity @s Pos[2] 10

say Loaded MobPathPack v1.2 Beta 2