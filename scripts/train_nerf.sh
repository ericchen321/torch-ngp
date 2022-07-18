#!/bin/bash

CONFIG_NAME="$1"
DATASET="$2"
SCENE="$3"

if [ $CONFIG_NAME == "default" ]; then
    color_space="linear"
else
    color_space="srgb"
fi

if [ $DATASET == "blender" ]; then
  DATA_DIR="data/nerf/nerf_synthetic/${SCENE}/"
elif [ $DATASET == "llff" ]; then
  DATA_DIR="data/nerf/nerf_llff_data/${SCENE}/"
else
  echo "Error! Dataset name not recognized"
  exit 1
fi

python main_nerf.py $DATA_DIR/ \
    --workspace workspace/${CONFIG_NAME}_${SCENE} \
    --bound 1.0 \
    --scale 0.8 \
    --dt_gamma 0 \
    --color_space $color_space