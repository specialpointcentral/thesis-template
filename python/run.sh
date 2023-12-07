#!/bin/env bash

if ls *.py 1> /dev/null 2>&1; then
    for file in *.py
    do
        if command -v python3 &>/dev/null; then
            python3 "$file" quiet savepdf
        # 如果python3不可用，则使用python运行.py文件
        elif command -v python &>/dev/null; then
            python "$file" quiet savepdf
        else
            echo "No python3 interpreter found."
            exit 1
        fi
    done
fi
