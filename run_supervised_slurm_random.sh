#!/usr/bin/bash

# load python module
module load python/anaconda3

source deactivate

# activate corresponding environment
source activate positional_cl

# train random on acdc dataset
python train_supervised.py --device cuda:0 --batch_size 10 --epochs 100 --data_dir /local_ssd/projects/ACDC_pcl/labeled --lr 1e-3 --min_lr 1e-6 --dataset acdc --patch_size 352 352 \
--experiment_name supervised_acdc_random_sample_2_ --initial_filter_size 48 --classes 4 --enable_few_data --sampling_k 2