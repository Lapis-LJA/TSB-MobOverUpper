#> asset:mob/0182.skull_raven/tick/side
#
#
#
# @within function asset:mob/0182.skull_raven/tick/

#> Private
# @private
    #declare tag Random

# 50:50で左右どっちかにサイドステップする
    execute if predicate lib:random_pass_per/50 run tag @s add Random

# motion
    data modify storage lib: Argument.VectorMagnitude set value 1.2
    execute if entity @s[tag=!Random] facing entity @p[gamemode=!spectator] eyes rotated ~60 ~ run function lib:motion/
    execute if entity @s[tag= Random] facing entity @p[gamemode=!spectator] eyes rotated ~-60 ~ run function lib:motion/
    data remove storage lib: Argument

# リセット
    scoreboard players reset @s General.Mob.Tick
    tag @s remove Random
