
function cn2int
    set -l input $argv[1]

    if string match -qr '^[0-9]+$' -- $input
        math $input
        return
    end

    set input (_cn_map_digits $input)

    set -l result (_parse_number $input)
    echo $result[1]
end


function _parse_number
    set -l input $argv[1]
    
    set -l hundred_millions 0
    set -l wan_part 0
    set -l remainder_part 0
    
    set -l has_yi (string match -q '*億*' -- $input; and echo 1; or echo 0)
    set -l has_wan (string match -q '*萬*' -- $input; and echo 1; or echo 0)
    set -l has_qian (string match -q '*千*' -- $input; and echo 1; or echo 0)
    set -l has_bai (string match -q '*百*' -- $input; and echo 1; or echo 0)
    set -l has_shi (string match -q '*十*' -- $input; and echo 1; or echo 0)
    
    set -l len (string length -- $input)
    
    if test $has_yi -eq 0 -a $has_wan -eq 0 -a $has_qian -eq 0 -a $has_bai -eq 0 -a $has_shi -eq 0 -a $len -ge 5
        if test $len -eq 9
            set hundred_millions (string sub -l 1 -- $input)
            set -l wan_digits (string sub -s 2 -l 4 -- $input)
            set wan_part (_parse_simple $wan_digits)
            set -l rem_digits (string sub -s 6 -l 4 -- $input)
            set remainder_part (_parse_simple $rem_digits)
            math "$hundred_millions * 100000000 + $wan_part * 10000 + $remainder_part"
            return
        else if test $len -ge 5
            set -l wan_digits (string sub -l (math $len - 4) -- $input)
            set wan_part (_parse_simple $wan_digits)
            set -l rem_digits (string sub -s (math $len - 3) -- $input)
            set remainder_part (_parse_simple $rem_digits)
            math "$wan_part * 10000 + $remainder_part"
            return
        end
    end

    if string match -q '*億*' -- $input
        set -l parts (string split '億' -- $input)
        set -l yi_coef $parts[1]
        test -z "$yi_coef"; and set yi_coef 1
        set hundred_millions (_parse_simple $yi_coef)
        set input $parts[2]
    end

    if string match -q '*萬*' -- $input
        set -l parts (string split '萬' -- $input)
        set -l wan_str $parts[1]
        test -z "$wan_str"; and set wan_str 1
        set wan_part (_parse_simple $wan_str)
        set input $parts[2]
    end

    test -z "$input"; and set input 0
    set remainder_part (_parse_simple $input)

    math "$hundred_millions * 100000000 + $wan_part * 10000 + $remainder_part"
end


function _parse_simple
    set -l input $argv[1]
    
    test -z "$input"; and echo 0; and return
    
    set -l thousands 0
    set -l hundreds 0
    set -l tens 0
    set -l units 0

    set thousands (_extract_and_consume $input '千')
    set input $cn_extract_remainder
    
    set hundreds (_extract_and_consume $input '百')
    set input $cn_extract_remainder
    
    set tens (_extract_and_consume $input '十')
    set input $cn_extract_remainder

    set -l len (string length -- $input)
    if test $len -eq 0
        set units 0
    else if test $len -eq 1
        set units $input
    else if test $len -eq 2
        if test $thousands -eq 0 -a $hundreds -eq 0 -a $tens -eq 0
            set tens (string sub -l 1 -- $input)
            set units (string sub -s 2 -l 1 -- $input)
        else
            set tens (string sub -l 1 -- $input)
            set units (string sub -s 2 -l 1 -- $input)
        end
    else if test $len -eq 3
        if test $thousands -eq 0
            set hundreds (string sub -l 1 -- $input)
            set tens (string sub -s 2 -l 1 -- $input)
            set units (string sub -s 3 -l 1 -- $input)
        else
            set tens (string sub -s 2 -l 1 -- $input)
            set units (string sub -s 3 -l 1 -- $input)
        end
    else if test $len -eq 4
        set thousands (string sub -l 1 -- $input)
        set hundreds (string sub -s 2 -l 1 -- $input)
        set tens (string sub -s 3 -l 1 -- $input)
        set units (string sub -s 4 -l 1 -- $input)
    end

    math "$thousands * 1000 + $hundreds * 100 + $tens * 10 + $units"
end


function _extract_and_consume
    set -l input $argv[1]
    set -l marker $argv[2]
    
    if string match -q "*$marker*" -- $input
        set -l parts (string split $marker -- $input)
        set -l value $parts[1]
        test -z "$value"; and set value 1
        set -g cn_extract_remainder $parts[2]
        echo $value
        return 0
    end
    set -g cn_extract_remainder $input
    echo 0
    return 1
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
    set str (string replace -a '佰' '百' -- $str)
    set str (string replace -a '仟' '千' -- $str)
    set str (string replace -a '万' '萬' -- $str)
    set str (string replace -a '亿' '億' -- $str)
    echo $str
end

