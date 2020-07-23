data=aaa/butterfly-tiny-yolov4-augmented/obj.data
cfg=aaa/butterfly-tiny-yolov4-augmented/butterfly-tiny-yolov4.cfg
folder=/home/roberto/Code/Github/darknet/aaa/butterfly-tiny-yolov4-augmented/backup
result=""
echo -n "" > log.txt
for file in ${folder}/*.weights; do
    echo ${file} >> log.txt
    ./darknet detector map ${data} ${cfg} ${file} 1>>log.txt
done

