set -l test_dir (dirname (status filename))
source $test_dir/../functions/cn2int.fish


@test "Implicit hundreds: 一一一" (cn2int 一一一) = 111
@test "Implicit hundreds: 二二二" (cn2int 二二二) = 222
@test "Implicit hundreds: 三三三" (cn2int 三三三) = 333
@test "Implicit hundreds: 四四四" (cn2int 四四四) = 444
@test "Implicit hundreds: 五五五" (cn2int 五五五) = 555
@test "Implicit hundreds: 六六六" (cn2int 六六六) = 666
@test "Implicit hundreds: 七七七" (cn2int 七七七) = 777
@test "Implicit hundreds: 八八八" (cn2int 八八八) = 888
@test "Implicit hundreds: 九九九" (cn2int 九九九) = 999


@test "Implicit hundreds: 一二三" (cn2int 一二三) = 123
@test "Implicit hundreds: 二三四" (cn2int 二三四) = 234
@test "Implicit hundreds: 三四五" (cn2int 三四五) = 345
@test "Implicit hundreds: 四五六" (cn2int 四五六) = 456
@test "Implicit hundreds: 五六七" (cn2int 五六七) = 567
@test "Implicit hundreds: 六七八" (cn2int 六七八) = 678
@test "Implicit hundreds: 七八九" (cn2int 七八九) = 789
@test "Implicit hundreds: 八九一" (cn2int 八九一) = 891
@test "Implicit hundreds: 九一二" (cn2int 九一二) = 912


@test "Implicit hundreds: 壹壹壹" (cn2int 壹壹壹) = 111
@test "Implicit hundreds: 貳貳貳" (cn2int 貳貳貳) = 222
@test "Implicit hundreds: 參參參" (cn2int 參參參) = 333
@test "Implicit hundreds: 肆肆肆" (cn2int 肆肆肆) = 444
@test "Implicit hundreds: 伍伍伍" (cn2int 伍伍伍) = 555
@test "Implicit hundreds: 陸陸陸" (cn2int 陸陸陸) = 666
@test "Implicit hundreds: 柒柒柒" (cn2int 柒柒柒) = 777
@test "Implicit hundreds: 捌捌捌" (cn2int 捌捌捌) = 888
@test "Implicit hundreds: 玖玖玖" (cn2int 玖玖玖) = 999


@test "Implicit hundreds: 壹貳參" (cn2int 壹貳參) = 123
@test "Implicit hundreds: 貳參肆" (cn2int 貳參肆) = 234
@test "Implicit hundreds: 參肆伍" (cn2int 參肆伍) = 345
@test "Implicit hundreds: 肆伍陸" (cn2int 肆伍陸) = 456
@test "Implicit hundreds: 伍陸柒" (cn2int 伍陸柒) = 567
@test "Implicit hundreds: 陸柒捌" (cn2int 陸柒捌) = 678
@test "Implicit hundreds: 柒捌玖" (cn2int 柒捌玖) = 789


@test "Implicit hundreds: 贰贰贰" (cn2int 贰贰贰) = 222
@test "Implicit hundreds: 叁叁叁" (cn2int 叁叁叁) = 333
@test "Implicit hundreds: 陆陆陆" (cn2int 陆陆陆) = 666


@test "Implicit hundreds: 贰叁肆" (cn2int 贰叁肆) = 234
@test "Implicit hundreds: 叁肆伍" (cn2int 叁肆伍) = 345
@test "Implicit hundreds: 陆柒捌" (cn2int 陆柒捌) = 678


@test "Implicit hundreds with zero: 一零一" (cn2int 一零一) = 101
@test "Implicit hundreds with zero: 二零二" (cn2int 二零二) = 202
@test "Implicit hundreds with zero: 三零三" (cn2int 三零三) = 303
@test "Implicit hundreds with zero: 五零五" (cn2int 五零五) = 505
@test "Implicit hundreds with zero: 九零九" (cn2int 九零九) = 909


@test "Implicit hundreds with 〇: 一〇一" (cn2int 一〇一) = 101
@test "Implicit hundreds with 〇: 二〇二" (cn2int 二〇二) = 202
@test "Implicit hundreds with 〇: 三〇三" (cn2int 三〇三) = 303


@test "Implicit hundreds with zero: 壹零壹" (cn2int 壹零壹) = 101
@test "Implicit hundreds with zero: 貳零貳" (cn2int 貳零貳) = 202
@test "Implicit hundreds with zero: 參零參" (cn2int 參零參) = 303


@test "Implicit hundreds with 〇: 壹〇壹" (cn2int 壹〇壹) = 101
@test "Implicit hundreds with 〇: 貳〇貳" (cn2int 貳〇貳) = 202
@test "Implicit hundreds with 〇: 參〇參" (cn2int 參〇參) = 303


@test "Implicit hundreds with zero: 贰零贰" (cn2int 贰零贰) = 202
@test "Implicit hundreds with zero: 叁零叁" (cn2int 叁零叁) = 303
@test "Implicit hundreds with zero: 陆零陆" (cn2int 陆零陆) = 606


@test "Implicit hundreds with 〇: 贰〇贰" (cn2int 贰〇贰) = 202
@test "Implicit hundreds with 〇: 叁〇叁" (cn2int 叁〇叁) = 303
@test "Implicit hundreds with 〇: 陆〇陆" (cn2int 陆〇陆) = 606
