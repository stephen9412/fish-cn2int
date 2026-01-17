set -l test_dir (dirname (status filename))
source $test_dir/../functions/cn2int.fish


@test "Whole thousands: 一千" (cn2int 一千) = 1000
@test "Whole thousands: 二千" (cn2int 二千) = 2000
@test "Whole thousands: 三千" (cn2int 三千) = 3000
@test "Whole thousands: 四千" (cn2int 四千) = 4000
@test "Whole thousands: 五千" (cn2int 五千) = 5000
@test "Whole thousands: 六千" (cn2int 六千) = 6000
@test "Whole thousands: 七千" (cn2int 七千) = 7000
@test "Whole thousands: 八千" (cn2int 八千) = 8000
@test "Whole thousands: 九千" (cn2int 九千) = 9000


@test "Whole thousands: 壹仟" (cn2int 壹仟) = 1000
@test "Whole thousands: 貳仟" (cn2int 貳仟) = 2000
@test "Whole thousands: 參仟" (cn2int 參仟) = 3000
@test "Whole thousands: 肆仟" (cn2int 肆仟) = 4000
@test "Whole thousands: 伍仟" (cn2int 伍仟) = 5000
@test "Whole thousands: 陸仟" (cn2int 陸仟) = 6000
@test "Whole thousands: 柒仟" (cn2int 柒仟) = 7000
@test "Whole thousands: 捌仟" (cn2int 捌仟) = 8000
@test "Whole thousands: 玖仟" (cn2int 玖仟) = 9000


@test "Whole thousands: 贰仟" (cn2int 贰仟) = 2000
@test "Whole thousands: 叁仟" (cn2int 叁仟) = 3000
@test "Whole thousands: 陆仟" (cn2int 陆仟) = 6000
