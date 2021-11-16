conda create --name mvsnerf-test    
conda activate mvsnerf-test
# pip install pytorch-lightning==1.3.5 torch==1.8
pip install imageio pillow scikit-image opencv-python config-argparse lpips configargparse kornia==0.5 warmup_scheduler torch==1.8 pytorch-lightning==1.3.5


pip install configargparse
kornia warmup_scheduler
pip install test-tube


CUDA_VISIBLE_DEVICES=0  python train_mvs_nerf_pl.py \
    --with_depth  --imgScale_test 1.0 \
    --expname mvs-nerf-is-all-your-need \
    --num_epochs 6 --N_samples 128 --use_viewdirs --batch_size 1024 \
    --dataset_name dtu \
    --datadir /data/mvs_training/dtu \
    --N_vis 6



conda env remove --name 



CUDA_VISIBLE_DEVICES=0  python train_mvs_nerf_pl.py \
    --with_depth  --imgScale_test 1.0 \
    --expname mvs-nerf-is-all-your-need \
    --num_epochs 6 --N_samples 128 --use_viewdirs --batch_size 1024 \
    --dataset_name dtu \
    --datadir /host/data/mvs_training/dtu \
    --N_vis 6