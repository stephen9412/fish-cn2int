set -l test_dir (dirname (status filename))
source $test_dir/../functions/cn2int.fish


@test "Hundreds with units: 一百零一" (cn2int 一百零一) = 101
@test "Hundreds with units: 二百零二" (cn2int 二百零二) = 202
@test "Hundreds with units: 三百零三" (cn2int 三百零三) = 303
@test "Hundreds with units: 四百零五" (cn2int 四百零五) = 405
@test "Hundreds with units: 五百零七" (cn2int 五百零七) = 507
@test "Hundreds with units: 六百零九" (cn2int 六百零九) = 609
@test "Hundreds with units: 七百零八" (cn2int 七百零八) = 708
@test "Hundreds with units: 八百零六" (cn2int 八百零六) = 806
@test "Hundreds with units: 九百零四" (cn2int 九百零四) = 904


@test "Hundreds with units: 一百〇一" (cn2int 一百〇一) = 101
@test "Hundreds with units: 二百〇二" (cn2int 二百〇二) = 202
@test "Hundreds with units: 三百〇三" (cn2int 三百〇三) = 303


@test "Hundreds with units: 壹佰零壹" (cn2int 壹佰零壹) = 101
@test "Hundreds with units: 貳佰零貳" (cn2int 貳佰零貳) = 202
@test "Hundreds with units: 參佰零參" (cn2int 參佰零參) = 303
@test "Hundreds with units: 肆佰零伍" (cn2int 肆佰零伍) = 405
@test "Hundreds with units: 伍佰零柒" (cn2int 伍佰零柒) = 507
@test "Hundreds with units: 陸佰零玖" (cn2int 陸佰零玖) = 609


@test "Hundreds with units: 壹佰〇壹" (cn2int 壹佰〇壹) = 101
@test "Hundreds with units: 貳佰〇貳" (cn2int 貳佰〇貳) = 202
@test "Hundreds with units: 參佰〇參" (cn2int 參佰〇參) = 303


@test "Hundreds with units: 贰佰零贰" (cn2int 贰佰零贰) = 202
@test "Hundreds with units: 叁佰零叁" (cn2int 叁佰零叁) = 303
@test "Hundreds with units: 陆佰零玖" (cn2int 陆佰零玖) = 609


@test "Hundreds with units: 贰佰〇贰" (cn2int 贰佰〇贰) = 202
@test "Hundreds with units: 叁佰〇叁" (cn2int 叁佰〇叁) = 303
@test "Hundreds with units: 陆佰〇玖" (cn2int 陆佰〇玖) = 609
