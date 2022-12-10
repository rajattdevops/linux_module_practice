#!/bin/bash
apt update

apt purge default-jre -y

apt purge openjdk-11* -y

if [[ $(java -version 2>&1) == *"OpenJDK"* ]]
        then
	        echo "Uninstallation failed"
	else
		echo "Unistallation successfull"
fi

