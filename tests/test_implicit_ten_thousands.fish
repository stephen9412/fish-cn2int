set -l test_dir (dirname (status filename))
source $test_dir/../functions/cn2int.fish


@test "Implicit ten thousands: 一一一一一" (cn2int 一一一一一) = 11111
@test "Implicit ten thousands: 二二二二二" (cn2int 二二二二二) = 22222
@test "Implicit ten thousands: 三三三三三" (cn2int 三三三三三) = 33333
@test "Implicit ten thousands: 五五五五五" (cn2int 五五五五五) = 55555
@test "Implicit ten thousands: 九九九九九" (cn2int 九九九九九) = 99999


@test "Implicit ten thousands: 一二三四五" (cn2int 一二三四五) = 12345
@test "Implicit ten thousands: 二三四五六" (cn2int 二三四五六) = 23456
@test "Implicit ten thousands: 五六七八九" (cn2int 五六七八九) = 56789


@test "Implicit ten thousands: 壹壹壹壹壹" (cn2int 壹壹壹壹壹) = 11111
@test "Implicit ten thousands: 貳貳貳貳貳" (cn2int 貳貳貳貳貳) = 22222
@test "Implicit ten thousands: 參參參參參" (cn2int 參參參參參) = 33333
@test "Implicit ten thousands: 玖玖玖玖玖" (cn2int 玖玖玖玖玖) = 99999


@test "Implicit ten thousands: 壹貳參肆伍" (cn2int 壹貳參肆伍) = 12345
@test "Implicit ten thousands: 貳參肆伍陸" (cn2int 貳參肆伍陸) = 23456
@test "Implicit ten thousands: 伍陸柒捌玖" (cn2int 伍陸柒捌玖) = 56789


@test "Implicit ten thousands: 贰贰贰贰贰" (cn2int 贰贰贰贰贰) = 22222
@test "Implicit ten thousands: 叁叁叁叁叁" (cn2int 叁叁叁叁叁) = 33333
@test "Implicit ten thousands: 陆陆陆陆陆" (cn2int 陆陆陆陆陆) = 66666


@test "Implicit ten thousands: 贰叁肆伍陆" (cn2int 贰叁肆伍陆) = 23456
@test "Implicit ten thousands: 叁肆伍陆柒" (cn2int 叁肆伍陆柒) = 34567


@test "Implicit ten thousands with zero: 一零零零一" (cn2int 一零零零一) = 10001
@test "Implicit ten thousands with zero: 二零零零二" (cn2int 二零零零二) = 20002
@test "Implicit ten thousands with zero: 一零零一零" (cn2int 一零零一零) = 10010
@test "Implicit ten thousands with zero: 一零零一一" (cn2int 一零零一一) = 10011
@test "Implicit ten thousands with zero: 一零一零零" (cn2int 一零一零零) = 10100
@test "Implicit ten thousands with zero: 一零一零一" (cn2int 一零一零一) = 10101
@test "Implicit ten thousands with zero: 一零一一零" (cn2int 一零一一零) = 10110


@test "Implicit ten thousands with 〇: 一〇〇〇一" (cn2int 一〇〇〇一) = 10001
@test "Implicit ten thousands with 〇: 二〇〇〇二" (cn2int 二〇〇〇二) = 20002
@test "Implicit ten thousands with 〇: 一〇〇一〇" (cn2int 一〇〇一〇) = 10010
@test "Implicit ten thousands with 〇: 一〇〇一一" (cn2int 一〇〇一一) = 10011
