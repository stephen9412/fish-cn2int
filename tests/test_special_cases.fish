set -l test_dir (dirname (status filename))
source $test_dir/../functions/cn2int.fish


@test "Special case: 兩" (cn2int 兩) = 2
@test "Special case: 两" (cn2int 两) = 2
