#!/bin/bash -l        
#SBATCH --time=01:00:00
#SBATCH --ntasks=1
#SBATCH --mem=30g
#SBATCH --tmp=30g
#SBATCH --mail-type=ALL
#SBATCH --mail-user=xu000114@umn.edu
#SBATCH -p a100-4
#SBATCH --gres=gpu:1
#SBATCH --output=Train_SMB_inf_SSIF_data.txt

conda activate pytorch_a100

# This is the shell script to run SMB training.
run_task=Train_SMB_inf_SSIF_SF
output_vars=Q_pred_mm
rversion=hs32
n_steps=366
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
run_iter=$1

for train_years in 5 10 20 40 80 160
do

echo $run_iter $run_task $output_vars $rversion $n_steps $hidden_size $epochs $patience $learning_rate $sim_type $batch_size $input_size $dropout $nlayers $train_years
python3 Train_SMB_inf_SSIF_data_demo.py $run_iter $run_task $output_vars $rversion $n_steps $hidden_size $epochs $patience $learning_rate $sim_type $batch_size $input_size $dropout $nlayers $train_years
# python3 -m pdb Train_SMB_inf_SSIF_data_demo.py $run_iter $run_task $output_vars $rversion $n_steps $hidden_size $epochs $patience $learning_rate $sim_type $batch_size $input_size $dropout $nlayers $train_years
done