#!/usr/bin/bash
#SBATCH --time=00:10:00
#SBATCH -A NAISS2025-5-98
#SBATCH --gpus-per-node=T4:1
#SBATCH -J mnist_CLIP
#SBATCH -o logs/train_%j.out
#SBATCH -e logs/train_%j.err 

EXE="apptainer exec --nv /cephyr/users/<username>/Alvis/<dir>/example.sif python3"


${EXE} tester.py