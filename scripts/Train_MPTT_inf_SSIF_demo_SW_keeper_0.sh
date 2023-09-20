run_task=Train_MPTT_keeper_0_inf_SSIF_SW
output_vars=SW_ENDmm
rversion=hs32
n_steps=366
hidden_size=32
# epochs=500
epochs=200
patience=50
learning_rate=0.01
sim_type=full_wsl
batch_size=64
input_size=7
dropout=0
# number of RNN layers 
nlayers=1
epoch_warmup=0
stride=183
keeper=0

for run_iter in 5
do
    echo $run_iter $run_task $output_vars $rversion $n_steps $hidden_size $epochs $patience $learning_rate $sim_type $batch_size $input_size $dropout $nlayers $stride $keeper
    python3 Train_MPTT_inf_SSIF_demo.py $run_iter $run_task $output_vars $rversion $n_steps $hidden_size $epochs $patience $learning_rate $sim_type $batch_size $input_size $dropout $nlayers $epoch_warmup $stride $keeper
done
