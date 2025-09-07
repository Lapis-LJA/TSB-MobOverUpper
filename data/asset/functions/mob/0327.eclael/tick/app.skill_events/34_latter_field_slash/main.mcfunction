#> asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/main
#
# 
#
# @private

# 中心点に移動
    execute if score @s 93.AnimationTimer matches 1 run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/animation_2
    # 移動
        execute if score @s 93.AnimationTimer matches 6 positioned as @e[type=marker,tag=93.Marker.SpawnPoint,distance=..80,sort=nearest,limit=1] run tp @s ~ ~-2 ~ ~ 0
    # 演出
        execute if score @s 93.AnimationTimer matches 4 run playsound entity.wither.shoot hostile @a[distance=..30] ~ ~ ~ 0.5 1.8 0.5
        execute if score @s 93.AnimationTimer matches 4 run playsound entity.guardian.attack hostile @a ~ ~ ~ 2 1.8
        execute if score @s 93.AnimationTimer matches 4 run particle flash ^3 ^ ^ 0 0 0 0 1
        execute if score @s 93.AnimationTimer matches 9 run playsound entity.wither.shoot hostile @a[distance=..30] ~ ~ ~ 0.5 1.8 0.5
        execute if score @s 93.AnimationTimer matches 9 run playsound entity.guardian.attack hostile @a ~ ~ ~ 2 1.8
        execute if score @s 93.AnimationTimer matches 9 run particle flash ^-3 ^ ^ 0 0 0 0 1

# 開始
    execute if score @s 93.AnimationTimer matches 34 run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/animation_0
    # 演出
        execute if score @s 93.AnimationTimer matches 38 run playsound item.armor.equip_iron hostile @a ~ ~ ~ 2 1
        execute if score @s 93.AnimationTimer matches 100 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 2 1
        execute if score @s 93.AnimationTimer matches 119 run playsound entity.wither.shoot hostile @a[distance=..30] ~ ~ ~ 0.5 1.8 0.5
        execute if score @s 93.AnimationTimer matches 119 run playsound entity.guardian.attack hostile @a ~ ~ ~ 2 1.8
        execute if score @s 93.AnimationTimer matches 119 run particle flash ~ ~1 ~ 0 0 0 0 1
        execute if score @s 93.AnimationTimer matches 120 positioned ^ ^1 ^3 run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/particle_jump
        execute if score @s 93.AnimationTimer matches 121 positioned ^ ^1 ^7 run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/particle_jump
        execute if score @s 93.AnimationTimer matches 122 positioned ^ ^1 ^11 run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/particle_jump

