
function cn2int
    set -l input $argv[1]

    if string match -qr '^[0-9]+$' -- $input
        math $input
        return
    end

    set input (_cn_map_digits $input)

    set -l thousands 0
    set -l hundreds 0
    set -l tens 0
    set -l units 0

    if string match -q '*千*' -- $input
        set -l parts (string split "千" -- $input)
        set thousands $parts[1]
        if test -z "$thousands"
            set thousands 1
        end
        set input $parts[2]
    end

    if string match -q '*百*' -- $input
        set -l parts (string split "百" -- $input)
        set hundreds $parts[1]
        if test -z "$hundreds"
            set hundreds 1
        end
        set input $parts[2]
    end

    if string match -q '*十*' -- $input
        set -l parts (string split "十" -- $input)
        set tens $parts[1]
        if test -z "$tens"
            set tens 1
        end
        set units $parts[2]
        if test -z "$units"
            set units 0
        end
    else
        set units $input
        if test -z "$units"
            set units 0
        end
    end

    set -l len (string length -- $units)
    if test $len -eq 4
        set thousands (string sub -l 1 -- $units)
        set hundreds (string sub -s 2 -l 1 -- $units)
        set tens (string sub -s 3 -l 1 -- $units)
        set units (string sub -s 4 -l 1 -- $units)
    else if test $len -eq 3
        if test $thousands -eq 0
            set hundreds (string sub -l 1 -- $units)
            set tens (string sub -s 2 -l 1 -- $units)
            set units (string sub -s 3 -l 1 -- $units)
        else
            set tens (string sub -s 2 -l 1 -- $units)
            set units (string sub -s 3 -l 1 -- $units)
        end
    else if test $len -eq 2
        if test $thousands -eq 0; and test $hundreds -eq 0
            set tens (string sub -l 1 -- $units)
            set units (string sub -s 2 -l 1 -- $units)
        else
            set tens (string sub -l 1 -- $units)
            set units (string sub -s 2 -l 1 -- $units)
        end
    end

    math "$thousands * 1000 + $hundreds * 100 + $tens * 10 + $units"
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
    echo $str
end

