#!/bin/bash

echo "please enter username"

read username

echo "How do you want to sirt data? Enter c or m"

read sortby

echo "How many lines you need? Enter any number"

read lines

current_user=$(whoami)

#running_processes=$(ps aux --sort -rss | grep $username)

if [[ "$username" == "$current_user" ]]
	then
		
		if [[ "$sortby" == "m" ]]
			then 
				echo "Sorting data by memory"	
				
				running_processes=$(ps aux --sort -rss | grep $username | head -n $lines)

				echo -e "Hi $username, your processes are \n $running_processes"
		
			elif [[ "$sortby" == "c" ]]
				then
					echo "Sorting data by cpu usage"

					running_processes=$(ps aux --sort -pcpu | grep $username | head -n $lines)
				
					echo -e "Hi $username, your processes are \n$running_processes"
		else
			echo "Invalid entry"
		fi

elif [[ "$username" != "$currentuser" ]]

	then
		echo "Invalid username, please enter username again"
	
		read new_username
	

		 if [[ "$new_username" == "$current_user" ]]
	        	then
        	        	if [[ "$sortby" == "m" ]]
                	        	then
                        	        	echo "Sorting data by memory"

                                		running_processes=$(ps aux --sort -rss | grep $new_username | head -n $lines)

	                               		 echo -e "Hi $new_username, your processes are \n$running_processes"
        	        	elif [[ "$sortby" == "c" ]]
                	        	then
                        	        	echo "Sorting data by cpu usage"

                               		 running_processes=$(ps aux --sort -pcpu | grep $new_username | head -n $lines)

                               		 echo -e "Hi $new_username, your processes are \n$running_processes"
  				 else
                       		 echo "Invalid sortby entry"
               			 fi
else
        echo "You don't know correct username,fraud!"

fi
fi
