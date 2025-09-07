#> asset:mob/0327.eclael/tick/app.skill_events/39_latter_upper_shot/add_attack/b
#
# 
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/39_latter_upper_shot/attack_0

# 弾召喚
    tp @s ~ ~ ~ ~120 ~
    data modify storage api: Argument.ID set value 2212
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.UpperLatter
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation[0]
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute positioned ^10 ^0.1 ^5 run function api:object/summon
    tp @s ~ ~ ~ ~ ~
