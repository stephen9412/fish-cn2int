set -l test_dir (dirname (status filename))
source $test_dir/../functions/cn2int.fish


@test "Edge case: 一千一" (cn2int 一千一) = 1001
@test "Edge case: 二千二" (cn2int 二千二) = 2002
@test "Edge case: 三千三" (cn2int 三千三) = 3003
@test "Edge case: 五千五" (cn2int 五千五) = 5005
@test "Edge case: 九千九" (cn2int 九千九) = 9009


@test "Edge case: 一千一十" (cn2int 一千一十) = 1010
@test "Edge case: 二千二十" (cn2int 二千二十) = 2020
@test "Edge case: 三千三十" (cn2int 三千三十) = 3030
@test "Edge case: 五千五十" (cn2int 五千五十) = 5050
@test "Edge case: 九千九十" (cn2int 九千九十) = 9090


@test "Edge case: 一千一十一" (cn2int 一千一十一) = 1011
@test "Edge case: 二千二十二" (cn2int 二千二十二) = 2022
@test "Edge case: 三千三十三" (cn2int 三千三十三) = 3033
@test "Edge case: 五千五十五" (cn2int 五千五十五) = 5055
@test "Edge case: 九千九十九" (cn2int 九千九十九) = 9099


@test "Edge case: 一千一百一" (cn2int 一千一百一) = 1101
@test "Edge case: 二千二百二" (cn2int 二千二百二) = 2202
@test "Edge case: 三千三百三" (cn2int 三千三百三) = 3303
@test "Edge case: 五千五百五" (cn2int 五千五百五) = 5505
@test "Edge case: 九千九百九" (cn2int 九千九百九) = 9909


@test "Edge case: 壹仟壹" (cn2int 壹仟壹) = 1001
@test "Edge case: 貳仟貳" (cn2int 貳仟貳) = 2002
@test "Edge case: 參仟參" (cn2int 參仟參) = 3003


@test "Edge case: 壹仟壹拾" (cn2int 壹仟壹拾) = 1010
@test "Edge case: 貳仟貳拾" (cn2int 貳仟貳拾) = 2020
@test "Edge case: 參仟參拾" (cn2int 參仟參拾) = 3030


@test "Edge case: 壹仟壹拾壹" (cn2int 壹仟壹拾壹) = 1011
@test "Edge case: 貳仟貳拾貳" (cn2int 貳仟貳拾貳) = 2022
@test "Edge case: 參仟參拾參" (cn2int 參仟參拾參) = 3033


@test "Edge case: 壹仟壹佰壹" (cn2int 壹仟壹佰壹) = 1101
@test "Edge case: 貳仟貳佰貳" (cn2int 貳仟貳佰貳) = 2202
@test "Edge case: 參仟參佰參" (cn2int 參仟參佰參) = 3303


@test "Edge case: 贰仟贰" (cn2int 贰仟贰) = 2002
@test "Edge case: 叁仟叁" (cn2int 叁仟叁) = 3003
@test "Edge case: 陆仟陆" (cn2int 陆仟陆) = 6006


@test "Edge case: 贰仟贰拾" (cn2int 贰仟贰拾) = 2020
@test "Edge case: 叁仟叁拾" (cn2int 叁仟叁拾) = 3030


@test "Edge case: 贰仟贰拾贰" (cn2int 贰仟贰拾贰) = 2022
@test "Edge case: 叁仟叁拾叁" (cn2int 叁仟叁拾叁) = 3033
