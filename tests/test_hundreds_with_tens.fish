set -l test_dir (dirname (status filename))
source $test_dir/../functions/cn2int.fish


@test "Hundreds with tens: 一百二十" (cn2int 一百二十) = 120
@test "Hundreds with tens: 二百三十" (cn2int 二百三十) = 230
@test "Hundreds with tens: 三百四十" (cn2int 三百四十) = 340
@test "Hundreds with tens: 四百五十" (cn2int 四百五十) = 450
@test "Hundreds with tens: 五百六十" (cn2int 五百六十) = 560
@test "Hundreds with tens: 六百七十" (cn2int 六百七十) = 670
@test "Hundreds with tens: 七百八十" (cn2int 七百八十) = 780
@test "Hundreds with tens: 八百九十" (cn2int 八百九十) = 890
@test "Hundreds with tens: 九百一十" (cn2int 九百一十) = 910


@test "Hundreds with tens: 壹佰貳拾" (cn2int 壹佰貳拾) = 120
@test "Hundreds with tens: 貳佰參拾" (cn2int 貳佰參拾) = 230
@test "Hundreds with tens: 參佰肆拾" (cn2int 參佰肆拾) = 340
@test "Hundreds with tens: 肆佰伍拾" (cn2int 肆佰伍拾) = 450
@test "Hundreds with tens: 伍佰陸拾" (cn2int 伍佰陸拾) = 560
@test "Hundreds with tens: 陸佰柒拾" (cn2int 陸佰柒拾) = 670
@test "Hundreds with tens: 柒佰捌拾" (cn2int 柒佰捌拾) = 780
@test "Hundreds with tens: 捌佰玖拾" (cn2int 捌佰玖拾) = 890
@test "Hundreds with tens: 玖佰壹拾" (cn2int 玖佰壹拾) = 910


@test "Hundreds with tens: 贰佰叁拾" (cn2int 贰佰叁拾) = 230
@test "Hundreds with tens: 叁佰肆拾" (cn2int 叁佰肆拾) = 340
@test "Hundreds with tens: 陆佰柒拾" (cn2int 陆佰柒拾) = 670
