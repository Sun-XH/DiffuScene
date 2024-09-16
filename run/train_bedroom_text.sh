cd ../scripts

exp_dir="../models"

#### bedrooms
config="../config/text/diffusion_bedrooms_instancond_lat32_v_bert.yaml"
exp_name="diffusion_bedrooms_instancond_lat32_v_bert"
python train_diffusion.py $config $exp_dir --experiment_tag $exp_name  --with_wandb_logger
