set -l test_dir (dirname (status filename))
source $test_dir/../functions/cn2int.fish


@test "Zero as single digit: 零" (cn2int 零) = 0
@test "Zero as single digit: 〇" (cn2int 〇) = 0


@test "Zero in tens position: 一十零" (cn2int 一十零) = 10
@test "Zero in tens position: 二十零" (cn2int 二十零) = 20
@test "Zero in tens position: 三十零" (cn2int 三十零) = 30
@test "Zero in tens position: 五十零" (cn2int 五十零) = 50
@test "Zero in tens position: 九十零" (cn2int 九十零) = 90


@test "Zero in tens position: 一十〇" (cn2int 一十〇) = 10
@test "Zero in tens position: 二十〇" (cn2int 二十〇) = 20
@test "Zero in tens position: 三十〇" (cn2int 三十〇) = 30
@test "Zero in tens position: 五十〇" (cn2int 五十〇) = 50
@test "Zero in tens position: 九十〇" (cn2int 九十〇) = 90


@test "Zero in tens position: 壹拾零" (cn2int 壹拾零) = 10
@test "Zero in tens position: 貳拾零" (cn2int 貳拾零) = 20
@test "Zero in tens position: 參拾零" (cn2int 參拾零) = 30
@test "Zero in tens position: 伍拾零" (cn2int 伍拾零) = 50
@test "Zero in tens position: 玖拾零" (cn2int 玖拾零) = 90


@test "Zero in tens position: 壹拾〇" (cn2int 壹拾〇) = 10
@test "Zero in tens position: 貳拾〇" (cn2int 貳拾〇) = 20
@test "Zero in tens position: 參拾〇" (cn2int 參拾〇) = 30
@test "Zero in tens position: 伍拾〇" (cn2int 伍拾〇) = 50
@test "Zero in tens position: 玖拾〇" (cn2int 玖拾〇) = 90


@test "Zero in tens position: 贰拾零" (cn2int 贰拾零) = 20
@test "Zero in tens position: 叁拾零" (cn2int 叁拾零) = 30
@test "Zero in tens position: 陆拾零" (cn2int 陆拾零) = 60


@test "Zero in tens position: 贰拾〇" (cn2int 贰拾〇) = 20
@test "Zero in tens position: 叁拾〇" (cn2int 叁拾〇) = 30
@test "Zero in tens position: 陆拾〇" (cn2int 陆拾〇) = 60
