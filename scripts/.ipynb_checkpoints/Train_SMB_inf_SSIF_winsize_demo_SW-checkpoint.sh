conda activate pytorch_a100

run_task=Train_SMB_inf_SSIF_SW
output_vars=SW_ENDmm
rversion=hs32
n_steps=366
hidden_size=32
epochs=5
patience=50
learning_rate=0.01
sim_type=full_wsl
batch_size=64
input_size=7
dropout=0
# number of RNN layers 
nlayers=1
train_years=160
run_iter=10

for n_steps in 14 30 90 180
do
    echo $run_iter $run_task $output_vars $rversion $n_steps $hidden_size $epochs $patience $learning_rate $sim_type $batch_size $input_size $dropout $nlayers $train_years
    python3 Train_SMB_inf_SSIF_winsize_demo.py $run_iter $run_task $output_vars $rversion $n_steps $hidden_size $epochs $patience $learning_rate $sim_type $batch_size $input_size $dropout $nlayers $train_years
    # python3 -m pdb Train_SMB_inf_SSIF_winsize_demo.py $run_iter $run_task $output_vars $rversion $n_steps $hidden_size $epochs $patience $learning_rate $sim_type $batch_size $input_size $dropout $nlayers $train_years
done