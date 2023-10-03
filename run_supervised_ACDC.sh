# python train_supervised.py --device cuda:0 --batch_size 10 --epochs 100 --data_dir ACDC/labeled --lr 1e-3 --min_lr 1e-6 --dataset acdc --patch_size 352 352 \
# --experiment_name supervised_acdc_random_sample_2_ --initial_filter_size 48 --classes 4 --enable_few_data --sampling_k 2


# python train_supervised.py --device cuda:0 --batch_size 10 --epochs 100 --data_dir ACDC/labeled --lr 1e-3 --min_lr 1e-6 --dataset acdc --patch_size 352 352 \
# --experiment_name supervised_acdc_pcl_sample_2_ --initial_filter_size 48 --classes 4 --enable_few_data --sampling_k 2 --restart --pretrained_model_path silver-sound-366_checkpoint_last_epoch_190.ckpt

python train_supervised.py --device cuda:0 --batch_size 10 --epochs 100 --data_dir ACDC/labeled --lr 1e-3 --min_lr 1e-6 --dataset acdc --patch_size 272 272 \
--experiment_name supervised_acdc_random_patch_size_272_sample_2_ --initial_filter_size 48 --classes 4 --enable_few_data --sampling_k 2