if [ ! -d logdir  ];then
  mkdir logdir
fi

nohup python -u folder2lmdb.py -f /dataset/imagenet -s train --out /home/workspace/lushun/dataset/imagenet > logdir/ge_imagenet_train.log  2>&1 &
nohup python -u folder2lmdb.py -f /dataset/imagenet -s val --out /home/workspace/lushun/dataset/imagenet > logdir/ge_imagenet_val.log  2>&1 &
