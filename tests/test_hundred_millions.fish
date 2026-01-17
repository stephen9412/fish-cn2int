set -l test_dir (dirname (status filename))
source $test_dir/../functions/cn2int.fish


@test "Whole hundred millions: 一億" (cn2int 一億) = 100000000
@test "Whole hundred millions: 二億" (cn2int 二億) = 200000000
@test "Whole hundred millions: 三億" (cn2int 三億) = 300000000
@test "Whole hundred millions: 四億" (cn2int 四億) = 400000000
@test "Whole hundred millions: 五億" (cn2int 五億) = 500000000
@test "Whole hundred millions: 六億" (cn2int 六億) = 600000000
@test "Whole hundred millions: 七億" (cn2int 七億) = 700000000
@test "Whole hundred millions: 八億" (cn2int 八億) = 800000000
@test "Whole hundred millions: 九億" (cn2int 九億) = 900000000


@test "Whole hundred millions: 一亿" (cn2int 一亿) = 100000000
@test "Whole hundred millions: 二亿" (cn2int 二亿) = 200000000
@test "Whole hundred millions: 三亿" (cn2int 三亿) = 300000000
@test "Whole hundred millions: 五亿" (cn2int 五亿) = 500000000
@test "Whole hundred millions: 九亿" (cn2int 九亿) = 900000000


@test "Whole hundred millions: 壹億" (cn2int 壹億) = 100000000
@test "Whole hundred millions: 貳億" (cn2int 貳億) = 200000000
@test "Whole hundred millions: 參億" (cn2int 參億) = 300000000
@test "Whole hundred millions: 肆億" (cn2int 肆億) = 400000000
@test "Whole hundred millions: 伍億" (cn2int 伍億) = 500000000
@test "Whole hundred millions: 陸億" (cn2int 陸億) = 600000000
@test "Whole hundred millions: 柒億" (cn2int 柒億) = 700000000
@test "Whole hundred millions: 捌億" (cn2int 捌億) = 800000000
@test "Whole hundred millions: 玖億" (cn2int 玖億) = 900000000


@test "Whole hundred millions: 壹亿" (cn2int 壹亿) = 100000000
@test "Whole hundred millions: 貳亿" (cn2int 貳亿) = 200000000
@test "Whole hundred millions: 參亿" (cn2int 參亿) = 300000000


@test "Whole hundred millions: 贰億" (cn2int 贰億) = 200000000
@test "Whole hundred millions: 叁億" (cn2int 叁億) = 300000000
@test "Whole hundred millions: 陆億" (cn2int 陆億) = 600000000


@test "Whole hundred millions: 贰亿" (cn2int 贰亿) = 200000000
@test "Whole hundred millions: 叁亿" (cn2int 叁亿) = 300000000
@test "Whole hundred millions: 陆亿" (cn2int 陆亿) = 600000000
