set -l test_dir (dirname (status filename))
source $test_dir/../functions/cn2int.fish


@test "Whole hundreds: 一百" (cn2int 一百) = 100
@test "Whole hundreds: 二百" (cn2int 二百) = 200
@test "Whole hundreds: 三百" (cn2int 三百) = 300
@test "Whole hundreds: 四百" (cn2int 四百) = 400
@test "Whole hundreds: 五百" (cn2int 五百) = 500
@test "Whole hundreds: 六百" (cn2int 六百) = 600
@test "Whole hundreds: 七百" (cn2int 七百) = 700
@test "Whole hundreds: 八百" (cn2int 八百) = 800
@test "Whole hundreds: 九百" (cn2int 九百) = 900


@test "Whole hundreds: 壹佰" (cn2int 壹佰) = 100
@test "Whole hundreds: 貳佰" (cn2int 貳佰) = 200
@test "Whole hundreds: 參佰" (cn2int 參佰) = 300
@test "Whole hundreds: 肆佰" (cn2int 肆佰) = 400
@test "Whole hundreds: 伍佰" (cn2int 伍佰) = 500
@test "Whole hundreds: 陸佰" (cn2int 陸佰) = 600
@test "Whole hundreds: 柒佰" (cn2int 柒佰) = 700
@test "Whole hundreds: 捌佰" (cn2int 捌佰) = 800
@test "Whole hundreds: 玖佰" (cn2int 玖佰) = 900


@test "Whole hundreds: 贰佰" (cn2int 贰佰) = 200
@test "Whole hundreds: 叁佰" (cn2int 叁佰) = 300
@test "Whole hundreds: 陆佰" (cn2int 陆佰) = 600
