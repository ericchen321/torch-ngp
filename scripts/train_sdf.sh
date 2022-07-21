#!/bin/bash

CONFIG_NAME="$1"
SHAPE_NAME="$2"

python main_sdf.py data/sdf/ours/${SHAPE_NAME}.obj \
--workspace workspace/${CONFIG_NAME}_${SHAPE_NAME} \
--fp16