giturl=$1
folderpath=$2

if [ "$giturl" = "" ]; then 
    echo "Please check the format.\nExample: sh ./HW1.sh giturl folderpath"
    exit
fi
if [ "$folderpath" = "" ]; then
    echo "Please check the format.\nExample: sh ./HW1.sh giturl folderpath"
    exit
fi
#above code checks for parameters


if [ ! -d "$folderpath" ]; then
    mkdir $folderpath
    git clone $giturl $folderpath
    if [ $? -eq 0 ]; then
        echo "Success: Cloned from $giturl to $folderpath!"
    else
        echo "Failure: Failed to clone from $giturl to $folderpath :("
    fi
fi

if [ -d "$folderpath" ]; then
    git pull origin main
    if [ $? -eq 0 ]; then
        echo "Success: Pulled from $giturl to $folderpath!"
    else
        echo "Failure: Failed to pull from $giturl to $folderpath :("
    fi
fi





currentls=echo ls -la
echo $currentls
#above code outputs the folder contents the way HW1 asks