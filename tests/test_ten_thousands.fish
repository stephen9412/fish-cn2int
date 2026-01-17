set -l test_dir (dirname (status filename))
source $test_dir/../functions/cn2int.fish


@test "Whole ten thousands: 一萬" (cn2int 一萬) = 10000
@test "Whole ten thousands: 二萬" (cn2int 二萬) = 20000
@test "Whole ten thousands: 三萬" (cn2int 三萬) = 30000
@test "Whole ten thousands: 四萬" (cn2int 四萬) = 40000
@test "Whole ten thousands: 五萬" (cn2int 五萬) = 50000
@test "Whole ten thousands: 六萬" (cn2int 六萬) = 60000
@test "Whole ten thousands: 七萬" (cn2int 七萬) = 70000
@test "Whole ten thousands: 八萬" (cn2int 八萬) = 80000
@test "Whole ten thousands: 九萬" (cn2int 九萬) = 90000


@test "Whole ten thousands: 一万" (cn2int 一万) = 10000
@test "Whole ten thousands: 二万" (cn2int 二万) = 20000
@test "Whole ten thousands: 三万" (cn2int 三万) = 30000
@test "Whole ten thousands: 五万" (cn2int 五万) = 50000
@test "Whole ten thousands: 九万" (cn2int 九万) = 90000


@test "Whole ten thousands: 壹萬" (cn2int 壹萬) = 10000
@test "Whole ten thousands: 貳萬" (cn2int 貳萬) = 20000
@test "Whole ten thousands: 參萬" (cn2int 參萬) = 30000
@test "Whole ten thousands: 肆萬" (cn2int 肆萬) = 40000
@test "Whole ten thousands: 伍萬" (cn2int 伍萬) = 50000
@test "Whole ten thousands: 陸萬" (cn2int 陸萬) = 60000
@test "Whole ten thousands: 柒萬" (cn2int 柒萬) = 70000
@test "Whole ten thousands: 捌萬" (cn2int 捌萬) = 80000
@test "Whole ten thousands: 玖萬" (cn2int 玖萬) = 90000


@test "Whole ten thousands: 壹万" (cn2int 壹万) = 10000
@test "Whole ten thousands: 貳万" (cn2int 貳万) = 20000
@test "Whole ten thousands: 參万" (cn2int 參万) = 30000


@test "Whole ten thousands: 贰萬" (cn2int 贰萬) = 20000
@test "Whole ten thousands: 叁萬" (cn2int 叁萬) = 30000
@test "Whole ten thousands: 陆萬" (cn2int 陆萬) = 60000


@test "Whole ten thousands: 贰万" (cn2int 贰万) = 20000
@test "Whole ten thousands: 叁万" (cn2int 叁万) = 30000
@test "Whole ten thousands: 陆万" (cn2int 陆万) = 60000
