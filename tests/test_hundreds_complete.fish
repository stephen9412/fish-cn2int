set -l test_dir (dirname (status filename))
source $test_dir/../functions/cn2int.fish


@test "Complete hundreds: 一百一十一" (cn2int 一百一十一) = 111
@test "Complete hundreds: 二百二十二" (cn2int 二百二十二) = 222
@test "Complete hundreds: 三百三十三" (cn2int 三百三十三) = 333
@test "Complete hundreds: 四百四十四" (cn2int 四百四十四) = 444
@test "Complete hundreds: 五百五十五" (cn2int 五百五十五) = 555
@test "Complete hundreds: 六百六十六" (cn2int 六百六十六) = 666
@test "Complete hundreds: 七百七十七" (cn2int 七百七十七) = 777
@test "Complete hundreds: 八百八十八" (cn2int 八百八十八) = 888
@test "Complete hundreds: 九百九十九" (cn2int 九百九十九) = 999


@test "Complete hundreds: 一百二十三" (cn2int 一百二十三) = 123
@test "Complete hundreds: 二百三十四" (cn2int 二百三十四) = 234
@test "Complete hundreds: 三百四十五" (cn2int 三百四十五) = 345
@test "Complete hundreds: 四百五十六" (cn2int 四百五十六) = 456
@test "Complete hundreds: 五百六十七" (cn2int 五百六十七) = 567
@test "Complete hundreds: 六百七十八" (cn2int 六百七十八) = 678
@test "Complete hundreds: 七百八十九" (cn2int 七百八十九) = 789
@test "Complete hundreds: 八百九十一" (cn2int 八百九十一) = 891
@test "Complete hundreds: 九百一十二" (cn2int 九百一十二) = 912


@test "Complete hundreds: 壹佰壹拾壹" (cn2int 壹佰壹拾壹) = 111
@test "Complete hundreds: 貳佰貳拾貳" (cn2int 貳佰貳拾貳) = 222
@test "Complete hundreds: 參佰參拾參" (cn2int 參佰參拾參) = 333
@test "Complete hundreds: 肆佰肆拾肆" (cn2int 肆佰肆拾肆) = 444
@test "Complete hundreds: 伍佰伍拾伍" (cn2int 伍佰伍拾伍) = 555
@test "Complete hundreds: 陸佰陸拾陸" (cn2int 陸佰陸拾陸) = 666
@test "Complete hundreds: 柒佰柒拾柒" (cn2int 柒佰柒拾柒) = 777
@test "Complete hundreds: 捌佰捌拾捌" (cn2int 捌佰捌拾捌) = 888
@test "Complete hundreds: 玖佰玖拾玖" (cn2int 玖佰玖拾玖) = 999


@test "Complete hundreds: 壹佰貳拾參" (cn2int 壹佰貳拾參) = 123
@test "Complete hundreds: 貳佰參拾肆" (cn2int 貳佰參拾肆) = 234
@test "Complete hundreds: 參佰肆拾伍" (cn2int 參佰肆拾伍) = 345
@test "Complete hundreds: 肆佰伍拾陸" (cn2int 肆佰伍拾陸) = 456
@test "Complete hundreds: 伍佰陸拾柒" (cn2int 伍佰陸拾柒) = 567
@test "Complete hundreds: 陸佰柒拾捌" (cn2int 陸佰柒拾捌) = 678
@test "Complete hundreds: 柒佰捌拾玖" (cn2int 柒佰捌拾玖) = 789


@test "Complete hundreds: 贰佰贰拾贰" (cn2int 贰佰贰拾贰) = 222
@test "Complete hundreds: 叁佰叁拾叁" (cn2int 叁佰叁拾叁) = 333
@test "Complete hundreds: 陆佰陆拾陆" (cn2int 陆佰陆拾陆) = 666


@test "Complete hundreds: 贰佰叁拾肆" (cn2int 贰佰叁拾肆) = 234
@test "Complete hundreds: 叁佰肆拾伍" (cn2int 叁佰肆拾伍) = 345
@test "Complete hundreds: 陆佰柒拾捌" (cn2int 陆佰柒拾捌) = 678
