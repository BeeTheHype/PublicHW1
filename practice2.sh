
currentls=echo ls -la
echo $currentls
#above code outputs the folder contents the way HW1 asks

echo What is your name?
read my_name
echo "Hello $my_name, great job programming me!"


for i in 1 2 3 4
do
    echo "looping...i is set to $i"
done

inputstr=howdy
while [ "$inputstr" != "bye" ]
do 
    echo "Please type something! type bye to move on"
    read inputstr
    echo "You typed $inputstr"
done

echo "Howdy! Whaddaya say?"
while :
do
    read inputstr2
    case $inputstr2 in
        howdy)
            echo "Well howdy!"
            ;;
        yeehaw)
            echo "And a-yippee ki yay!"
            ;;
        adios)
            echo "See you later!"
            break
            ;;
        *)
            echo "Come again??"
            ;;
    esac
done
echo "Well alrighty!"