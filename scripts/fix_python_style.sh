#!/bin/bash

# exit when any command fails
set -e

pip_version=23.1.2
line_length=100

msg="""
To use this script you need to install dependencies as follows:\n
    1. python -m pip install --upgrade pip==${pip_version}\n
    2. pip install black==22.3.0 flake8==5.0.4 isort==5.12.0 colorama\n
"""
echo -e $msg

# Check import order
echo " "
echo "Fixing import order with isort"
echo "=============================="
isort --profile black \
      --multi-line 3 \
      --trailing-comma \
      --force-grid-wrap 0 \
      --use-parentheses \
      --ensure-newline-before-comments \
      --skip-gitignore \
      --skip-glob="python/umap_learn/*" \
      --extend-skip-glob="python/tutorials/*" \
      --extend-skip-glob="*_pb2.py" \
      --extend-skip-glob="*_pb2_grpc.py" \
      --line-length ${line_length} \
      --thirdparty "arize" \
      python/ sdk/python/

# Check black formatting
echo " "
echo "Fixing format with black"
echo "========================"
black --line-length ${line_length} \
      --extend-exclude=".*_pb2.py|.*_pb2_grpc.py|python\/umap_learn\/.*|python\/tutorials\/.*|python\/data_generation\/.*|.*.ipynb"\
      python/ sdk/python/

# Run flake8
echo " "
echo "Checking with flake8"
echo "===================="
flake8 --max-line-length $((line_length+10)) \
       --extend-exclude=*_pb2.py,*_pb2_grpc.py,python/umap_learn/*,python/tutorials/* \
       --ignore=E203,E266,W503 \
       python/ sdk/python/
