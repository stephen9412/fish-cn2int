set -l test_dir (dirname (status filename))
source $test_dir/../functions/cn2int.fish


@test "Edge case: 一" (cn2int 一) = 1
@test "Edge case: 九十九" (cn2int 九十九) = 99
@test "Edge case: 十" (cn2int 十) = 10
@test "Edge case: 零" (cn2int 零) = 0
@test "Edge case: 〇" (cn2int 〇) = 0


@test "Edge case: 壹" (cn2int 壹) = 1
@test "Edge case: 玖拾玖" (cn2int 玖拾玖) = 99
@test "Edge case: 拾" (cn2int 拾) = 10


@test "Edge case: 贰拾叁" (cn2int 贰拾叁) = 23
@test "Edge case: 陆拾陆" (cn2int 陆拾陆) = 66
