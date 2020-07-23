data=aaa/butterfly-tiny-yolov4-augmented/obj.data
cfg=aaa/butterfly-tiny-yolov4-augmented/butterfly-tiny-yolov4.cfg
weights=/home/roberto/Code/Github/darknet/aaa/butterfly-tiny-yolov4-augmented/backup/butterfly-tiny-yolov4_last.weights
log=aaa/butterfly-tiny-yolov4-augmented/log.txt

./darknet detector train ${data} ${cfg} ${weights} -map | tee ${log} --append
