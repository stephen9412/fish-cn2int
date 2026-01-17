
function cn2int
    set -l input $argv[1]

    if string match -qr '^[0-9]+$' -- $input
        math $input
        return
    end

    set input (_cn_map_digits $input)

    if string match -q '*十*' -- $input
        # 以 "十" 為界切割
        set -l parts (string split "十" -- $input)
        set -l tens $parts[1]
        set -l units $parts[2]

        # 如果十前面是空的 (例如 "十五" -> "十5")，補 1
        if test -z "$tens"
            set tens 1
        end

        # 如果十後面是空的 (例如 "二十" -> "2十")，補 0
        if test -z "$units"
            set units 0
        end

        math "$tens * 10 + $units"
    else
        # 沒有十，代表是個位數 (例如 "八" -> 變成 "8" 走到這)
        math $input
    end
end


function _cn_map_digits
    set -l str $argv[1]
    set str (string replace -a '一' '1' -- $str)
    set str (string replace -a '二' '2' -- $str)
    set str (string replace -a '兩' '2' -- $str)
    set str (string replace -a '两' '2' -- $str)
    set str (string replace -a '三' '3' -- $str)
    set str (string replace -a '四' '4' -- $str)
    set str (string replace -a '五' '5' -- $str)
    set str (string replace -a '六' '6' -- $str)
    set str (string replace -a '七' '7' -- $str)
    set str (string replace -a '八' '8' -- $str)
    set str (string replace -a '九' '9' -- $str)
    set str (string replace -a '零' '0' -- $str)
    set str (string replace -a '〇' '0' -- $str)
    set str (string replace -a '壹' '1' -- $str)
    set str (string replace -a '貳' '2' -- $str)
    set str (string replace -a '參' '3' -- $str)
    set str (string replace -a '肆' '4' -- $str)
    set str (string replace -a '伍' '5' -- $str)
    set str (string replace -a '陸' '6' -- $str)
    set str (string replace -a '柒' '7' -- $str)
    set str (string replace -a '捌' '8' -- $str)
    set str (string replace -a '玖' '9' -- $str)
    set str (string replace -a '贰' '2' -- $str)
    set str (string replace -a '叁' '3' -- $str)
    set str (string replace -a '陆' '6' -- $str)
    set str (string replace -a '拾' '十' -- $str)
    echo $str
end

