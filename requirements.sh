# If bash command fails, build should error out
set -e

##### Install specific package versions with pip #####
# pip3 install pandas==0.20.3


##### Add files to the datasets/ folder on the live project #####
# A list of files in datasets/ separated by space, needs to be manually updated
FILES=""
# The URL where the assets of the project lives
ASSETURL=
# Where the datasets will be compied on the Project image.
DATADIR=/home/repl/datasets

mkdir -p $DATADIR
for FILE in $FILES
do
	wget -O $DATADIR/$FILE $ASSETURL/$FILE
done