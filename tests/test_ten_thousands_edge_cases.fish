set -l test_dir (dirname (status filename))
source $test_dir/../functions/cn2int.fish


@test "Edge case: 一萬一" (cn2int 一萬一) = 10001
@test "Edge case: 二萬二" (cn2int 二萬二) = 20002
@test "Edge case: 五萬五" (cn2int 五萬五) = 50005
@test "Edge case: 九萬九" (cn2int 九萬九) = 90009


@test "Edge case: 一萬一十" (cn2int 一萬一十) = 10010
@test "Edge case: 二萬二十" (cn2int 二萬二十) = 20020
@test "Edge case: 五萬五十" (cn2int 五萬五十) = 50050
@test "Edge case: 九萬九十" (cn2int 九萬九十) = 90090


@test "Edge case: 一萬一十一" (cn2int 一萬一十一) = 10011
@test "Edge case: 二萬二十二" (cn2int 二萬二十二) = 20022
@test "Edge case: 五萬五十五" (cn2int 五萬五十五) = 50055
@test "Edge case: 九萬九十九" (cn2int 九萬九十九) = 90099


@test "Edge case: 一萬一百" (cn2int 一萬一百) = 10100
@test "Edge case: 二萬二百" (cn2int 二萬二百) = 20200
@test "Edge case: 五萬五百" (cn2int 五萬五百) = 50500
@test "Edge case: 九萬九百" (cn2int 九萬九百) = 90900


@test "Edge case: 一萬一百一" (cn2int 一萬一百一) = 10101
@test "Edge case: 二萬二百二" (cn2int 二萬二百二) = 20202
@test "Edge case: 五萬五百五" (cn2int 五萬五百五) = 50505


@test "Edge case: 一萬一百一十" (cn2int 一萬一百一十) = 10110
@test "Edge case: 二萬二百二十" (cn2int 二萬二百二十) = 20220
@test "Edge case: 五萬五百五十" (cn2int 五萬五百五十) = 50550


@test "Edge case: 一萬一百一十一" (cn2int 一萬一百一十一) = 10111
@test "Edge case: 二萬二百二十二" (cn2int 二萬二百二十二) = 20222


@test "Edge case: 一萬一千一" (cn2int 一萬一千一) = 11001
@test "Edge case: 二萬二千二" (cn2int 二萬二千二) = 22002
@test "Edge case: 五萬五千五" (cn2int 五萬五千五) = 55005


@test "Edge case: 一萬一千一十" (cn2int 一萬一千一十) = 11010
@test "Edge case: 二萬二千二十" (cn2int 二萬二千二十) = 22020


@test "Edge case: 一萬一千一十一" (cn2int 一萬一千一十一) = 11011
@test "Edge case: 二萬二千二十二" (cn2int 二萬二千二十二) = 22022


@test "Edge case: 一萬一千一百" (cn2int 一萬一千一百) = 11100
@test "Edge case: 二萬二千二百" (cn2int 二萬二千二百) = 22200


@test "Edge case: 一萬一千一百一" (cn2int 一萬一千一百一) = 11101
@test "Edge case: 二萬二千二百二" (cn2int 二萬二千二百二) = 22202


@test "Edge case: 一萬一千一百一十" (cn2int 一萬一千一百一十) = 11110
@test "Edge case: 二萬二千二百二十" (cn2int 二萬二千二百二十) = 22220


@test "Edge case: 一万一" (cn2int 一万一) = 10001
@test "Edge case: 二万二" (cn2int 二万二) = 20002
@test "Edge case: 一万一十" (cn2int 一万一十) = 10010
@test "Edge case: 一万一十一" (cn2int 一万一十一) = 10011
@test "Edge case: 一万一百" (cn2int 一万一百) = 10100
@test "Edge case: 一万一千" (cn2int 一万一千) = 11000


@test "Edge case: 壹萬壹" (cn2int 壹萬壹) = 10001
@test "Edge case: 貳萬貳" (cn2int 貳萬貳) = 20002
@test "Edge case: 壹萬壹拾" (cn2int 壹萬壹拾) = 10010
@test "Edge case: 壹萬壹拾壹" (cn2int 壹萬壹拾壹) = 10011
@test "Edge case: 壹萬壹佰" (cn2int 壹萬壹佰) = 10100
@test "Edge case: 壹萬壹仟" (cn2int 壹萬壹仟) = 11000


@test "Edge case: 壹万壹" (cn2int 壹万壹) = 10001
@test "Edge case: 貳万貳" (cn2int 貳万貳) = 20002


@test "Edge case: 贰萬贰" (cn2int 贰萬贰) = 20002
@test "Edge case: 叁萬叁" (cn2int 叁萬叁) = 30003
@test "Edge case: 贰萬贰拾" (cn2int 贰萬贰拾) = 20020
@test "Edge case: 贰萬贰佰" (cn2int 贰萬贰佰) = 20200
@test "Edge case: 贰萬贰仟" (cn2int 贰萬贰仟) = 22000


@test "Edge case: 贰万贰" (cn2int 贰万贰) = 20002
@test "Edge case: 叁万叁" (cn2int 叁万叁) = 30003
