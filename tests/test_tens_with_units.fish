set -l test_dir (dirname (status filename))
source $test_dir/../functions/cn2int.fish


@test "Tens with units: 十一" (cn2int 十一) = 11
@test "Tens with units: 十二" (cn2int 十二) = 12
@test "Tens with units: 十五" (cn2int 十五) = 15
@test "Tens with units: 十九" (cn2int 十九) = 19
@test "Tens with units: 二十一" (cn2int 二十一) = 21
@test "Tens with units: 二十三" (cn2int 二十三) = 23
@test "Tens with units: 三十五" (cn2int 三十五) = 35
@test "Tens with units: 四十七" (cn2int 四十七) = 47
@test "Tens with units: 五十九" (cn2int 五十九) = 59
@test "Tens with units: 六十六" (cn2int 六十六) = 66
@test "Tens with units: 七十八" (cn2int 七十八) = 78
@test "Tens with units: 八十八" (cn2int 八十八) = 88
@test "Tens with units: 九十九" (cn2int 九十九) = 99


@test "Tens with units: 拾壹" (cn2int 拾壹) = 11
@test "Tens with units: 拾伍" (cn2int 拾伍) = 15
@test "Tens with units: 貳拾參" (cn2int 貳拾參) = 23
@test "Tens with units: 參拾伍" (cn2int 參拾伍) = 35
@test "Tens with units: 肆拾柒" (cn2int 肆拾柒) = 47
@test "Tens with units: 伍拾玖" (cn2int 伍拾玖) = 59
@test "Tens with units: 陸拾陸" (cn2int 陸拾陸) = 66
@test "Tens with units: 柒拾捌" (cn2int 柒拾捌) = 78
@test "Tens with units: 捌拾捌" (cn2int 捌拾捌) = 88
@test "Tens with units: 玖拾玖" (cn2int 玖拾玖) = 99


@test "Tens with units: 贰拾叁" (cn2int 贰拾叁) = 23
@test "Tens with units: 叁拾伍" (cn2int 叁拾伍) = 35
@test "Tens with units: 陆拾陆" (cn2int 陆拾陆) = 66


@test "Tens with units: 壹十五" (cn2int 壹十五) = 15
@test "Tens with units: 貳十參" (cn2int 貳十參) = 23
@test "Tens with units: 二拾三" (cn2int 二拾三) = 23
@test "Tens with units: 五拾伍" (cn2int 五拾伍) = 55
@test "Tens with units: 贰十叁" (cn2int 贰十叁) = 23
