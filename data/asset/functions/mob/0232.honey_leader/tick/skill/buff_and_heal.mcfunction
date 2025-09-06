#> asset:mob/0232.honey_leader/tick/skill/buff_and_heal
#
# ハニー系のMobにバフを付与して回復するよ
#
# @within function asset:mob/0232.honey_leader/tick/

#> Private
# @private
    #declare tag 6G.HoneyMob

# 演出
    particle minecraft:block honey_block ~ ~1.2 ~ 2 0.4 2 0 30
    particle dust 1.000 0.741 0.141 1.3 ~ ~1.2 ~ 2 0.4 2 0 160 normal
    particle minecraft:wax_on ~ ~ ~ 2 2 2 0 100
    playsound minecraft:entity.glow_squid.squirt hostile @a ~ ~ ~ 1 0.8 0

# バフ/回復のターゲット
    tag @e[type=skeleton,scores={MobID=141..142},distance=..20] add 6G.HoneyMob
    tag @e[type=skeleton,scores={MobID=233},distance=..20] add 6G.HoneyMob

# バフ
    #effect give @e[type=skeleton,tag=6G.HoneyMob,distance=..20] resistance 2 1 true
    #effect give @e[type=skeleton,tag=6G.HoneyMob,distance=..20] speed 2 1 true

# 回復
    data modify storage api: Argument.Heal set value 9999f
    data modify storage api: Argument.FixedHeal set value true
    function api:heal/modifier
    execute as @e[type=skeleton,tag=6G.HoneyMob,distance=..20] run function api:heal/
    function api:heal/reset

# 耐性バフ
    #data modify storage api: Argument.ID set value 150
    #data modify storage api: Argument.Stack set value 2
    #data modify storage api: Argument.Duration set value 100
    #execute as @e[type=#lib:living,tag=6G.HoneyMob,distance=..20] run function api:entity/mob/effect/give
    #function api:entity/mob/effect/reset

# タグを消しておく
    tag @e[type=skeleton,tag=6G.HoneyMob,distance=..20] remove 6G.HoneyMob

# リセット
    function asset:mob/0232.honey_leader/tick/skill/reset
