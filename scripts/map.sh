model=butterfly-tiny-yolov4

data=../models/${model}/obj.data
cfg=../models/${model}/butterfly-tiny-yolov4.cfg
folder=../models/${model}/backup

result=""
echo -n "" > log.txt
for file in ${folder}/*.weights; do
    echo ${file} >> log.txt
    ./darknet detector map ${data} ${cfg} ${file} 1>>log.txt
done

