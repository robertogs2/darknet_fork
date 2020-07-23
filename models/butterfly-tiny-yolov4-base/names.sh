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

train_f "/home/roberto/Documents/pdg/data/4Butterflies/cameraA/"
train_f "/home/roberto/Documents/pdg/data/4Butterflies/cameraB/"
train_f "/home/roberto/Documents/pdg/data/8Butterflies/CameraA/${file##*/}"
train_f "/home/roberto/Documents/pdg/data/8Butterflies/CameraB/${file##*/}"
train_f "/home/roberto/Documents/pdg/data/16Butterflies/CameraA/${file##*/}"
train_f "/home/roberto/Documents/pdg/data/16Butterflies/CameraB/${file##*/}"
train_f "/home/roberto/Documents/pdg/data/16Butterflies/CameraC/${file##*/}"
train_f "/home/roberto/Documents/pdg/data/32Butterflies/CameraA/${file##*/}"
train_f "/home/roberto/Documents/pdg/data/32Butterflies/CameraB/${file##*/}"
train_f "/home/roberto/Documents/pdg/data/32Butterflies/CameraC/${file##*/}"

test_f "/home/roberto/Documents/pdg/data/4Butterflies/cameraC/${file##*/}" 
test_f "/home/roberto/Documents/pdg/data/8Butterflies/CameraC/${file##*/}" 