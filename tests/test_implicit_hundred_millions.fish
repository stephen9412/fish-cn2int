set -l test_dir (dirname (status filename))
source $test_dir/../functions/cn2int.fish


@test "Implicit hundred millions: 一一一一一一一一一" (cn2int 一一一一一一一一一) = 111111111
@test "Implicit hundred millions: 二二二二二二二二二" (cn2int 二二二二二二二二二) = 222222222
@test "Implicit hundred millions: 三三三三三三三三三" (cn2int 三三三三三三三三三) = 333333333
@test "Implicit hundred millions: 五五五五五五五五五" (cn2int 五五五五五五五五五) = 555555555


@test "Implicit hundred millions: 一二三四五六七八九" (cn2int 一二三四五六七八九) = 123456789
@test "Implicit hundred millions: 二三四五六七八九一" (cn2int 二三四五六七八九一) = 234567891
@test "Implicit hundred millions: 九八七六五四三二一" (cn2int 九八七六五四三二一) = 987654321


@test "Implicit hundred millions: 壹壹壹壹壹壹壹壹壹" (cn2int 壹壹壹壹壹壹壹壹壹) = 111111111
@test "Implicit hundred millions: 貳貳貳貳貳貳貳貳貳" (cn2int 貳貳貳貳貳貳貳貳貳) = 222222222
@test "Implicit hundred millions: 參參參參參參參參參" (cn2int 參參參參參參參參參) = 333333333


@test "Implicit hundred millions: 壹貳參肆伍陸柒捌玖" (cn2int 壹貳參肆伍陸柒捌玖) = 123456789
@test "Implicit hundred millions: 貳參肆伍陸柒捌玖壹" (cn2int 貳參肆伍陸柒捌玖壹) = 234567891


@test "Implicit hundred millions: 贰贰贰贰贰贰贰贰贰" (cn2int 贰贰贰贰贰贰贰贰贰) = 222222222
@test "Implicit hundred millions: 叁叁叁叁叁叁叁叁叁" (cn2int 叁叁叁叁叁叁叁叁叁) = 333333333


@test "Implicit hundred millions: 贰叁肆伍陆柒捌玖壹" (cn2int 贰叁肆伍陆柒捌玖壹) = 234567891


@test "Implicit with zero: 一零零零零零零零一" (cn2int 一零零零零零零零一) = 100000001
@test "Implicit with zero: 二零零零零零零零二" (cn2int 二零零零零零零零二) = 200000002
@test "Implicit with zero: 一零零零零零一零零" (cn2int 一零零零零零一零零) = 100000100
@test "Implicit with zero: 一零零零零一零零零" (cn2int 一零零零零一零零零) = 100001000
@test "Implicit with zero: 一零零零一零零零零" (cn2int 一零零零一零零零零) = 100010000


@test "Implicit with 〇: 一〇〇〇〇〇〇〇一" (cn2int 一〇〇〇〇〇〇〇一) = 100000001
@test "Implicit with 〇: 二〇〇〇〇〇〇〇二" (cn2int 二〇〇〇〇〇〇〇二) = 200000002
@test "Implicit with 〇: 一〇〇〇〇一〇〇〇" (cn2int 一〇〇〇〇一〇〇〇) = 100001000
