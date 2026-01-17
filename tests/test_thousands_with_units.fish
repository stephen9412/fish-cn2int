set -l test_dir (dirname (status filename))
source $test_dir/../functions/cn2int.fish


@test "Thousands with units: 一千零一" (cn2int 一千零一) = 1001
@test "Thousands with units: 一千零二" (cn2int 一千零二) = 1002
@test "Thousands with units: 一千零三" (cn2int 一千零三) = 1003
@test "Thousands with units: 二千零五" (cn2int 二千零五) = 2005
@test "Thousands with units: 三千零六" (cn2int 三千零六) = 3006
@test "Thousands with units: 五千零七" (cn2int 五千零七) = 5007
@test "Thousands with units: 七千零八" (cn2int 七千零八) = 7008
@test "Thousands with units: 九千零九" (cn2int 九千零九) = 9009


@test "Thousands with units: 一千〇一" (cn2int 一千〇一) = 1001
@test "Thousands with units: 二千〇二" (cn2int 二千〇二) = 2002
@test "Thousands with units: 三千〇三" (cn2int 三千〇三) = 3003


@test "Thousands with units: 壹仟零壹" (cn2int 壹仟零壹) = 1001
@test "Thousands with units: 壹仟零貳" (cn2int 壹仟零貳) = 1002
@test "Thousands with units: 貳仟零伍" (cn2int 貳仟零伍) = 2005
@test "Thousands with units: 參仟零陸" (cn2int 參仟零陸) = 3006
@test "Thousands with units: 玖仟零玖" (cn2int 玖仟零玖) = 9009


@test "Thousands with units: 壹仟〇壹" (cn2int 壹仟〇壹) = 1001
@test "Thousands with units: 貳仟〇貳" (cn2int 貳仟〇貳) = 2002


@test "Thousands with units: 贰仟零贰" (cn2int 贰仟零贰) = 2002
@test "Thousands with units: 叁仟零叁" (cn2int 叁仟零叁) = 3003
@test "Thousands with units: 陆仟零陆" (cn2int 陆仟零陆) = 6006
