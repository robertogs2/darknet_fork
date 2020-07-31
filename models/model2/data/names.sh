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

parent=/media/DATA/rgutierrez/

train_f "${parent}/synth/1Butterfly/"
train_f "${parent}/synth/2Butterflies/"
train_f "${parent}/synth/4Butterflies/"
train_f "${parent}/synth/16Butterflies/"
train_f "${parent}/false/"

test_f "${parent}/synth/8Butterflies/"