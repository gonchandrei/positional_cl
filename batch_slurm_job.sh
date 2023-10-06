# sbatch -J p_simclr --output=../logs/p_simclr.out --error=../logs/p_simclr.err --mem=48G --nodelist=chameleon --gres=gpu:1 --partition=master --cpus-per-task=24 run_contrast_slurm.sh
# sbatch -J pcl_eval --output=../logs/pcl_eval.out --error=../logs/pcl_eval.err --mem=48G --nodelist=chameleon --gres=gpu:1 --account=deadline --partition=deadline --cpus-per-task=24 run_supervised_slurm.sh

# sbatch -J simclr_eval --output=../logs/sim_eval.out --error=../logs/sim_eval.err --mem=48G --nodelist=chameleon --gres=gpu:1 --partition=master --cpus-per-task=24 run_supervised_slurm_simclr.sh

sbatch -J pcleval2 --output=../logs/pcleval2.out --error=../logs/pcleval2.err --mem=48G --nodelist=chameleon --gres=gpu:1 --partition=master --cpus-per-task=24 run_supervised_slurm_random.sh