set -l test_dir (dirname (status filename))
source $test_dir/../functions/cn2int.fish


@test "Implicit thousands: 一一一一" (cn2int 一一一一) = 1111
@test "Implicit thousands: 二二二二" (cn2int 二二二二) = 2222
@test "Implicit thousands: 三三三三" (cn2int 三三三三) = 3333
@test "Implicit thousands: 四四四四" (cn2int 四四四四) = 4444
@test "Implicit thousands: 五五五五" (cn2int 五五五五) = 5555
@test "Implicit thousands: 六六六六" (cn2int 六六六六) = 6666
@test "Implicit thousands: 七七七七" (cn2int 七七七七) = 7777
@test "Implicit thousands: 八八八八" (cn2int 八八八八) = 8888
@test "Implicit thousands: 九九九九" (cn2int 九九九九) = 9999


@test "Implicit thousands: 一二三四" (cn2int 一二三四) = 1234
@test "Implicit thousands: 二三四五" (cn2int 二三四五) = 2345
@test "Implicit thousands: 三四五六" (cn2int 三四五六) = 3456
@test "Implicit thousands: 四五六七" (cn2int 四五六七) = 4567
@test "Implicit thousands: 五六七八" (cn2int 五六七八) = 5678
@test "Implicit thousands: 六七八九" (cn2int 六七八九) = 6789
@test "Implicit thousands: 七八九一" (cn2int 七八九一) = 7891


@test "Implicit thousands: 壹壹壹壹" (cn2int 壹壹壹壹) = 1111
@test "Implicit thousands: 貳貳貳貳" (cn2int 貳貳貳貳) = 2222
@test "Implicit thousands: 參參參參" (cn2int 參參參參) = 3333
@test "Implicit thousands: 肆肆肆肆" (cn2int 肆肆肆肆) = 4444
@test "Implicit thousands: 伍伍伍伍" (cn2int 伍伍伍伍) = 5555
@test "Implicit thousands: 陸陸陸陸" (cn2int 陸陸陸陸) = 6666
@test "Implicit thousands: 柒柒柒柒" (cn2int 柒柒柒柒) = 7777
@test "Implicit thousands: 捌捌捌捌" (cn2int 捌捌捌捌) = 8888
@test "Implicit thousands: 玖玖玖玖" (cn2int 玖玖玖玖) = 9999


@test "Implicit thousands: 壹貳參肆" (cn2int 壹貳參肆) = 1234
@test "Implicit thousands: 貳參肆伍" (cn2int 貳參肆伍) = 2345
@test "Implicit thousands: 參肆伍陸" (cn2int 參肆伍陸) = 3456
@test "Implicit thousands: 肆伍陸柒" (cn2int 肆伍陸柒) = 4567
@test "Implicit thousands: 伍陸柒捌" (cn2int 伍陸柒捌) = 5678
@test "Implicit thousands: 陸柒捌玖" (cn2int 陸柒捌玖) = 6789


@test "Implicit thousands: 贰贰贰贰" (cn2int 贰贰贰贰) = 2222
@test "Implicit thousands: 叁叁叁叁" (cn2int 叁叁叁叁) = 3333
@test "Implicit thousands: 陆陆陆陆" (cn2int 陆陆陆陆) = 6666


@test "Implicit thousands: 贰叁肆伍" (cn2int 贰叁肆伍) = 2345
@test "Implicit thousands: 叁肆伍陆" (cn2int 叁肆伍陆) = 3456
@test "Implicit thousands: 陆柒捌玖" (cn2int 陆柒捌玖) = 6789


@test "Implicit thousands with zero: 一零零一" (cn2int 一零零一) = 1001
@test "Implicit thousands with zero: 二零零二" (cn2int 二零零二) = 2002
@test "Implicit thousands with zero: 三零零三" (cn2int 三零零三) = 3003


@test "Implicit thousands with zero: 一零一零" (cn2int 一零一零) = 1010
@test "Implicit thousands with zero: 二零二零" (cn2int 二零二零) = 2020
@test "Implicit thousands with zero: 三零三零" (cn2int 三零三零) = 3030


@test "Implicit thousands with zero: 一零一一" (cn2int 一零一一) = 1011
@test "Implicit thousands with zero: 二零二二" (cn2int 二零二二) = 2022
@test "Implicit thousands with zero: 三零三三" (cn2int 三零三三) = 3033


@test "Implicit thousands with 〇: 一〇〇一" (cn2int 一〇〇一) = 1001
@test "Implicit thousands with 〇: 二〇〇二" (cn2int 二〇〇二) = 2002


@test "Implicit thousands with 〇: 一〇一〇" (cn2int 一〇一〇) = 1010
@test "Implicit thousands with 〇: 二〇二〇" (cn2int 二〇二〇) = 2020


@test "Implicit thousands with 〇: 一〇一一" (cn2int 一〇一一) = 1011
@test "Implicit thousands with 〇: 二〇二二" (cn2int 二〇二二) = 2022
