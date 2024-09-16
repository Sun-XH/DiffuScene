cd ../scripts

exp_dir="../models"

#### livingrooms
config="../config/text/diffusion_livingrooms_instancond_lat32_v_bert.yaml"
exp_name="diffusion_livingrooms_instancond_lat32_v_bert"
python train_diffusion.py $config $exp_dir --experiment_tag $exp_name  --with_wandb_logger