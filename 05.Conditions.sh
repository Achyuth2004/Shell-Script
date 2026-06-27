#! /bin/bash

#-ge,-le,-gt,-lt,-eq,-ne
# marks=$1
# if [ $marks -ge 90 ]; then
#     echo "Grade: A"
# elif [ $marks -ge 80 ]; then
#     echo "Grade: B"
# elif [ $marks -ge 70 ]; then
#     echo "Grade: C"
# elif [ $marks -ge 60 ]; then
#     echo "Grade: D"
# else
#     echo "Grade: F"
# fi

day=$(date +"%A")

case $day in 
    Monday)
        echo "Today is Monday"
        ;;
    Friday)
        echo "Almost weekend!"
        ;;
    Saturday|Sunday)
        echo "Weekend vibes!"
        ;;
    *)
        echo "Midweek days are so-so."
        ;;
esac
   
