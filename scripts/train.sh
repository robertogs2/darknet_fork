odel=model2 #model inside models folder
weight_id=last

cfg=../models/${model}/butterfly-ty4.cfg
data=../models/${model}/data/obj.data
weights=/media/DATA/rgutierrez/weights/model2/butterfly-ty4_last.weights
log=../models/${model}/logs/log_train.txt

../darknet detector train ${data} ${cfg} ${weights} -dont_show | tee ${log} --append
