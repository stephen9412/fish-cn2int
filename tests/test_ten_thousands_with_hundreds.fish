set -l test_dir (dirname (status filename))
source $test_dir/../functions/cn2int.fish


@test "Ten thousands with hundreds: 一萬零一百" (cn2int 一萬零一百) = 10100
@test "Ten thousands with hundreds: 一萬零二百" (cn2int 一萬零二百) = 10200
@test "Ten thousands with hundreds: 二萬零五百" (cn2int 二萬零五百) = 20500
@test "Ten thousands with hundreds: 五萬零七百" (cn2int 五萬零七百) = 50700
@test "Ten thousands with hundreds: 九萬零九百" (cn2int 九萬零九百) = 90900


@test "Ten thousands with hundreds: 一萬〇一百" (cn2int 一萬〇一百) = 10100
@test "Ten thousands with hundreds: 二萬〇二百" (cn2int 二萬〇二百) = 20200


@test "Ten thousands with hundreds: 一万零一百" (cn2int 一万零一百) = 10100
@test "Ten thousands with hundreds: 二万零五百" (cn2int 二万零五百) = 20500


@test "Ten thousands with hundreds: 壹萬零壹佰" (cn2int 壹萬零壹佰) = 10100
@test "Ten thousands with hundreds: 貳萬零伍佰" (cn2int 貳萬零伍佰) = 20500
@test "Ten thousands with hundreds: 玖萬零玖佰" (cn2int 玖萬零玖佰) = 90900


@test "Ten thousands with hundreds: 壹万零壹佰" (cn2int 壹万零壹佰) = 10100
@test "Ten thousands with hundreds: 貳万零伍佰" (cn2int 貳万零伍佰) = 20500


@test "Ten thousands with hundreds: 贰萬零伍佰" (cn2int 贰萬零伍佰) = 20500
@test "Ten thousands with hundreds: 叁萬零陆佰" (cn2int 叁萬零陆佰) = 30600


@test "Ten thousands with hundreds: 贰万零伍佰" (cn2int 贰万零伍佰) = 20500
@test "Ten thousands with hundreds: 叁万零陆佰" (cn2int 叁万零陆佰) = 30600
