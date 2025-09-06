#> asset:mob/0327.eclael/tick/select_from_list/
#
# 
#
# @within function asset:mob/0327.eclael/tick/app.1_3.select_skill_latter

#> Length
# @private
    #declare score_holder $CandidatesLength
    #declare score_holder $Argument.Index

# スキルをランダムに選択する
    function lib:array/session/open
    data modify storage lib: Array set from storage asset:context this.SkillList
    data modify storage lib: Picks set value [0]
    execute store result score $CandidatesLength Temporary if data storage lib: Array[]
    execute store result score $Random Temporary run random value 0..65535
    execute store result storage lib: Picks[0] int 1 run scoreboard players operation $Random Temporary %= $CandidatesLength Temporary
    function lib:array/picks
    data modify storage asset:context this.SkillList set from storage lib: Array
    data modify storage asset:context this.CurSkill set from storage lib: Elements[0]

# リセット
    function lib:array/session/close
    scoreboard players reset $Random Temporary
    scoreboard players reset $CandidatesLength Temporary
