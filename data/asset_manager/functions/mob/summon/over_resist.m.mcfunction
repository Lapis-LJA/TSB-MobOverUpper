# 耐性取得
    $execute store result score $Resist Temporary run data get storage asset:mob Resist.$(Element) 100

# 100未満なら-0.3する
    $execute unless score $Resist Temporary matches 100.. store result storage asset:mob Resist.$(Element) float 0.01 run scoreboard players remove $Resist Temporary 30

    scoreboard players reset $Resist Temporary
