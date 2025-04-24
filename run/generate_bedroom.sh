cd ../scripts

exp_dir="/localhome/xsa55/Xiaohao/DiffuScene/models/pretrained/pretrained"

####'bedrooms'
config="../config/uncond/diffusion_bedrooms_instancond_lat32_v.yaml"
exp_name="bedrooms_uncond"
weight_file="$exp_dir/$exp_name/$exp_name.pt"
threed_future='/localhome/xsa55/Xiaohao/DiffuScene/3d_front_preprocessed/threed_future_model_bedroom.pkl'

# python  generate_diffusion.py $config  $exp_dir/$exp_name/gen_top2down_notexture_nofloor $threed_future  --weight_file $weight_file \
#     --without_screen  --n_sequences 1000 --render_top2down --no_texture --without_floor  --clip_denoised --retrive_objfeats
python  generate_diffusion.py $config  $exp_dir/$exp_name/gen_top2down_notexture_nofloor_ourcolor_1 $threed_future  --weight_file $weight_file \
     --without_screen  --n_sequences 1000 --render_top2down --no_texture --without_floor  --clip_denoised --retrive_objfeats --new_color_palette