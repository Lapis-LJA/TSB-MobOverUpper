#> asset:mob/0104.mad_scientist/tick/reset
#
# リセット
#
# @within function asset:mob/0104.mad_scientist/tick/

# スコアリセット
    scoreboard players set @s General.Mob.Tick -80

# 持つポーションの色を再度設定
    function asset:mob/0104.mad_scientist/tick/random_element_select
