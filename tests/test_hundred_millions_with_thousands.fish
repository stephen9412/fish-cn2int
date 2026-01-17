set -l test_dir (dirname (status filename))
source $test_dir/../functions/cn2int.fish


@test "Hundred millions with thousands: 一億零一千" (cn2int 一億零一千) = 100001000
@test "Hundred millions with thousands: 一億零二千" (cn2int 一億零二千) = 100002000
@test "Hundred millions with thousands: 二億零五千" (cn2int 二億零五千) = 200005000
@test "Hundred millions with thousands: 五億零七千" (cn2int 五億零七千) = 500007000
@test "Hundred millions with thousands: 九億零九千" (cn2int 九億零九千) = 900009000


@test "Hundred millions with thousands: 一億〇一千" (cn2int 一億〇一千) = 100001000
@test "Hundred millions with thousands: 二億〇二千" (cn2int 二億〇二千) = 200002000


@test "Hundred millions with thousands: 一亿零一千" (cn2int 一亿零一千) = 100001000
@test "Hundred millions with thousands: 二亿零二千" (cn2int 二亿零二千) = 200002000


@test "Hundred millions with thousands: 壹億零壹仟" (cn2int 壹億零壹仟) = 100001000
@test "Hundred millions with thousands: 貳億零貳仟" (cn2int 貳億零貳仟) = 200002000


@test "Hundred millions with thousands: 壹亿零壹仟" (cn2int 壹亿零壹仟) = 100001000


@test "Hundred millions with thousands: 贰億零贰仟" (cn2int 贰億零贰仟) = 200002000
@test "Hundred millions with thousands: 叁億零叁仟" (cn2int 叁億零叁仟) = 300003000


@test "Hundred millions with thousands: 贰亿零贰仟" (cn2int 贰亿零贰仟) = 200002000
