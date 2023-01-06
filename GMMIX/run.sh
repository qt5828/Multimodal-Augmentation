
date='221014'
note='MSCOCO'

projectroot='./'

#make log folder
logfolder=${projectroot}/log/${date}/${note}
mkdir ${logfolder} -p

CUDA_VISIBLE_DEVICES=0 python clip_mod_sph.py --dataset coco --name ${date}_${note}_FT >& ${logfolder}/log_FT.log & \
CUDA_VISIBLE_DEVICES=1 python clip_mod_sph.py --dataset coco --neg_mix --mmmix=1.0      --name ${date}_${note}_MM >& ${logfolder}/log_MM.log & \


