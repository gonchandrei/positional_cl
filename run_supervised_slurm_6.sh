#!/usr/bin/bash

# load python module
module load python/anaconda3

source deactivate

# activate corresponding environment
source activate positional_cl

python train_supervised.py --device cuda:0 --batch_size 10 --epochs 100 --data_dir /local_ssd/projects/ACDC_pcl/labeled --lr 1e-3 --min_lr 1e-6 --dataset acdc --patch_size 352 352 \
--experiment_name supervised_acdc_pcl_sample_2_ --initial_filter_size 48 --classes 4 --enable_few_data --sampling_k 2 --restart --pretrained_model_path model_pcl.pth

python train_supervised.py --device cuda:0 --batch_size 10 --epochs 100 --data_dir /local_ssd/projects/ACDC_pcl/labeled --lr 5e-4 --min_lr 1e-6 --dataset acdc --patch_size 352 352 \
--experiment_name supervised_acdc_random_sample_6_ --initial_filter_size 48 --classes 4 --enable_few_data --sampling_k 6

python train_supervised.py --device cuda:0 --batch_size 10 --epochs 100 --data_dir /local_ssd/projects/ACDC_pcl/labeled --lr 5e-4 --min_lr 1e-6 --dataset acdc --patch_size 352 352 \
--experiment_name supervised_acdc_pcl_sample_6_ --initial_filter_size 48 --classes 4 --enable_few_data --sampling_k 6 --restart --pretrained_model_path model_pcl.pth

python train_supervised.py --device cuda:0 --batch_size 10 --epochs 100 --data_dir /local_ssd/projects/ACDC_pcl/labeled --lr 5e-4 --min_lr 1e-6 --dataset acdc --patch_size 352 352 \
--experiment_name supervised_acdc_pcl_retrained_sample_6_ --initial_filter_size 48 --classes 4 --enable_few_data --sampling_k 6 --restart --pretrained_model_path results/contrast_acdc_pcl_temp01_thresh035_2023-10-04_01-29-34/model/latest.pth

python train_supervised.py --device cuda:0 --batch_size 10 --epochs 100 --data_dir /local_ssd/projects/ACDC_pcl/labeled --lr 5e-4 --min_lr 1e-6 --dataset acdc --patch_size 352 352 \
--experiment_name supervised_acdc_simclr_retrained_sample_6_ --initial_filter_size 48 --classes 4 --enable_few_data --sampling_k 6 --restart --pretrained_model_path results/contrast_acdc_simclr_temp01_2023-10-04_02-43-46/model/latest.pth