cd ../scripts


exp_dir="/localhome/xsa55/Xiaohao/DiffuScene/models/retrained"


####'diningrooms'
config="../config/text/diffusion_diningrooms_instancond_lat32_v_bert.yaml"
exp_name="diningrooms_bert"
#weight_file=$exp_dir/$exp_name/$exp_name.pt
weight_file="/local-scratch/localhome/xsa55/Xiaohao/DiffuScene/models/retrained/diningroom_148000"
threed_future='/localhome/xsa55/Xiaohao/DiffuScene/3d_front_preprocessed/threed_future_model_diningroom.pkl'

python  generate_diffusion.py $config  $exp_dir/$exp_name/gen_top2down_notexture_nofloor_ourcolor $threed_future  --weight_file $weight_file \
     --without_screen  --n_sequences 1000 --render_top2down --no_texture --without_floor  --clip_denoised --retrive_objfeats --new_color_palette

python  generate_diffusion.py $config  $exp_dir/$exp_name/gen_top2down_notexture_nofloor $threed_future  --weight_file $weight_file \
     --without_screen  --n_sequences 1000 --render_top2down --no_texture --without_floor  --clip_denoised --retrive_objfeats
