# tp marker zum ziel
tp @e[tag=kameraziel] @r[tag=!kamera]

tp @e[tag=kamerapos] @e[limit=1,tag=kameraziel]
execute as @e[tag=kamerapos] at @s run tp @s ~ ~ ~ ~ 30

tag @e[tag=kamera] add disabled

tp @e[tag=kamera] @e[tag=kamerapos,limit=1]
execute as @e[tag=kamera] at @s run tp @s ^ ^ ^-10

tag @e[tag=kamera] remove disabled

# in 20 sekunden wieder :)
schedule function pmp:kamera_spectate_random 20s