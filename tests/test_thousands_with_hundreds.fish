set -l test_dir (dirname (status filename))
source $test_dir/../functions/cn2int.fish


@test "Thousands with hundreds: 一千一百" (cn2int 一千一百) = 1100
@test "Thousands with hundreds: 一千二百" (cn2int 一千二百) = 1200
@test "Thousands with hundreds: 一千三百" (cn2int 一千三百) = 1300
@test "Thousands with hundreds: 二千五百" (cn2int 二千五百) = 2500
@test "Thousands with hundreds: 三千六百" (cn2int 三千六百) = 3600
@test "Thousands with hundreds: 五千七百" (cn2int 五千七百) = 5700
@test "Thousands with hundreds: 七千八百" (cn2int 七千八百) = 7800
@test "Thousands with hundreds: 九千九百" (cn2int 九千九百) = 9900


@test "Thousands with hundreds: 壹仟壹佰" (cn2int 壹仟壹佰) = 1100
@test "Thousands with hundreds: 壹仟貳佰" (cn2int 壹仟貳佰) = 1200
@test "Thousands with hundreds: 貳仟伍佰" (cn2int 貳仟伍佰) = 2500
@test "Thousands with hundreds: 參仟陸佰" (cn2int 參仟陸佰) = 3600
@test "Thousands with hundreds: 伍仟柒佰" (cn2int 伍仟柒佰) = 5700
@test "Thousands with hundreds: 玖仟玖佰" (cn2int 玖仟玖佰) = 9900


@test "Thousands with hundreds: 贰仟伍佰" (cn2int 贰仟伍佰) = 2500
@test "Thousands with hundreds: 叁仟陆佰" (cn2int 叁仟陆佰) = 3600
@test "Thousands with hundreds: 陆仟柒佰" (cn2int 陆仟柒佰) = 6700
