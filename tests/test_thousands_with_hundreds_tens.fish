set -l test_dir (dirname (status filename))
source $test_dir/../functions/cn2int.fish


@test "Thousands with hundreds and tens: 一千一百一十" (cn2int 一千一百一十) = 1110
@test "Thousands with hundreds and tens: 一千二百二十" (cn2int 一千二百二十) = 1220
@test "Thousands with hundreds and tens: 二千三百四十" (cn2int 二千三百四十) = 2340
@test "Thousands with hundreds and tens: 三千五百六十" (cn2int 三千五百六十) = 3560
@test "Thousands with hundreds and tens: 五千七百八十" (cn2int 五千七百八十) = 5780
@test "Thousands with hundreds and tens: 九千九百九十" (cn2int 九千九百九十) = 9990


@test "Thousands with hundreds and tens: 壹仟壹佰壹拾" (cn2int 壹仟壹佰壹拾) = 1110
@test "Thousands with hundreds and tens: 壹仟貳佰貳拾" (cn2int 壹仟貳佰貳拾) = 1220
@test "Thousands with hundreds and tens: 貳仟參佰肆拾" (cn2int 貳仟參佰肆拾) = 2340
@test "Thousands with hundreds and tens: 參仟伍佰陸拾" (cn2int 參仟伍佰陸拾) = 3560
@test "Thousands with hundreds and tens: 玖仟玖佰玖拾" (cn2int 玖仟玖佰玖拾) = 9990


@test "Thousands with hundreds and tens: 贰仟叁佰肆拾" (cn2int 贰仟叁佰肆拾) = 2340
@test "Thousands with hundreds and tens: 叁仟伍佰陆拾" (cn2int 叁仟伍佰陆拾) = 3560
@test "Thousands with hundreds and tens: 陆仟柒佰捌拾" (cn2int 陆仟柒佰捌拾) = 6780
