#!/bin/bash

CONFIG_NAME="$1"
SHAPE_NAME="$2"
RESOLUTION="$3"
ITERS="$4"

set -x
python main_sdf.py \
data/sdf/ours/${SHAPE_NAME}.obj \
--workspace workspace/${CONFIG_NAME}_${SHAPE_NAME} \
--iters $ITERS \
--resolution $RESOLUTION
mv \
workspace/${CONFIG_NAME}_${SHAPE_NAME}/results/output.ply \
workspace/${CONFIG_NAME}_${SHAPE_NAME}/results/${SHAPE_NAME}_${RESOLUTION}.ply
