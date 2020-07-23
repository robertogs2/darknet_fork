model=butterfly-tiny-yolov4 #model inside models folder
weight_id=last

cfg=../models/${model}/butterfly-tiny-yolov4.cfg
data=../models/${model}/data/obj.data
weights=../models/${model}/backup/butterfly-tiny-yolov4_${weight_id}.weights
log=../models/${model}/logs/log_train.txt

../darknet detector train ${data} ${cfg} ${weights} -map | tee ${log} --append
