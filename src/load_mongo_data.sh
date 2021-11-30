DB_USER=${1:-my-user} 
DB_PW=${2:-my-password} 
DATA_FILES=${3:-./data/*.json} 

# go trough data files and import each collection
for f in $DATA_FILES
do
    basepath=$(basename $f) # get only filename without path
    echo "Processing $f file..."
    DATABASE=$(echo $basepath | grep -o -P '.*?(?=\__)') # get database name as everything before __
    COLLECTION=$(echo $basepath | grep -o -P '(?<=__).*(?=.json)') # get collection name as everything between __ and .json
    mongoimport --host mongodb --file $f -d $DATABASE -c $COLLECTION -u $DB_USER -p $DB_PW --authenticationDatabase admin
done

## to clean up folder: rm -rf $DATA_FOLDER 