#> asset:mob/0166.flying_potion/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/166/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail

# デバフ2回
    function asset:mob/0166.flying_potion/attack/debuff/
    function asset:mob/0166.flying_potion/attack/debuff/
    #function asset:mob/0166.flying_potion/attack/debuff/

# 演出
    particle minecraft:dragon_breath ~ ~ ~ 0 0 0 0.1 100
    playsound entity.splash_potion.break hostile @a ~ ~ ~ 1 1

# 自殺する
    function api:mob/remove
