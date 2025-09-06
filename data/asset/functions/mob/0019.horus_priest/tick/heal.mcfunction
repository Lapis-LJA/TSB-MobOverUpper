#> asset:mob/0019.horus_priest/tick/heal
#
# 回復
#
# @within function asset:mob/0019.horus_priest/tick/

#> Private
# @private
    #declare tag NotTarget

# 周囲のホルスの神官にTagを付与
    tag @e[type=skeleton,scores={MobID=19},distance=..20] add NotTarget

# 演出
    execute at @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,tag=!NotTarget,distance=..20,sort=nearest,limit=15] run particle heart ~ ~1 ~ 0.3 0.3 0.3 0 10
    playsound minecraft:entity.arrow.hit_player hostile @a ~ ~ ~ 1 1

# 回復
    data modify storage api: Argument.Heal set value 9999f
    data modify storage api: Argument.FixedHeal set value true
    function api:heal/modifier
    execute as @e[type=#lib:living,tag=Enemy,tag=!NotTarget,tag=!Uninterferable,distance=..20,sort=nearest,limit=15] run function api:heal/
    function api:heal/reset

# 耐性バフ
    data modify storage api: Argument.ID set value 150
    data modify storage api: Argument.Stack set value 10
    data modify storage api: Argument.Duration set value 100
    execute as @e[type=#lib:living,tag=Enemy,tag=!NotTarget,tag=!Uninterferable,distance=..20,sort=nearest,limit=15] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# リセット
    tag @e[type=skeleton,tag=NotTarget,distance=..20] add NotTarget

# リセット
    scoreboard players set @s General.Mob.Tick -80
