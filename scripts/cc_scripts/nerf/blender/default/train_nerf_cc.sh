#!/bin/bash
#SBATCH --array=0
#SBATCH --time=02:30:00
#SBATCH --account=def-rhodin
#SBATCH --job-name=tr_default_blender_torch-ngp
#SBATCH --gres=gpu:v100l:1
#SBATCH --mem=24G
module load python/3.8
module load StdEnv/2020
module load cuda/11

cd /home/gxc321/
source TorchNGPEnv/bin/activate
cd /home/gxc321/scratch/torch-ngp/

source scripts/cc_scripts/nerf/blender/default/train_nerf_per_task_cc.sh $SLURM_ARRAY_TASK_ID
