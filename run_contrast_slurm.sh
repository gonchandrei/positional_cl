#!/usr/bin/bash

# load python module
module load python/anaconda3

source deactivate

# activate corresponding environment
source activate positional_cl

# train pcl on acdc dataset
python train_contrast.py --device cuda:0 --batch_size 32 --epochs 300 --data_dir /local_ssd/projects/ACDC_pcl/unlabeled --lr 0.1 --do_contrast --dataset acdc --patch_size 352 352 \
--experiment_name contrast_acdc_simclr_temp01_ --slice_threshold 0.35 --temp 0.1 --initial_filter_size 48 --classes 512 --contrastive_method simclr