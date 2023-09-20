# This is the shell script to run SMB training.
run_task=Train_SSample_inf_TFIF_SW
output_vars=SW_ENDmm
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

for train_years in 5 10 20 40 80 160
do
    for run_iter in 0 1 2 3 4
    do
        echo $run_iter $run_task $output_vars $rversion $n_steps $hidden_size $epochs $patience $learning_rate $sim_type $batch_size $input_size $dropout $nlayers
        python3 Train_SSample_inf_TFIF_data_demo.py $run_iter $run_task $output_vars $rversion $n_steps $hidden_size $epochs $patience $learning_rate $sim_type $batch_size $input_size $dropout $nlayers $train_years
        # python3 -m pdb Train_SSample_inf_TFIF_demo.py $run_iter $run_task $output_vars $rversion $n_steps $hidden_size $epochs $patience $learning_rate $sim_type $batch_size $input_size $dropout $nlayers
    done
done


# This is the shell script to run SMB training.
run_task=Train_SSample_inf_TFIF_SNO
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

for train_years in 5 10 20 40 80 160
do
    for run_iter in 0 1 2 3 4
    do
        echo $run_iter $run_task $output_vars $rversion $n_steps $hidden_size $epochs $patience $learning_rate $sim_type $batch_size $input_size $dropout $nlayers
        python3 Train_SSample_inf_TFIF_data_demo.py $run_iter $run_task $output_vars $rversion $n_steps $hidden_size $epochs $patience $learning_rate $sim_type $batch_size $input_size $dropout $nlayers $train_years
        # python3 -m pdb Train_SSample_inf_TFIF_demo.py $run_iter $run_task $output_vars $rversion $n_steps $hidden_size $epochs $patience $learning_rate $sim_type $batch_size $input_size $dropout $nlayers
    done
done


# This is the shell script to run SMB training.
run_task=Train_SSample_inf_TFIF_SF
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

for train_years in 5 10 20 40 80 160
do
    for run_iter in 0 1 2 3 4
    do
        echo $run_iter $run_task $output_vars $rversion $n_steps $hidden_size $epochs $patience $learning_rate $sim_type $batch_size $input_size $dropout $nlayers
        python3 Train_SSample_inf_TFIF_data_demo.py $run_iter $run_task $output_vars $rversion $n_steps $hidden_size $epochs $patience $learning_rate $sim_type $batch_size $input_size $dropout $nlayers $train_years
        # python3 -m pdb Train_SSample_inf_TFIF_demo.py $run_iter $run_task $output_vars $rversion $n_steps $hidden_size $epochs $patience $learning_rate $sim_type $batch_size $input_size $dropout $nlayers
    done
done