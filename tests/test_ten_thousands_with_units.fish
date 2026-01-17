set -l test_dir (dirname (status filename))
source $test_dir/../functions/cn2int.fish


@test "Ten thousands with units: 一萬零一" (cn2int 一萬零一) = 10001
@test "Ten thousands with units: 一萬零二" (cn2int 一萬零二) = 10002
@test "Ten thousands with units: 二萬零五" (cn2int 二萬零五) = 20005
@test "Ten thousands with units: 五萬零七" (cn2int 五萬零七) = 50007
@test "Ten thousands with units: 九萬零九" (cn2int 九萬零九) = 90009


@test "Ten thousands with units: 一萬〇一" (cn2int 一萬〇一) = 10001
@test "Ten thousands with units: 二萬〇二" (cn2int 二萬〇二) = 20002


@test "Ten thousands with units: 一万零一" (cn2int 一万零一) = 10001
@test "Ten thousands with units: 二万零五" (cn2int 二万零五) = 20005


@test "Ten thousands with units: 壹萬零壹" (cn2int 壹萬零壹) = 10001
@test "Ten thousands with units: 貳萬零伍" (cn2int 貳萬零伍) = 20005
@test "Ten thousands with units: 玖萬零玖" (cn2int 玖萬零玖) = 90009


@test "Ten thousands with units: 壹万零壹" (cn2int 壹万零壹) = 10001
@test "Ten thousands with units: 貳万零伍" (cn2int 貳万零伍) = 20005


@test "Ten thousands with units: 贰萬零伍" (cn2int 贰萬零伍) = 20005
@test "Ten thousands with units: 叁萬零陆" (cn2int 叁萬零陆) = 30006


@test "Ten thousands with units: 贰万零伍" (cn2int 贰万零伍) = 20005
@test "Ten thousands with units: 叁万零陆" (cn2int 叁万零陆) = 30006
