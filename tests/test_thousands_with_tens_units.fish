set -l test_dir (dirname (status filename))
source $test_dir/../functions/cn2int.fish


@test "Thousands with tens and units: 一千零一十一" (cn2int 一千零一十一) = 1011
@test "Thousands with tens and units: 一千零一十二" (cn2int 一千零一十二) = 1012
@test "Thousands with tens and units: 一千零二十三" (cn2int 一千零二十三) = 1023
@test "Thousands with tens and units: 二千零三十四" (cn2int 二千零三十四) = 2034
@test "Thousands with tens and units: 三千零五十六" (cn2int 三千零五十六) = 3056
@test "Thousands with tens and units: 五千零七十八" (cn2int 五千零七十八) = 5078
@test "Thousands with tens and units: 九千零九十九" (cn2int 九千零九十九) = 9099


@test "Thousands with tens and units: 一千〇一十一" (cn2int 一千〇一十一) = 1011
@test "Thousands with tens and units: 二千〇二十三" (cn2int 二千〇二十三) = 2023


@test "Thousands with tens and units: 壹仟零壹拾壹" (cn2int 壹仟零壹拾壹) = 1011
@test "Thousands with tens and units: 壹仟零壹拾貳" (cn2int 壹仟零壹拾貳) = 1012
@test "Thousands with tens and units: 壹仟零貳拾參" (cn2int 壹仟零貳拾參) = 1023
@test "Thousands with tens and units: 貳仟零參拾肆" (cn2int 貳仟零參拾肆) = 2034
@test "Thousands with tens and units: 玖仟零玖拾玖" (cn2int 玖仟零玖拾玖) = 9099


@test "Thousands with tens and units: 壹仟〇壹拾壹" (cn2int 壹仟〇壹拾壹) = 1011
@test "Thousands with tens and units: 貳仟〇貳拾參" (cn2int 貳仟〇貳拾參) = 2023


@test "Thousands with tens and units: 贰仟零叁拾肆" (cn2int 贰仟零叁拾肆) = 2034
@test "Thousands with tens and units: 叁仟零伍拾陆" (cn2int 叁仟零伍拾陆) = 3056
@test "Thousands with tens and units: 陆仟零柒拾捌" (cn2int 陆仟零柒拾捌) = 6078
