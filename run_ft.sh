source /root/miniconda3/etc/profile.d/conda.sh
conda activate mvsnerf2

for SCENE in lego hotdog mic chair ship drums ficus materials
do
    CUDA_VISIBLE_DEVICES=0  python train_mvs_nerf_finetuning_pl.py  \
    --dataset_name blender --datadir /host/data/NeRF_Data/nerf_synthetic/$SCENE \
    --expname $SCENE-ft  --with_rgb_loss  --batch_size 1024  \
    --num_epochs 1 --imgScale_test 1.0 --white_bkgd  --pad 0 \
    --ckpt ./ckpts/mvsnerf-v0.tar --N_vis 1
done