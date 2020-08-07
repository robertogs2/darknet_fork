model=model2

data=../models/${model}/data/obj.data
cfg=../models/${model}/butterfly-ty4.cfg
folder=/media/DATA/rgutierrez/weights/${model}

result=""
echo -n "" > log.txt
for file in ${folder}/*.weights; do
    echo ${file} >> log.txt
    ../darknet detector map ${data} ${cfg} ${file} 1>>log.txt
done

