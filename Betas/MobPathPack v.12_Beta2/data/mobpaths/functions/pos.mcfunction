execute as @a at @a run execute store result score @s posx run data get entity @s Pos[0] 10
execute as @a at @a run execute store result score @s posy run data get entity @s Pos[1] 10
execute as @a at @a run execute store result score @s posz run data get entity @s Pos[2] 10

execute as @a at @a run execute store result score @s diffx run scoreboard players get @s posx
execute as @a at @a run execute store result score @s diffy run scoreboard players get @s posy
execute as @a at @a run execute store result score @s diffz run scoreboard players get @s posz

execute as @a at @a run scoreboard players operation @s diffx -= @s prevx
execute as @a at @a run scoreboard players operation @s diffy -= @s prevy
execute as @a at @a run scoreboard players operation @s diffz -= @s prevz

execute as @a at @a run scoreboard players operation @s diffx *= @s diffx
execute as @a at @a run scoreboard players operation @s diffy *= @s diffy
execute as @a at @a run scoreboard players operation @s diffz *= @s diffz

execute as @a at @a run execute store result score @s diff run scoreboard players get @s diffx
execute as @a at @a run scoreboard players operation @s diff += @s diffz
execute as @a at @a run scoreboard players operation @s diff -= @s diffy

execute as @a at @a run execute store result score @s lagspiked run scoreboard players get @s diffx
execute as @a at @a run scoreboard players operation @s lagspiked += @s diffz
execute as @a at @a run scoreboard players operation @s lagspiked += @s diffy

execute if entity @a[tag=Path,nbt={OnGround:1b},tag=PathOnAir,scores={lagspiked=200..999}] run msg @a[tag=Path,nbt={OnGround:1b},tag=PathOnAir,scores={lagspiked=200..999}] Did you go super fast, Or fall from a big height with or without a totem, Or Did the the server just experience a big lag spike?
execute if entity @a[tag=Path,nbt={OnGround:1b},tag=PathOnAir,scores={lagspiked=1000..9999}] run msg @a[tag=Path,nbt={OnGround:1b},tag=PathOnAir,scores={lagspiked=1000..9999}] WOW! THAT WAS FAST! ARE YOU GOING SUPER G*D D*HM FAST, FALL FROM A G*D D*HM HUGE HEIGHT, OR DID THE SERVER JUST GO THROUGH A HUUUUUMUNGUS LAGSPIKE?
execute if entity @a[tag=Path,nbt={OnGround:1b},tag=PathOnAir,scores={lagspiked=10000..}] run msg @a[tag=Path,nbt={OnGround:1b},tag=PathOnAir,scores={lagspiked=10000..}] I honestly don't know how this happened. Are you using 1.13 instead of 1.13.1? Did you teleport?

execute as @a at @a run execute store result score @s prevx run scoreboard players get @s posx
execute as @a at @a run execute store result score @s prevy run scoreboard players get @s posy
execute as @a at @a run execute store result score @s prevz run scoreboard players get @s posz