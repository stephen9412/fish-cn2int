set -l test_dir (dirname (status filename))
source $test_dir/../functions/cn2int.fish


@test "Whole tens: 十" (cn2int 十) = 10
@test "Whole tens: 二十" (cn2int 二十) = 20
@test "Whole tens: 三十" (cn2int 三十) = 30
@test "Whole tens: 四十" (cn2int 四十) = 40
@test "Whole tens: 五十" (cn2int 五十) = 50
@test "Whole tens: 六十" (cn2int 六十) = 60
@test "Whole tens: 七十" (cn2int 七十) = 70
@test "Whole tens: 八十" (cn2int 八十) = 80
@test "Whole tens: 九十" (cn2int 九十) = 90


@test "Whole tens: 拾" (cn2int 拾) = 10
@test "Whole tens: 貳拾" (cn2int 貳拾) = 20
@test "Whole tens: 參拾" (cn2int 參拾) = 30
@test "Whole tens: 肆拾" (cn2int 肆拾) = 40
@test "Whole tens: 伍拾" (cn2int 伍拾) = 50
@test "Whole tens: 陸拾" (cn2int 陸拾) = 60
@test "Whole tens: 柒拾" (cn2int 柒拾) = 70
@test "Whole tens: 捌拾" (cn2int 捌拾) = 80
@test "Whole tens: 玖拾" (cn2int 玖拾) = 90


@test "Whole tens: 贰拾" (cn2int 贰拾) = 20
@test "Whole tens: 叁拾" (cn2int 叁拾) = 30
@test "Whole tens: 陆拾" (cn2int 陆拾) = 60
