#> asset:mob/0182.skull_raven/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/182/tick

# スコア付与
    scoreboard players add @s General.Mob.Tick 1

# 周囲にプレイヤーがいる時、50tickに一度実行する
    execute if score @s General.Mob.Tick matches 50.. unless data storage asset:context this.ByProjectile if entity @a[gamemode=!spectator,distance=..32] run function asset:mob/0182.skull_raven/tick/motion

# 遠距離から被ダメしているなら横移動
    execute if score @s General.Mob.Tick matches 50.. if data storage asset:context this.ByProjectile if entity @a[gamemode=!spectator,distance=..32] run function asset:mob/0182.skull_raven/tick/side
