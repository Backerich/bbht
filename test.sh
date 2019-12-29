#instll java-jdk
if [[ -z "$JAVA_HOME" ]];then
echo "It looks like Java jdk is not installed, would you like to install it now"
choices=("yes" "no")
select choice in "${choices[@]}"; do
        case $choice in
                yes)
					echo "Installing Java JDK 11"
					sudo apt-get install openjdk-11-jre
					export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
					export PATH=$JAVA_HOME/bin:$PATH
					echo 'export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64' >> ~/.bashrc
					echo 'export PATH=$JAVA_HOME/bin:$PATH'	>> ~/.bashrc		
					source ~/.bashrc
					sleep 1
					break
					;;
				no)
					echo "Please install go and rerun this script"
					echo "Aborting installation..."
					exit 1
					;;
	esac	
done
fi