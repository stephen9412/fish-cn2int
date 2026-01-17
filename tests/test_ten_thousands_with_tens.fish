set -l test_dir (dirname (status filename))
source $test_dir/../functions/cn2int.fish


@test "Ten thousands with tens: 一萬零一十" (cn2int 一萬零一十) = 10010
@test "Ten thousands with tens: 一萬零二十" (cn2int 一萬零二十) = 10020
@test "Ten thousands with tens: 二萬零五十" (cn2int 二萬零五十) = 20050
@test "Ten thousands with tens: 五萬零七十" (cn2int 五萬零七十) = 50070
@test "Ten thousands with tens: 九萬零九十" (cn2int 九萬零九十) = 90090


@test "Ten thousands with tens: 一萬〇一十" (cn2int 一萬〇一十) = 10010
@test "Ten thousands with tens: 二萬〇二十" (cn2int 二萬〇二十) = 20020


@test "Ten thousands with tens: 一万零一十" (cn2int 一万零一十) = 10010
@test "Ten thousands with tens: 二万零五十" (cn2int 二万零五十) = 20050


@test "Ten thousands with tens: 壹萬零壹拾" (cn2int 壹萬零壹拾) = 10010
@test "Ten thousands with tens: 貳萬零伍拾" (cn2int 貳萬零伍拾) = 20050
@test "Ten thousands with tens: 玖萬零玖拾" (cn2int 玖萬零玖拾) = 90090


@test "Ten thousands with tens: 壹万零壹拾" (cn2int 壹万零壹拾) = 10010
@test "Ten thousands with tens: 貳万零伍拾" (cn2int 貳万零伍拾) = 20050


@test "Ten thousands with tens: 贰萬零伍拾" (cn2int 贰萬零伍拾) = 20050
@test "Ten thousands with tens: 叁萬零陆拾" (cn2int 叁萬零陆拾) = 30060


@test "Ten thousands with tens: 贰万零伍拾" (cn2int 贰万零伍拾) = 20050
@test "Ten thousands with tens: 叁万零陆拾" (cn2int 叁万零陆拾) = 30060
