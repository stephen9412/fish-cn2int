set -l test_dir (dirname (status filename))
source $test_dir/../functions/cn2int.fish


@test "Ten thousands with thousands: 一萬一千" (cn2int 一萬一千) = 11000
@test "Ten thousands with thousands: 一萬二千" (cn2int 一萬二千) = 12000
@test "Ten thousands with thousands: 一萬三千" (cn2int 一萬三千) = 13000
@test "Ten thousands with thousands: 二萬五千" (cn2int 二萬五千) = 25000
@test "Ten thousands with thousands: 三萬六千" (cn2int 三萬六千) = 36000
@test "Ten thousands with thousands: 五萬七千" (cn2int 五萬七千) = 57000
@test "Ten thousands with thousands: 九萬九千" (cn2int 九萬九千) = 99000


@test "Ten thousands with thousands: 一万一千" (cn2int 一万一千) = 11000
@test "Ten thousands with thousands: 二万五千" (cn2int 二万五千) = 25000
@test "Ten thousands with thousands: 九万九千" (cn2int 九万九千) = 99000


@test "Ten thousands with thousands: 壹萬壹仟" (cn2int 壹萬壹仟) = 11000
@test "Ten thousands with thousands: 貳萬伍仟" (cn2int 貳萬伍仟) = 25000
@test "Ten thousands with thousands: 玖萬玖仟" (cn2int 玖萬玖仟) = 99000


@test "Ten thousands with thousands: 壹万壹仟" (cn2int 壹万壹仟) = 11000
@test "Ten thousands with thousands: 貳万伍仟" (cn2int 貳万伍仟) = 25000


@test "Ten thousands with thousands: 贰萬伍仟" (cn2int 贰萬伍仟) = 25000
@test "Ten thousands with thousands: 叁萬陆仟" (cn2int 叁萬陆仟) = 36000


@test "Ten thousands with thousands: 贰万伍仟" (cn2int 贰万伍仟) = 25000
@test "Ten thousands with thousands: 叁万陆仟" (cn2int 叁万陆仟) = 36000
