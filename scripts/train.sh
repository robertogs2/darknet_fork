model=model2 #model inside models folder
weight_id=last

cfg=../models/${model}/butterfly-ty4.cfg
data=../models/${model}/data/obj.data
weights=../models/other/weights/yolov4-tiny.conv.29
log=../models/${model}/logs/log_train.txt

../darknet detector train ${data} ${cfg} ${weights} -dont_show | tee ${log} --append
