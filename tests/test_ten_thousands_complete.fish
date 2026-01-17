set -l test_dir (dirname (status filename))
source $test_dir/../functions/cn2int.fish


@test "Complete ten thousands: 一萬一千一百一十一" (cn2int 一萬一千一百一十一) = 11111
@test "Complete ten thousands: 二萬二千二百二十二" (cn2int 二萬二千二百二十二) = 22222
@test "Complete ten thousands: 三萬三千三百三十三" (cn2int 三萬三千三百三十三) = 33333
@test "Complete ten thousands: 五萬五千五百五十五" (cn2int 五萬五千五百五十五) = 55555
@test "Complete ten thousands: 九萬九千九百九十九" (cn2int 九萬九千九百九十九) = 99999


@test "Complete ten thousands: 一萬二千三百四十五" (cn2int 一萬二千三百四十五) = 12345
@test "Complete ten thousands: 二萬三千四百五十六" (cn2int 二萬三千四百五十六) = 23456
@test "Complete ten thousands: 五萬六千七百八十九" (cn2int 五萬六千七百八十九) = 56789


@test "Complete ten thousands: 一万一千一百一十一" (cn2int 一万一千一百一十一) = 11111
@test "Complete ten thousands: 二万二千二百二十二" (cn2int 二万二千二百二十二) = 22222
@test "Complete ten thousands: 五万五千五百五十五" (cn2int 五万五千五百五十五) = 55555


@test "Complete ten thousands: 壹萬壹仟壹佰壹拾壹" (cn2int 壹萬壹仟壹佰壹拾壹) = 11111
@test "Complete ten thousands: 貳萬貳仟貳佰貳拾貳" (cn2int 貳萬貳仟貳佰貳拾貳) = 22222
@test "Complete ten thousands: 參萬參仟參佰參拾參" (cn2int 參萬參仟參佰參拾參) = 33333
@test "Complete ten thousands: 玖萬玖仟玖佰玖拾玖" (cn2int 玖萬玖仟玖佰玖拾玖) = 99999


@test "Complete ten thousands: 壹萬貳仟參佰肆拾伍" (cn2int 壹萬貳仟參佰肆拾伍) = 12345
@test "Complete ten thousands: 貳萬參仟肆佰伍拾陸" (cn2int 貳萬參仟肆佰伍拾陸) = 23456


@test "Complete ten thousands: 壹万壹仟壹佰壹拾壹" (cn2int 壹万壹仟壹佰壹拾壹) = 11111
@test "Complete ten thousands: 貳万貳仟貳佰貳拾貳" (cn2int 貳万貳仟貳佰貳拾貳) = 22222


@test "Complete ten thousands: 贰萬贰仟贰佰贰拾贰" (cn2int 贰萬贰仟贰佰贰拾贰) = 22222
@test "Complete ten thousands: 叁萬叁仟叁佰叁拾叁" (cn2int 叁萬叁仟叁佰叁拾叁) = 33333
@test "Complete ten thousands: 陆萬陆仟陆佰陆拾陆" (cn2int 陆萬陆仟陆佰陆拾陆) = 66666


@test "Complete ten thousands: 贰万贰仟贰佰贰拾贰" (cn2int 贰万贰仟贰佰贰拾贰) = 22222
@test "Complete ten thousands: 叁万叁仟叁佰叁拾叁" (cn2int 叁万叁仟叁佰叁拾叁) = 33333
@test "Complete ten thousands: 陆万陆仟陆佰陆拾陆" (cn2int 陆万陆仟陆佰陆拾陆) = 66666
