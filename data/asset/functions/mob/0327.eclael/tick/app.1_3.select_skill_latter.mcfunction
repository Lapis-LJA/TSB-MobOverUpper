#> asset:mob/0327.eclael/tick/app.1_3.select_skill_latter
#
# 使用するスキルを決定する・後半戦
#
# @within function asset:mob/0327.eclael/tick/app.1_1.select_skill

#> Length
# @private
    #declare tag 93.First


# 休憩をはさむ
    execute if data storage asset:context this{CurSkill:FieldSlash} run data modify storage asset:context this.CurSkill set value Idle
    execute if data storage asset:context this{CurSkill:Beam} run data modify storage asset:context this.CurSkill set value Idle
    execute if data storage asset:context this{CurSkill:Tensei} run data modify storage asset:context this.CurSkill set value Idle

# 休憩カウント
    execute if data storage asset:context this{CurSkill:Idle} run scoreboard players add @s 93.IdleCount 1
    execute if score @s 93.IdleCount matches 2.. run data remove storage asset:context this.CurSkill
    execute if score @s 93.IdleCount matches 2.. run scoreboard players reset @s 93.IdleCount

#
    execute unless data storage asset:context this{CurSkill:Idle} run data remove storage asset:context this.CurSkill

# 0番目の要素が無いならインクリメント
    execute if entity @s[tag=93.First] unless data storage asset:context this.SkillList[0] run scoreboard players add @s 93.ActionCount 1

# 初期化
    execute unless data storage asset:context this.SkillList[0] run data modify storage asset:context this.SkillList set value ["Fall","MoveSlash","Tensei","Circle","Beam","UpperShot","Thunder"]

# 最初だけスキル選択をしないようにする
    execute if entity @s[tag=93.First] unless score @s 93.IdleCount matches 1.. run function asset:mob/0327.eclael/tick/select_from_list/

# 最初だけ強制的に大技で上書き
    execute if entity @s[tag=!93.First] run data modify storage asset:context this.CurSkill set value "FieldSlash"
    execute if entity @s[tag=!93.First] run tag @s add 93.First

# 2周したら大技
    execute if score @s 93.ActionCount matches 2.. run data modify storage asset:context this.CurSkill set value "FieldSlash"
    execute if score @s 93.ActionCount matches 2.. run scoreboard players reset @s 93.ActionCount

# スキルtag
data modify storage asset:context this.CurSkill set value "FieldSlash"
    execute if data storage asset:context this{CurSkill:Idle} run tag @s add 93.Skill.Latter.Idle
    execute if data storage asset:context this{CurSkill:FieldSlash} run tag @s add 93.Skill.FieldSlash
    execute if data storage asset:context this{CurSkill:Fall} run tag @s add 93.Skill.Fall
    execute if data storage asset:context this{CurSkill:MoveSlash} run tag @s add 93.Skill.MoveSlash
    execute if data storage asset:context this{CurSkill:Tensei} run tag @s add 93.Skill.Tensei
    execute if data storage asset:context this{CurSkill:Circle} run tag @s add 93.Skill.Circle
    execute if data storage asset:context this{CurSkill:Beam} run tag @s add 93.Skill.Beam
    execute if data storage asset:context this{CurSkill:Thunder} run tag @s add 93.Skill.FieldThunder
    execute if data storage asset:context this{CurSkill:UpperShot} run tag @s add 93.Skill.UpperShot
