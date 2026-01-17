set -l test_dir (dirname (status filename))
source $test_dir/../functions/cn2int.fish


@test "Hundred millions with ten thousands: 一億一萬" (cn2int 一億一萬) = 100010000
@test "Hundred millions with ten thousands: 一億二萬" (cn2int 一億二萬) = 100020000
@test "Hundred millions with ten thousands: 一億五萬" (cn2int 一億五萬) = 100050000
@test "Hundred millions with ten thousands: 二億三萬" (cn2int 二億三萬) = 200030000
@test "Hundred millions with ten thousands: 五億七萬" (cn2int 五億七萬) = 500070000
@test "Hundred millions with ten thousands: 九億九萬" (cn2int 九億九萬) = 900090000


@test "Hundred millions with ten thousands: 一億零一萬" (cn2int 一億零一萬) = 100010000
@test "Hundred millions with ten thousands: 二億零二萬" (cn2int 二億零二萬) = 200020000
@test "Hundred millions with ten thousands: 五億零五萬" (cn2int 五億零五萬) = 500050000


@test "Hundred millions with ten thousands: 一億〇一萬" (cn2int 一億〇一萬) = 100010000
@test "Hundred millions with ten thousands: 二億〇二萬" (cn2int 二億〇二萬) = 200020000


@test "Hundred millions with ten thousands: 一亿一万" (cn2int 一亿一万) = 100010000
@test "Hundred millions with ten thousands: 二亿二万" (cn2int 二亿二万) = 200020000


@test "Hundred millions with ten thousands: 壹億壹萬" (cn2int 壹億壹萬) = 100010000
@test "Hundred millions with ten thousands: 貳億貳萬" (cn2int 貳億貳萬) = 200020000
@test "Hundred millions with ten thousands: 玖億玖萬" (cn2int 玖億玖萬) = 900090000


@test "Hundred millions with ten thousands: 壹亿壹万" (cn2int 壹亿壹万) = 100010000
@test "Hundred millions with ten thousands: 貳亿貳万" (cn2int 貳亿貳万) = 200020000


@test "Hundred millions with ten thousands: 贰億贰萬" (cn2int 贰億贰萬) = 200020000
@test "Hundred millions with ten thousands: 叁億叁萬" (cn2int 叁億叁萬) = 300030000


@test "Hundred millions with ten thousands: 贰亿贰万" (cn2int 贰亿贰万) = 200020000
@test "Hundred millions with ten thousands: 叁亿叁万" (cn2int 叁亿叁万) = 300030000
