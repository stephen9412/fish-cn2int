set -l test_dir (dirname (status filename))
source $test_dir/../functions/cn2int.fish


@test "Complete thousands: 一千一百一十一" (cn2int 一千一百一十一) = 1111
@test "Complete thousands: 二千二百二十二" (cn2int 二千二百二十二) = 2222
@test "Complete thousands: 三千三百三十三" (cn2int 三千三百三十三) = 3333
@test "Complete thousands: 四千四百四十四" (cn2int 四千四百四十四) = 4444
@test "Complete thousands: 五千五百五十五" (cn2int 五千五百五十五) = 5555
@test "Complete thousands: 六千六百六十六" (cn2int 六千六百六十六) = 6666
@test "Complete thousands: 七千七百七十七" (cn2int 七千七百七十七) = 7777
@test "Complete thousands: 八千八百八十八" (cn2int 八千八百八十八) = 8888
@test "Complete thousands: 九千九百九十九" (cn2int 九千九百九十九) = 9999


@test "Complete thousands: 一千二百三十四" (cn2int 一千二百三十四) = 1234
@test "Complete thousands: 二千三百四十五" (cn2int 二千三百四十五) = 2345
@test "Complete thousands: 三千四百五十六" (cn2int 三千四百五十六) = 3456
@test "Complete thousands: 四千五百六十七" (cn2int 四千五百六十七) = 4567
@test "Complete thousands: 五千六百七十八" (cn2int 五千六百七十八) = 5678
@test "Complete thousands: 六千七百八十九" (cn2int 六千七百八十九) = 6789
@test "Complete thousands: 七千八百九十一" (cn2int 七千八百九十一) = 7891


@test "Complete thousands: 壹仟壹佰壹拾壹" (cn2int 壹仟壹佰壹拾壹) = 1111
@test "Complete thousands: 貳仟貳佰貳拾貳" (cn2int 貳仟貳佰貳拾貳) = 2222
@test "Complete thousands: 參仟參佰參拾參" (cn2int 參仟參佰參拾參) = 3333
@test "Complete thousands: 肆仟肆佰肆拾肆" (cn2int 肆仟肆佰肆拾肆) = 4444
@test "Complete thousands: 伍仟伍佰伍拾伍" (cn2int 伍仟伍佰伍拾伍) = 5555
@test "Complete thousands: 陸仟陸佰陸拾陸" (cn2int 陸仟陸佰陸拾陸) = 6666
@test "Complete thousands: 柒仟柒佰柒拾柒" (cn2int 柒仟柒佰柒拾柒) = 7777
@test "Complete thousands: 捌仟捌佰捌拾捌" (cn2int 捌仟捌佰捌拾捌) = 8888
@test "Complete thousands: 玖仟玖佰玖拾玖" (cn2int 玖仟玖佰玖拾玖) = 9999


@test "Complete thousands: 壹仟貳佰參拾肆" (cn2int 壹仟貳佰參拾肆) = 1234
@test "Complete thousands: 貳仟參佰肆拾伍" (cn2int 貳仟參佰肆拾伍) = 2345
@test "Complete thousands: 參仟肆佰伍拾陸" (cn2int 參仟肆佰伍拾陸) = 3456
@test "Complete thousands: 肆仟伍佰陸拾柒" (cn2int 肆仟伍佰陸拾柒) = 4567
@test "Complete thousands: 伍仟陸佰柒拾捌" (cn2int 伍仟陸佰柒拾捌) = 5678
@test "Complete thousands: 陸仟柒佰捌拾玖" (cn2int 陸仟柒佰捌拾玖) = 6789


@test "Complete thousands: 贰仟贰佰贰拾贰" (cn2int 贰仟贰佰贰拾贰) = 2222
@test "Complete thousands: 叁仟叁佰叁拾叁" (cn2int 叁仟叁佰叁拾叁) = 3333
@test "Complete thousands: 陆仟陆佰陆拾陆" (cn2int 陆仟陆佰陆拾陆) = 6666


@test "Complete thousands: 贰仟叁佰肆拾伍" (cn2int 贰仟叁佰肆拾伍) = 2345
@test "Complete thousands: 叁仟肆佰伍拾陆" (cn2int 叁仟肆佰伍拾陆) = 3456
@test "Complete thousands: 陆仟柒佰捌拾玖" (cn2int 陆仟柒佰捌拾玖) = 6789
