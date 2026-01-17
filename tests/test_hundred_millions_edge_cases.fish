set -l test_dir (dirname (status filename))
source $test_dir/../functions/cn2int.fish


@test "Edge case: 一億一" (cn2int 一億一) = 100000001
@test "Edge case: 二億二" (cn2int 二億二) = 200000002
@test "Edge case: 五億五" (cn2int 五億五) = 500000005
@test "Edge case: 九億九" (cn2int 九億九) = 900000009


@test "Edge case: 一億一十" (cn2int 一億一十) = 100000010
@test "Edge case: 二億二十" (cn2int 二億二十) = 200000020
@test "Edge case: 五億五十" (cn2int 五億五十) = 500000050


@test "Edge case: 一億一十一" (cn2int 一億一十一) = 100000011
@test "Edge case: 二億二十二" (cn2int 二億二十二) = 200000022


@test "Edge case: 一億一百" (cn2int 一億一百) = 100000100
@test "Edge case: 二億二百" (cn2int 二億二百) = 200000200
@test "Edge case: 五億五百" (cn2int 五億五百) = 500000500


@test "Edge case: 一億一百一" (cn2int 一億一百一) = 100000101
@test "Edge case: 二億二百二" (cn2int 二億二百二) = 200000202


@test "Edge case: 一億一百一十" (cn2int 一億一百一十) = 100000110
@test "Edge case: 二億二百二十" (cn2int 二億二百二十) = 200000220


@test "Edge case: 一億一百一十一" (cn2int 一億一百一十一) = 100000111


@test "Edge case: 一億一千" (cn2int 一億一千) = 100001000
@test "Edge case: 二億二千" (cn2int 二億二千) = 200002000


@test "Edge case: 一億一千一" (cn2int 一億一千一) = 100001001
@test "Edge case: 二億二千二" (cn2int 二億二千二) = 200002002


@test "Edge case: 一億一千一十" (cn2int 一億一千一十) = 100001010
@test "Edge case: 二億二千二十" (cn2int 二億二千二十) = 200002020


@test "Edge case: 一億一千一百" (cn2int 一億一千一百) = 100001100
@test "Edge case: 二億二千二百" (cn2int 二億二千二百) = 200002200


@test "Edge case: 一億一千一百一十一" (cn2int 一億一千一百一十一) = 100001111


@test "Edge case: 一億一萬" (cn2int 一億一萬) = 100010000
@test "Edge case: 二億二萬" (cn2int 二億二萬) = 200020000


@test "Edge case: 一億一萬一" (cn2int 一億一萬一) = 100010001
@test "Edge case: 二億二萬二" (cn2int 二億二萬二) = 200020002


@test "Edge case: 一億一萬一千" (cn2int 一億一萬一千) = 100011000
@test "Edge case: 二億二萬二千" (cn2int 二億二萬二千) = 200022000


@test "Edge case: 一億一萬一千一百一十一" (cn2int 一億一萬一千一百一十一) = 100011111


@test "Edge case: 一億零一萬零一" (cn2int 一億零一萬零一) = 100010001
@test "Edge case: 二億零二萬零二" (cn2int 二億零二萬零二) = 200020002


@test "Edge case: 一億零一千零一" (cn2int 一億零一千零一) = 100001001
@test "Edge case: 二億零二千零二" (cn2int 二億零二千零二) = 200002002


@test "Edge case: 一亿一" (cn2int 一亿一) = 100000001
@test "Edge case: 二亿二" (cn2int 二亿二) = 200000002
@test "Edge case: 一亿一十" (cn2int 一亿一十) = 100000010
@test "Edge case: 一亿一百" (cn2int 一亿一百) = 100000100
@test "Edge case: 一亿一千" (cn2int 一亿一千) = 100001000
@test "Edge case: 一亿一万" (cn2int 一亿一万) = 100010000


@test "Edge case: 壹億壹" (cn2int 壹億壹) = 100000001
@test "Edge case: 貳億貳" (cn2int 貳億貳) = 200000002
@test "Edge case: 壹億壹拾" (cn2int 壹億壹拾) = 100000010
@test "Edge case: 壹億壹佰" (cn2int 壹億壹佰) = 100000100
@test "Edge case: 壹億壹仟" (cn2int 壹億壹仟) = 100001000
@test "Edge case: 壹億壹萬" (cn2int 壹億壹萬) = 100010000


@test "Edge case: 壹亿壹" (cn2int 壹亿壹) = 100000001
@test "Edge case: 貳亿貳" (cn2int 貳亿貳) = 200000002


@test "Edge case: 贰億贰" (cn2int 贰億贰) = 200000002
@test "Edge case: 叁億叁" (cn2int 叁億叁) = 300000003
@test "Edge case: 贰億贰拾" (cn2int 贰億贰拾) = 200000020
@test "Edge case: 贰億贰佰" (cn2int 贰億贰佰) = 200000200
@test "Edge case: 贰億贰仟" (cn2int 贰億贰仟) = 200002000
@test "Edge case: 贰億贰萬" (cn2int 贰億贰萬) = 200020000


@test "Edge case: 贰亿贰" (cn2int 贰亿贰) = 200000002
@test "Edge case: 叁亿叁" (cn2int 叁亿叁) = 300000003
