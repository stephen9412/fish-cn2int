set -l test_dir (dirname (status filename))
source $test_dir/../functions/cn2int.fish


@test "Arabic digits passthrough: 0" (cn2int 0) = 0
@test "Arabic digits passthrough: 1" (cn2int 1) = 1
@test "Arabic digits passthrough: 15" (cn2int 15) = 15
@test "Arabic digits passthrough: 99" (cn2int 99) = 99
@test "Arabic digits passthrough: 100" (cn2int 100) = 100
@test "Arabic digits passthrough: 999" (cn2int 999) = 999
