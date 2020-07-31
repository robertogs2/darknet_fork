echo -n > train.txt
echo -n > test.txt

train_f () {
  folder=$1
  for file in ${folder}/*.png; do
    echo "$1${file##*/}" >> train.txt
  done
}

test_f () {
  folder=$1
  for file in ${folder}/*.png; do
    echo "$1${file##*/}" >> test.txt
  done
}

parent=/media/DATA/asolis/Monarch_Butterfly_Data/

train_f "${parent}/synth_data/1Butterfly/"
train_f "${parent}/synth_data/2Butterflies/"
train_f "${parent}/synth_data/4Butterflies/"
train_f "${parent}/synth_data/16Butterflies/"

test_f "${parent}/synth_data/8Butterflies/"