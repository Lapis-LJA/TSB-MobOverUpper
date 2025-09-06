#> asset:mob/0147.prismarine_slayer/tick/
#
# 
#
# @within function asset:mob/alias/147/tick

# 
    execute store result storage asset:context this.MotionCT int 0.9999999999 run data get storage asset:context this.MotionCT

# プレイヤーが32m以内にいるのなら
    execute if data storage asset:context this{MotionCT:0} if entity @p[gamemode=!spectator,distance=..32] if predicate lib:random_pass_per/2 run function asset:mob/0147.prismarine_slayer/tick/motion
    execute if data storage asset:context this{MotionCT:0} if entity @p[gamemode=!spectator,distance=10..32] if predicate lib:random_pass_per/2 run function asset:mob/0147.prismarine_slayer/tick/motion
