#!/bin/bash

INPUT_FILE="all.txt"
OUTPUT_FILE="input_merged_clean.txt"

if [ ! -f "$INPUT_FILE" ]; then
    echo "❌ Error: $INPUT_FILE not found!"
    exit 1
fi

echo "🔧 Cleaning $INPUT_FILE -> $OUTPUT_FILE"

# 处理流程：
# 1. 在协议前缀前插入换行（解决粘连）
# 2. 将逗号替换为换行
# 3. 删除 Windows 换行符 \r
# 4. 删除行内 # 后面的注释部分
# 5. 删除行首尾空白
# 6. 删除空行
# 7. 仅保留包含 "announce" 的行（不区分大小写）
# 8. 排序去重

sed -E 's/(https?:\/\/|udp:\/\/|ws:\/\/|wss:\/\/|dns:\/\/)/\n\1/g' "$INPUT_FILE" \
    | tr ',' '\n' \
    | sed 's/\r$//' \
    | sed 's/[[:space:]]*#.*//' \
    | sed 's/^[[:space:]]*//;s/[[:space:]]*$//' \
    | sed '/^$/d' \
    | grep -i "announce" \
    | sort -u \
    > "$OUTPUT_FILE"

echo "✅ Done. $(wc -l < "$OUTPUT_FILE") unique trackers saved to $OUTPUT_FILE"