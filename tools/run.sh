if [ ! -d logdir  ];then
  mkdir logdir
fi

nohup python -u folder2lmdb.py -f /home/train_model/data/imagenet -s train --out /home/train_model/data/imagenet > logdir/ge_imagenet_train.log  2>&1 &
nohup python -u folder2lmdb.py -f /home/train_model/data/imagenet -s val --out /home/train_model/data/imagenet > logdir/ge_imagenet_val.log  2>&1 &
