#> asset:mob/0147.prismarine_slayer/tick/motion
#
# 
#
# @within function asset:mob/0147.prismarine_slayer/tick/

tp @s ~ ~ ~ facing entity @p eyes

# 最寄りのプレイヤーの距離に応じてジャンプ距離変更
    data modify storage lib: Argument.VectorMagnitude set value 1.5f
    execute if entity @p[gamemode=spectator,distance=..20] run data modify storage lib: Argument.VectorMagnitude set value 1.2f
    execute if entity @p[gamemode=spectator,distance=..10] run data modify storage lib: Argument.VectorMagnitude set value 0.9f
    execute facing entity @p[gamemode=!spectator,distance=..32] feet rotated ~ ~-13 run function lib:motion/

# CD
    data modify storage asset:context this.MotionCT set value 10
