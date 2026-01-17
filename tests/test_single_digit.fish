set -l test_dir (dirname (status filename))
source $test_dir/../functions/cn2int.fish


@test "Single digit: 一" (cn2int 一) = 1
@test "Single digit: 二" (cn2int 二) = 2
@test "Single digit: 三" (cn2int 三) = 3
@test "Single digit: 四" (cn2int 四) = 4
@test "Single digit: 五" (cn2int 五) = 5
@test "Single digit: 六" (cn2int 六) = 6
@test "Single digit: 七" (cn2int 七) = 7
@test "Single digit: 八" (cn2int 八) = 8
@test "Single digit: 九" (cn2int 九) = 9


@test "Single digit: 壹" (cn2int 壹) = 1
@test "Single digit: 貳" (cn2int 貳) = 2
@test "Single digit: 參" (cn2int 參) = 3
@test "Single digit: 肆" (cn2int 肆) = 4
@test "Single digit: 伍" (cn2int 伍) = 5
@test "Single digit: 陸" (cn2int 陸) = 6
@test "Single digit: 柒" (cn2int 柒) = 7
@test "Single digit: 捌" (cn2int 捌) = 8
@test "Single digit: 玖" (cn2int 玖) = 9


@test "Single digit: 贰" (cn2int 贰) = 2
@test "Single digit: 叁" (cn2int 叁) = 3
@test "Single digit: 陆" (cn2int 陆) = 6
