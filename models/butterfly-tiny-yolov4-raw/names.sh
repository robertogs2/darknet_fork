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
train_f "/home/roberto/Documents/pdg/data/8Butterflies/CameraA/"
train_f "/home/roberto/Documents/pdg/data/8Butterflies/CameraB/"
train_f "/home/roberto/Documents/pdg/data/16Butterflies/CameraA/"
train_f "/home/roberto/Documents/pdg/data/16Butterflies/CameraA_old_augmented/"
train_f "/home/roberto/Documents/pdg/data/16Butterflies/CameraB/"
train_f "/home/roberto/Documents/pdg/data/16Butterflies/CameraC/"
train_f "/home/roberto/Documents/pdg/data/32Butterflies/CameraA/"
train_f "/home/roberto/Documents/pdg/data/32Butterflies/CameraB/"
train_f "/home/roberto/Documents/pdg/data/32Butterflies/CameraC/"

test_f "/home/roberto/Documents/pdg/data/4Butterflies/cameraC/" 
test_f "/home/roberto/Documents/pdg/data/8Butterflies/CameraC/" 