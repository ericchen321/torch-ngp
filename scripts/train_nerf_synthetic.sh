#! /bin/bash

# define shape names
declare -a scene_names=(
    "chair"
    "drums"
    "ficus"
    "hotdog"
    "lego"
    "materials"
    "mic"
    "ship")

for scene_name in ${scene_names[@]}; do
    python main_nerf.py data/nerf/nerf_synthetic/$scene_name \
    --workspace workspace/$scene_name \
    --mode blender \
    --bound 1.0 \
    --scale 0.8 \
    --dt_gamma 0 \
    --color_space linear
done