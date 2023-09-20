#!/bin/bash -l        
#SBATCH --time=2:00:00
#SBATCH --ntasks=1
#SBATCH --mem=30g
#SBATCH --tmp=30g
#SBATCH --mail-type=ALL
#SBATCH --mail-user=xu000114@umn.edu
#SBATCH -p a100-4
#SBATCH --gres=gpu:1
#SBATCH --output=Train_SSMB_inf_SSIF_winsize_SW.txt

conda activate pytorch_a100


# This is the shell script to run SSMB training.
run_task=Train_SSMB_inf_SSIF_SF
output_vars=Q_pred_mm
rversion=hs32
hidden_size=32
epochs=500
patience=50
learning_rate=0.01
sim_type=full_wsl
batch_size=64
input_size=7
dropout=0
# number of RNN layers
nlayers=1
train_years=160
run_iter=$1

for n_steps in 14 30 90 180
do
    echo $run_iter $run_task $output_vars $rversion $n_steps $hidden_size $epochs $patience $learning_rate $sim_type $batch_size $input_size $dropout $nlayers
    python3 Train_SSMB_inf_SSIF_winsize_demo.py $run_iter $run_task $output_vars $rversion $n_steps $hidden_size $epochs $patience $learning_rate $sim_type $batch_size $input_size $dropout $nlayers $train_years
done
