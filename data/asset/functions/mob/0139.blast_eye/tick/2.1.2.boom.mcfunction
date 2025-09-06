#> asset:mob/0139.blast_eye/tick/2.1.2.boom
#
# 爆発時の処理
#
# @within function asset:mob/0139.blast_eye/tick/2.1.active_tick

# 爆破演出
    playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 0.75
    particle minecraft:explosion ~ ~ ~ 1 1 1 0 3

# DamageAPI設定
    data modify storage api: Argument.Damage set value 32.0f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Fire"
    data modify storage lib: Argument.DisableParticle set value true
# 補正
    function api:damage/modifier
# 実行
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..3.5] run function api:damage/
# リセット
    function api:damage/reset

    data modify storage api: Argument.ID set value 7
    data modify storage api: Argument.Stack set value 3
    data modify storage api: Argument.Duration set value 400
    data modify storage api: Argument.StackOperation set value "add"
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..3.5] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
