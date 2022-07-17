#!/bin/bash

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
    source scripts/train_nerf.sh default blender $scene_name
done