#!/bin/bash

#python -m custom_robocasa.robocasa.scripts.dataset_states_to_obs --dataset /home/reuss/manten/vendor/custom_robocasa/custom_robocasa/datasets/v0.1/single_stage/kitchen_pnp/PnPCabToCounter/2024-04-24/demo.hdf5 --output_name demo_pc.hdf5 --num_procs  --pc_size 8192

doit() {
    echo "${1}"
    python -m custom_robocasa.robocasa.scripts.dataset_states_to_obs --dataset /home/reuss/manten/vendor/custom_robocasa/custom_robocasa/datasets/v0.1/single_stage/kitchen_pnp/${1}/demo.hdf5 --output_name demo_pc.hdf5 --num_procs 32 --pc_size 8192
}

# for value in PnPCabToCounter/2024-04-24 PnPCounterToCab/2024-04-24; do
#     doit $value
# done

# for value in PnPCounterToMicrowave/2024-04-27; do
#     doit $value
# done

# for value in PnPCounterToSink/2024-04-25; do
#     doit $value
# done

# for value in PnPCounterToStove/2024-04-26 PnPMicrowaveToCounter/2024-04-26; do
# for value in PnPMicrowaveToCounter/2024-04-26; do
#     doit $value
# done

for value in PnPSinkToCounter/2024-04-26_2; do
    doit $value
done

for value in PnPStoveToCounter/2024-05-01; do
    doit $value
done