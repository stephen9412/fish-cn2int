set -l test_dir (dirname (status filename))
source $test_dir/../functions/cn2int.fish


@test "Thousands with hundreds and units: 一千一百零一" (cn2int 一千一百零一) = 1101
@test "Thousands with hundreds and units: 一千二百零二" (cn2int 一千二百零二) = 1202
@test "Thousands with hundreds and units: 二千三百零四" (cn2int 二千三百零四) = 2304
@test "Thousands with hundreds and units: 三千五百零六" (cn2int 三千五百零六) = 3506
@test "Thousands with hundreds and units: 五千七百零八" (cn2int 五千七百零八) = 5708
@test "Thousands with hundreds and units: 九千九百零九" (cn2int 九千九百零九) = 9909


@test "Thousands with hundreds and units: 一千一百〇一" (cn2int 一千一百〇一) = 1101
@test "Thousands with hundreds and units: 二千二百〇二" (cn2int 二千二百〇二) = 2202


@test "Thousands with hundreds and units: 壹仟壹佰零壹" (cn2int 壹仟壹佰零壹) = 1101
@test "Thousands with hundreds and units: 壹仟貳佰零貳" (cn2int 壹仟貳佰零貳) = 1202
@test "Thousands with hundreds and units: 貳仟參佰零肆" (cn2int 貳仟參佰零肆) = 2304
@test "Thousands with hundreds and units: 參仟伍佰零陸" (cn2int 參仟伍佰零陸) = 3506
@test "Thousands with hundreds and units: 玖仟玖佰零玖" (cn2int 玖仟玖佰零玖) = 9909


@test "Thousands with hundreds and units: 壹仟壹佰〇壹" (cn2int 壹仟壹佰〇壹) = 1101
@test "Thousands with hundreds and units: 貳仟貳佰〇貳" (cn2int 貳仟貳佰〇貳) = 2202


@test "Thousands with hundreds and units: 贰仟叁佰零肆" (cn2int 贰仟叁佰零肆) = 2304
@test "Thousands with hundreds and units: 叁仟伍佰零陆" (cn2int 叁仟伍佰零陆) = 3506
@test "Thousands with hundreds and units: 陆仟柒佰零捌" (cn2int 陆仟柒佰零捌) = 6708
