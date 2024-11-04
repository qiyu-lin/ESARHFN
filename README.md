# ESARHFN-PyTorch-master

## Dependencies
* Python 3.6
* PyTorch >= 1.0.0
* numpy
* skimage
* **imageio**
* matplotlib
* tqdm
* cv2 >= 3.xx (Only if you want to use video input/output)

## Code
Clone this repository into any place you want.
```bash
git clone https://github.com/qiyu-lin/ESARHFN.git
cd ESARHFN
```

## Quickstart (Demo)
You can test our super-resolution algorithm with your images. Place your images in ``test`` folder. (like ``test/<your_image>``) We support **png** and **jpeg** files.

You can find the result images from ```experiment/test/results``` folder.

## Dataset
Our Wafer datasets now can be accessed at {https://pan.baidu.com/s/1AGrJTjLuw0HhQojnBxvcPg},extraction code:trbs

## Train
 python main.py --model ESARHFN --save ESARHFN_BIX4_wafer --scale 4 --n_resgroups 8 --n_resblocks 20 --n_feats 64  --reset --chop --save_results --print_model --patch_size 192 

## Test
 python main.py --model ESARHFN --n_resgroups 8 --n_resblocks 20 --n_feats 64 --pre_train /home/user1/ESARHFN-PyTorch-master/experiment/ESARHFN_BIX4_wafer/model/model_best.pt --test_only --save_results --chop --save ESARHFN_BIX4_result
