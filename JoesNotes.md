# Unique Specific Coding Enviroment
* need to run the tensorflow program in the "Anaconda Prompt"
* activate the "tensorflow" virtual environment

# Understanding the Effects of the Network
* So the network doesn't produce the same picture everytime
* I generated two different pictures and diff'd them
* [ImageMagick] compare image1 image2 -compose src diff.png
  * The resulting image had some differences
  * So I can only assume there is indeed some noise that goes into this type of generation

# Added A Bash Script To Do Batch Style Translation
 * Currently Loops over all the images in INPUT folder
 * Apply the filters in the CHECKPOINTS folder
 * And outputs them to the OUTPUT folder