# 攻撃
    execute if score @s 93.AnimationTimer matches 121 store result storage asset:context this.Random int 1 run random value 0..3
        #execute if score @s 93.AnimationTimer matches 121 run data modify storage asset:context this.Random set value 4
        # 二重三角形 外→中
        execute if data storage asset:context this{Random:0} if score @s 93.AnimationTimer matches 121 if predicate api:global_vars/difficulty/min/3_blessless rotated ~ 0 run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/attack_0
        execute if data storage asset:context this{Random:0} if score @s 93.AnimationTimer matches 123 if predicate api:global_vars/difficulty/min/3_blessless rotated ~120 0 run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/attack_0
        execute if data storage asset:context this{Random:0} if score @s 93.AnimationTimer matches 125 if predicate api:global_vars/difficulty/min/3_blessless rotated ~240 0 run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/attack_0
        execute if data storage asset:context this{Random:0} if score @s 93.AnimationTimer matches 171 if predicate api:global_vars/difficulty/min/3_blessless rotated ~60 0 positioned ~ ~-2 ~ run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/attack_1
        execute if data storage asset:context this{Random:0} if score @s 93.AnimationTimer matches 173 if predicate api:global_vars/difficulty/min/3_blessless rotated ~180 0 positioned ~ ~-2 ~ run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/attack_1
        execute if data storage asset:context this{Random:0} if score @s 93.AnimationTimer matches 175 if predicate api:global_vars/difficulty/min/3_blessless rotated ~300 0 positioned ~ ~-2 ~ run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/attack_1
    # 二重三角形 中→外
        execute if data storage asset:context this{Random:1} if score @s 93.AnimationTimer matches 121 if predicate api:global_vars/difficulty/min/3_blessless rotated ~ 0 run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/attack_1
        execute if data storage asset:context this{Random:1} if score @s 93.AnimationTimer matches 123 if predicate api:global_vars/difficulty/min/3_blessless rotated ~120 0 run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/attack_1
        execute if data storage asset:context this{Random:1} if score @s 93.AnimationTimer matches 125 if predicate api:global_vars/difficulty/min/3_blessless rotated ~240 0 run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/attack_1
        execute if data storage asset:context this{Random:1} if score @s 93.AnimationTimer matches 171 if predicate api:global_vars/difficulty/min/3_blessless rotated ~60 0 positioned ~ ~-2 ~ run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/attack_0
        execute if data storage asset:context this{Random:1} if score @s 93.AnimationTimer matches 173 if predicate api:global_vars/difficulty/min/3_blessless rotated ~180 0 positioned ~ ~-2 ~ run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/attack_0
        execute if data storage asset:context this{Random:1} if score @s 93.AnimationTimer matches 175 if predicate api:global_vars/difficulty/min/3_blessless rotated ~300 0 positioned ~ ~-2 ~ run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/attack_0

    # 新パターン1
        execute if data storage asset:context this{Random:2} if score @s 93.AnimationTimer matches 121 rotated ~0 0 positioned ^ ^ ^12 run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/attack_0
        execute if data storage asset:context this{Random:2} if score @s 93.AnimationTimer matches 123 rotated ~90 0 positioned ^ ^ ^12 run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/attack_0
        execute if data storage asset:context this{Random:2} if score @s 93.AnimationTimer matches 125 rotated ~180 0 positioned ^ ^ ^12 run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/attack_0
        execute if data storage asset:context this{Random:2} if score @s 93.AnimationTimer matches 127 rotated ~270 0 positioned ^ ^ ^12 run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/attack_0
        execute if data storage asset:context this{Random:2} if score @s 93.AnimationTimer matches 173 rotated ~45 0 positioned ^ ^-2 ^ run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/attack_0
        execute if data storage asset:context this{Random:2} if score @s 93.AnimationTimer matches 175 rotated ~135 0 positioned ^ ^-2 ^ run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/attack_0
    # 新パターン2
        execute if data storage asset:context this{Random:3} if score @s 93.AnimationTimer matches 121 rotated ~45 0 positioned ^ ^ ^ run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/attack_0
        execute if data storage asset:context this{Random:3} if score @s 93.AnimationTimer matches 123 rotated ~135 0 positioned ^ ^ ^ run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/attack_0
        execute if data storage asset:context this{Random:3} if score @s 93.AnimationTimer matches 169 rotated ~0 0 positioned ^ ^-2 ^6 run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/attack_0
        execute if data storage asset:context this{Random:3} if score @s 93.AnimationTimer matches 171 rotated ~90 0 positioned ^ ^-2 ^6 run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/attack_0
        execute if data storage asset:context this{Random:3} if score @s 93.AnimationTimer matches 173 rotated ~180 0 positioned ^ ^-2 ^6 run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/attack_0
        execute if data storage asset:context this{Random:3} if score @s 93.AnimationTimer matches 175 rotated ~270 0 positioned ^ ^-2 ^6 run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/attack_0
    # 新パターン3
        execute if data storage asset:context this{Random:4} if score @s 93.AnimationTimer matches 121 rotated ~ 0 positioned ^ ^ ^12 run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/attack_0
        execute if data storage asset:context this{Random:4} if score @s 93.AnimationTimer matches 123 rotated ~ 0 positioned ^ ^ ^0 run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/attack_0
        execute if data storage asset:context this{Random:4} if score @s 93.AnimationTimer matches 125 rotated ~ 0 positioned ^ ^ ^-12 run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/attack_0
        execute if data storage asset:context this{Random:4} if score @s 93.AnimationTimer matches 171 rotated ~90 0 positioned ^ ^-2 ^12 run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/attack_0
        execute if data storage asset:context this{Random:4} if score @s 93.AnimationTimer matches 173 rotated ~90 0 positioned ^ ^-2 ^0 run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/attack_0
        execute if data storage asset:context this{Random:4} if score @s 93.AnimationTimer matches 175 rotated ~90 0 positioned ^ ^-2 ^-12 run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/attack_0

# 無敵
    execute if score @s 93.AnimationTimer matches 34 run function asset:mob/0327.eclael/tick/app.general/invulnerable/start
    execute if score @s 93.AnimationTimer matches 601 run function asset:mob/0327.eclael/tick/app.general/invulnerable/end

# 終了
    execute if score @s 93.AnimationTimer matches 600 run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/animation_1
    # 移動
        execute if score @s 93.AnimationTimer matches 130 run tp @s ~ ~2 ~ ~ 0
        execute if score @s 93.AnimationTimer matches 595 run tp @s ~ ~-2 ~ ~ 0
    # 演出
        execute if score @s 93.AnimationTimer matches 600 run playsound entity.wither.shoot hostile @a[distance=..30] ~ ~ ~ 0.5 1.8 0.5
        execute if score @s 93.AnimationTimer matches 600 run playsound entity.guardian.attack hostile @a ~ ~ ~ 2 1.8
        execute if score @s 93.AnimationTimer matches 600 run particle flash ~ ~3 ~ 0 0 0 0 1

# 終了
    execute if score @s 93.AnimationTimer matches 625.. run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/end
