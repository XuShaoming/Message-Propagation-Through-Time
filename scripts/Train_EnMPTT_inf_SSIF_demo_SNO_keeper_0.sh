# This is the shell script to run the experiment.
run_task=Train_EnMPTT_keeper_0_inf_SSIF_SNO
output_vars=SNOmm
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
epoch_warmup=10
stride=183
keeper=0

for run_iter in 10 11 12 13 14
do
    echo $run_iter $run_task $output_vars $rversion $n_steps $hidden_size $epochs $patience $learning_rate $sim_type $batch_size $input_size $dropout $nlayers $stride $keeper
    python3 Train_EnMPTT_inf_SSIF_demo.py $run_iter $run_task $output_vars $rversion $n_steps $hidden_size $epochs $patience $learning_rate $sim_type $batch_size $input_size $dropout $nlayers $epoch_warmup $stride $keeper
done