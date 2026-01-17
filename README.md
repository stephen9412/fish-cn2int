# fish-cn2int

A deterministic Chinese numeral to integer converter for Fish Shell.

## Features

- **Deterministic Parsing**: Unambiguous conversion based on explicit Chinese numerals
- **Comprehensive Range**: Supports numbers from 0 to 999,999,999 (9億9999萬9999)
- **Multiple Variants**:
  - Traditional Chinese (繁體): 一二三、壹貳參
  - Simplified Chinese (简体): 一二三、贰叁陆
  - Mixed formats: 萬/万、億/亿
  - Zero variants: 零、〇
- **Extensive Test Coverage**: 1004+ test cases with TDD approach
- **Pure Fish Shell**: No external dependencies

## Installation

### Using Fisher

```fish
fisher install stephen9412/fish-cn2int
```

### Manual Installation

Clone this repository and source the function:

```fish
git clone https://github.com/stephen9412/fish-cn2int.git
source fish-cn2int/functions/cn2int.fish
```

Or copy `functions/cn2int.fish` to your `~/.config/fish/functions/` directory.

## Usage

```fish
cn2int 一二三四五         # 12345
cn2int 九千九百九十九     # 9999
cn2int 一萬二千三百四十五 # 12345
cn2int 壹億貳仟參佰肆拾伍萬陸仟柒佰捌拾玖 # 123456789
```

### Supported Formats

#### Standard Chinese Numerals

```fish
cn2int 一         # 1
cn2int 十         # 10
cn2int 一百       # 100
cn2int 一千       # 1000
cn2int 一萬       # 10000
cn2int 一億       # 100000000
```

#### Uppercase (Financial)

```fish
cn2int 壹         # 1
cn2int 拾         # 10
cn2int 壹佰       # 100
cn2int 壹仟       # 1000
cn2int 壹萬       # 10000
cn2int 壹億       # 100000000
```

#### Simplified Variants

```fish
cn2int 一万       # 10000 (万 instead of 萬)
cn2int 一亿       # 100000000 (亿 instead of 億)
cn2int 贰仟       # 2000 (贰 instead of 貳)
```

#### Implicit Formats

```fish
cn2int 二三       # 23 (implicit tens)
cn2int 一二三     # 123 (implicit hundreds)
cn2int 一二三四   # 1234 (implicit thousands)
```

#### Zero Handling

```fish
cn2int 一千零一   # 1001
cn2int 一萬零一   # 10001
cn2int 一億零一萬 # 100010000
```

## Important: Deterministic Parsing

This parser uses **deterministic rules** and does NOT interpret colloquial shortcuts:

### ⚠️ Colloquial Expressions NOT Supported

```fish
# These follow STRICT positional rules:
cn2int 二百五     # 205 (NOT 250)
cn2int 一百一     # 101 (NOT 110)
cn2int 三千五     # 3005 (NOT 3500)
```

If you want these colloquial meanings, write them explicitly:

```fish
cn2int 二百五十   # 250 ✓
cn2int 一百一十   # 110 ✓
cn2int 三千五百   # 3500 ✓
```

### Why Deterministic?

Colloquial Chinese numerals are **context-dependent** and ambiguous:
- "二百五" could mean 250 or 205
- "一百一" could mean 110 or 101
- "三千五" could mean 3500 or 3005

This parser follows **explicit, unambiguous rules** for reliable parsing in scripts and automation.

## Supported Number Range

- **Minimum**: 0 (零/〇)
- **Maximum**: 999,999,999 (九億九千九百九十九萬九千九百九十九)

## Testing

This project uses [fishtape](https://github.com/jorgebucaran/fishtape) for testing.

### Install fishtape

```fish
fisher install jorgebucaran/fishtape
```

### Run Tests

```fish
fishtape tests/*.fish
```

### Test Coverage

- 1004+ test cases
- Tests organized by features:
  - Arabic digit passthrough
  - Single digits (lowercase/uppercase)
  - Tens, hundreds, thousands
  - Ten thousands (萬/万)
  - Hundred millions (億/亿)
  - Edge cases and implicit formats
  - Zero handling (零/〇)
  - Traditional/simplified mixing

## Architecture

```
cn2int (entry point)
  └─> _cn_map_digits (character mapping)
  └─> _parse_number (main parser)
       ├─> handles 億 (hundred millions)
       ├─> handles 萬 (ten thousands)
       └─> _parse_simple (0-9999 parser)
            ├─> handles 千 (thousands)
            ├─> handles 百 (hundreds)
            ├─> handles 十 (tens)
            └─> handles implicit digits
```

## Examples

### Complex Numbers

```fish
cn2int 九億八千七百六十五萬四千三百二十一
# 987654321

cn2int 壹億貳仟參佰肆拾伍萬陸仟柒佰捌拾玖
# 123456789

cn2int 三亿零五万零七
# 300050007
```

### Mixed Formats

```fish
cn2int 壹万貳仟參佰     # Mix uppercase with simplified 万
# 12300

cn2int 五億零叁萬        # Mix traditional 億 with simplified 叁
# 500030000
```

## Contributing

Contributions are welcome! Please ensure:

1. All tests pass: `fishtape tests/*.fish`
2. New features include test cases
3. Follow existing code style
4. Update documentation

## License

MIT License - see LICENSE file for details.

## Author

Created with ❤️ using Test-Driven Development (TDD).

---

**Note**: This is a deterministic parser optimized for reliability and unambiguous parsing, not for casual/colloquial Chinese numeral interpretation.
