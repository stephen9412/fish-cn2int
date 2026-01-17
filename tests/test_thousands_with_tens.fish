set -l test_dir (dirname (status filename))
source $test_dir/../functions/cn2int.fish


@test "Thousands with tens: 一千零一十" (cn2int 一千零一十) = 1010
@test "Thousands with tens: 一千零二十" (cn2int 一千零二十) = 1020
@test "Thousands with tens: 一千零三十" (cn2int 一千零三十) = 1030
@test "Thousands with tens: 二千零五十" (cn2int 二千零五十) = 2050
@test "Thousands with tens: 三千零六十" (cn2int 三千零六十) = 3060
@test "Thousands with tens: 五千零七十" (cn2int 五千零七十) = 5070
@test "Thousands with tens: 七千零八十" (cn2int 七千零八十) = 7080
@test "Thousands with tens: 九千零九十" (cn2int 九千零九十) = 9090


@test "Thousands with tens: 一千〇一十" (cn2int 一千〇一十) = 1010
@test "Thousands with tens: 二千〇二十" (cn2int 二千〇二十) = 2020
@test "Thousands with tens: 三千〇三十" (cn2int 三千〇三十) = 3030


@test "Thousands with tens: 壹仟零壹拾" (cn2int 壹仟零壹拾) = 1010
@test "Thousands with tens: 壹仟零貳拾" (cn2int 壹仟零貳拾) = 1020
@test "Thousands with tens: 貳仟零伍拾" (cn2int 貳仟零伍拾) = 2050
@test "Thousands with tens: 參仟零陸拾" (cn2int 參仟零陸拾) = 3060
@test "Thousands with tens: 玖仟零玖拾" (cn2int 玖仟零玖拾) = 9090


@test "Thousands with tens: 壹仟〇壹拾" (cn2int 壹仟〇壹拾) = 1010
@test "Thousands with tens: 貳仟〇貳拾" (cn2int 貳仟〇貳拾) = 2020


@test "Thousands with tens: 贰仟零伍拾" (cn2int 贰仟零伍拾) = 2050
@test "Thousands with tens: 叁仟零陆拾" (cn2int 叁仟零陆拾) = 3060
@test "Thousands with tens: 陆仟零柒拾" (cn2int 陆仟零柒拾) = 6070
