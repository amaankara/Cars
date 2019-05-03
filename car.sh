#! /bin/bash
#Car.sh
#Amaan Karachiwala
i=1
n=1
while [ "$i" = "$n" ]
do
        echo "Select an option from the menu by entering the number"
        echo "1) Add a car"
        echo "2) List the car in the inventory file"
        echo "3) Quit program"
        read option
        b=1
        o=2
        p=3
        case "$option" in
                "$b") echo "Enter the year of the car"
                        read year
                        echo "Enter the make of the car"
                        read make
                        echo "Enter the model of the car"
                        read model
                        car="$year $make $model"
                        echo "$car" >> My_old_car;;
                "$o") echo "Displaying the invetory file"
                        cat My_old_car;;
                "$p") echo "Goodbye"
                        i=0;;
                *) echo "incorrect menu-option selected";;
        esac
done

