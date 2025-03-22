#!/bin/bash

#python -m custom_robocasa.robocasa.scripts.dataset_states_to_obs --dataset /home/reuss/manten/vendor/custom_robocasa/custom_robocasa/datasets/v0.1/single_stage/kitchen_pnp/PnPCabToCounter/2024-04-24/demo.hdf5 --output_name demo_pc.hdf5 --num_procs  --pc_size 8192

doit() {
    echo "${1}"
    python -m custom_robocasa.robocasa.scripts.dataset_states_to_obs --dataset /home/reuss/manten/vendor/custom_robocasa/custom_robocasa/datasets/v0.1/single_stage/${1}/demo.hdf5 --output_name demo_pc.hdf5 --num_procs 32 --pc_size 8192 --keep_full_pc
}

# doit kitchen_pnp/PnPCabToCounter/2024-04-24
doit kitchen_pnp/PnPCounterToCab/2024-04-24
doit kitchen_pnp/PnPCounterToMicrowave/2024-04-27
doit kitchen_pnp/PnPCounterToSink/2024-04-25
doit kitchen_pnp/PnPCounterToStove/2024-04-26
doit kitchen_pnp/PnPMicrowaveToCounter/2024-04-26
doit kitchen_pnp/PnPSinkToCounter/2024-04-26_2
doit kitchen_pnp/PnPStoveToCounter/2024-05-01

doit kitchen_doors/CloseDoubleDoor/2024-04-29
doit kitchen_doors/CloseSingleDoor/2024-04-24
doit kitchen_doors/OpenDoubleDoor/2024-04-26
doit kitchen_doors/OpenSingleDoor/2024-04-24

# doit kitchen_drawer/CloseDrawer/2024-04-30
# doit kitchen_drawer/OpenDrawer/2024-05-03

# doit kitchen_stove/TurnOffStove/2024-05-02
# doit kitchen_stove/TurnOnStove/2024-05-02

# doit kitchen_sink/TurnOffSinkFaucet/2024-04-25
# doit kitchen_sink/TurnOnSinkFaucet/2024-04-25
# doit kitchen_sink/TurnSinkSpout/2024-04-29

# doit kitchen_coffee/CoffeePressButton/2024-04-25
# doit kitchen_coffee/CoffeeServeMug/2024-05-01
# doit kitchen_coffee/CoffeeSetupPot/2024-04-25
