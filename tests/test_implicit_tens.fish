set -l test_dir (dirname (status filename))
source $test_dir/../functions/cn2int.fish


@test "Implicit tens: 六七" (cn2int 六七) = 67
@test "Implicit tens: 八二" (cn2int 八二) = 82
@test "Implicit tens: 五三" (cn2int 五三) = 53
@test "Implicit tens: 三二" (cn2int 三二) = 32
@test "Implicit tens: 一五" (cn2int 一五) = 15
@test "Implicit tens: 二一" (cn2int 二一) = 21
@test "Implicit tens: 四七" (cn2int 四七) = 47
@test "Implicit tens: 九九" (cn2int 九九) = 99
@test "Implicit tens: 七八" (cn2int 七八) = 78
@test "Implicit tens: 五五" (cn2int 五五) = 55
@test "Implicit tens: 二三" (cn2int 二三) = 23
@test "Implicit tens: 三五" (cn2int 三五) = 35
@test "Implicit tens: 一一" (cn2int 一一) = 11
@test "Implicit tens: 八八" (cn2int 八八) = 88
@test "Implicit tens: 六六" (cn2int 六六) = 66


@test "Implicit tens: 陸柒" (cn2int 陸柒) = 67
@test "Implicit tens: 捌貳" (cn2int 捌貳) = 82
@test "Implicit tens: 伍參" (cn2int 伍參) = 53
@test "Implicit tens: 參貳" (cn2int 參貳) = 32
@test "Implicit tens: 壹伍" (cn2int 壹伍) = 15
@test "Implicit tens: 貳壹" (cn2int 貳壹) = 21
@test "Implicit tens: 肆柒" (cn2int 肆柒) = 47
@test "Implicit tens: 玖玖" (cn2int 玖玖) = 99
@test "Implicit tens: 柒捌" (cn2int 柒捌) = 78
@test "Implicit tens: 伍伍" (cn2int 伍伍) = 55
@test "Implicit tens: 貳參" (cn2int 貳參) = 23
@test "Implicit tens: 參伍" (cn2int 參伍) = 35
@test "Implicit tens: 壹壹" (cn2int 壹壹) = 11
@test "Implicit tens: 捌捌" (cn2int 捌捌) = 88
@test "Implicit tens: 陸陸" (cn2int 陸陸) = 66


@test "Implicit tens: 陆柒" (cn2int 陆柒) = 67
@test "Implicit tens: 捌贰" (cn2int 捌贰) = 82
@test "Implicit tens: 伍叁" (cn2int 伍叁) = 53
@test "Implicit tens: 叁贰" (cn2int 叁贰) = 32
@test "Implicit tens: 贰叁" (cn2int 贰叁) = 23
@test "Implicit tens: 叁伍" (cn2int 叁伍) = 35
@test "Implicit tens: 陆陆" (cn2int 陆陆) = 66


@test "Implicit tens with 兩: 兩三" (cn2int 兩三) = 23
@test "Implicit tens with 兩: 兩五" (cn2int 兩五) = 25
@test "Implicit tens with 兩: 三兩" (cn2int 三兩) = 32
@test "Implicit tens with 兩: 兩兩" (cn2int 兩兩) = 22


@test "Implicit tens with 两: 两三" (cn2int 两三) = 23
@test "Implicit tens with 两: 两五" (cn2int 两五) = 25
@test "Implicit tens with 两: 三两" (cn2int 三两) = 32
@test "Implicit tens with 两: 两两" (cn2int 两两) = 22


@test "Implicit tens with zero: 一零" (cn2int 一零) = 10
@test "Implicit tens with zero: 二零" (cn2int 二零) = 20
@test "Implicit tens with zero: 三零" (cn2int 三零) = 30
@test "Implicit tens with zero: 五零" (cn2int 五零) = 50
@test "Implicit tens with zero: 九零" (cn2int 九零) = 90


@test "Implicit tens with 〇: 一〇" (cn2int 一〇) = 10
@test "Implicit tens with 〇: 二〇" (cn2int 二〇) = 20
@test "Implicit tens with 〇: 三〇" (cn2int 三〇) = 30
@test "Implicit tens with 〇: 五〇" (cn2int 五〇) = 50
@test "Implicit tens with 〇: 九〇" (cn2int 九〇) = 90


@test "Implicit tens with zero: 壹零" (cn2int 壹零) = 10
@test "Implicit tens with zero: 貳零" (cn2int 貳零) = 20
@test "Implicit tens with zero: 參零" (cn2int 參零) = 30
@test "Implicit tens with zero: 伍零" (cn2int 伍零) = 50
@test "Implicit tens with zero: 玖零" (cn2int 玖零) = 90


@test "Implicit tens with 〇: 壹〇" (cn2int 壹〇) = 10
@test "Implicit tens with 〇: 貳〇" (cn2int 貳〇) = 20
@test "Implicit tens with 〇: 參〇" (cn2int 參〇) = 30
@test "Implicit tens with 〇: 伍〇" (cn2int 伍〇) = 50
@test "Implicit tens with 〇: 玖〇" (cn2int 玖〇) = 90


@test "Implicit tens with zero: 贰零" (cn2int 贰零) = 20
@test "Implicit tens with zero: 叁零" (cn2int 叁零) = 30
@test "Implicit tens with zero: 陆零" (cn2int 陆零) = 60


@test "Implicit tens with 〇: 贰〇" (cn2int 贰〇) = 20
@test "Implicit tens with 〇: 叁〇" (cn2int 叁〇) = 30
@test "Implicit tens with 〇: 陆〇" (cn2int 陆〇) = 60
