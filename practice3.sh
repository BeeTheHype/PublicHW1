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
git clone $giturl $folderpath


currentls=echo ls -la
echo $currentls
#above code outputs the folder contents the way HW1 asks