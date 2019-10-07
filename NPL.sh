
    echo  ""
	echo  "$COL         ██╗      █████╗ ███████╗██╗   ██╗$CE v 1.0"
	echo  "$COL         ██║     ██╔══██╗╚══███╔╝╚██╗ ██╔╝$CE"
	echo  "$COL         ██║     ███████║  ███╔╝  ╚████╔╝ $CE   by "$COL"THE UNKNOWN"
	echo  "$COL         ██║     ██╔══██║ ███╔╝    ╚██╔╝  $CE"
	echo  "$COL    The  ███████╗██║  ██║███████╗   ██║  script$CE"
	echo  "$COL         ╚══════╝╚═╝  ╚═╝╚══════╝   ╚═╝   $CE"
	
	                 echo " LIST OF EXPERMIMENTS "
	                 echo "1) Study of Networking Commands" 
		    		 echo "2) Linux Network Configuration" 
					 echo "3) Setting up multiple Ip addresses on single LAN" 
					 echo "4) Using netstat and route commands to add/delete" 
					 echo "5) Using GUI Configuration tools to add/configure Ethernet card" 
					 echo "6) Configuring linux as a router by enabling IP forwarding" 
					 echo "7) Configuring remote login Services, telnet & ssh" 
					 echo "8) To configure Liux FTP server using VSFTPD" 
					 echo "9) To install and configure DNS server" 
					 echo "10) TO install and configure Web server" 
					 echo "Enter the number of experiment" 
					
read NUM

case $NUM in
	1)
while true
do

    echo "1. Host Name"
    echo "2. Ifconfig "
    echo "3. PING"
    echo "4. TRACEROUTE"
    echo "5. NSLOOKUP"
    echo "6. Restart Network Service"
    echo "0. Quit"
    
    echo "Enter Your Choice:" 
    read CHOICE
  
    case $CHOICE in
        1)
            HOST_NAME=$(hostname)
            echo $HOST_NAME
            ;;

        2)
            IFCONFIG=$(ifconfig)
            echo $IFCONFIG
            ;;
    
        
        3)
            echo "enter host"
            read HOST
            ping -c 3 $HOST
            ;;
        4) 
            echo "enter host"
            read HOST
            traceroute -w 1 $HOST
            ;;         
        5)
            echo "enter host"
            read HOST
            nslookup $HOST
            ;;         
        6)
            sudo service networking restart
            echo "Successfully restarted network service\n"
            ;;
        0) 
            echo "Bye..."
            break
            ;;


      
        *)
            echo "invalid choice"

    esac

done

	#  echo "Study of Networking Commands" 
			;;
	2) #! bin/bash


while true
do

    echo "1. Host Name"
    echo "2. Ifconfig "
    echo "3. PING"
    echo "4. Edit Network File"
    echo "5. ROUTE"
    echo "6. NSLOOKUP"
    echo "7. Restart Network Service"
    echo "0. Quit"
    
    echo "Enter Your Choice:" 
    read CHOICE
  
    case $CHOICE in
        1)
            HOST_NAME=$(hostname)
            echo $HOST_NAME
            ;;

        2)
            IFCONFIG=$(ifconfig)
            echo $IFCONFIG
            ;;
    
        
        3)
            echo "enter host"
            read HOST
            ping -c 3 $HOST
            ;;
        4)
            vi /etc/network/interfaces
            ;;
        5) 
            echo "enter host"
            read HOST
            traceroute -w 67 $HOST
            ;;         
        6)
            echo "enter host"
            read HOST
            nslookup $HOST
            ;;         
        7)
            sudo service networking restart
            echo "Successfully restarted network service\n"
            ;;
        0) 
            echo "Bye..."
            break
            ;;


      
        *)
            echo "invalid choice"

    esac

done
;;
3)
    while true
do

    echo "1. Host Name"
    echo "2. Ifconfig "
    echo "3. PING"
    echo "4. Edit Network File"
    echo "5. Copy Directory"
    echo "6. Remove Directory"
    echo "7. Restart Network Service"
    echo "0. Quit"
    
    echo "Enter Your Choice:" 
    read CHOICE
  
    case $CHOICE in
        1)
            HOST_NAME=$(hostname)
            echo $HOST_NAME
            ;;

        2)
            IFCONFIG=$(ifconfig)
            echo $IFCONFIG
            ;;
    
        
        3)
            echo "enter host"
            read HOST
            ping -c 3 $HOST
            ;;
        4)
            vi /etc/network/interfaces
            ;;
        5) 
            echo "enter directory1"
            read DIR1
            echo "enter directory2"
            read DIR2
            cp $DIR1 $DIR2
            echo "Successfully Copied"
            ;;         
        6)
            echo "enter directory"
            read DIR
            rm $DIR
            echo "Successfully removed"
            ;;         
        7)
            sudo service networking restart
            echo "Successfully restarted network service\n"
            ;;
        0) 
            echo "Bye..."
            break
            ;;


      
        *)
            echo "invalid choice"

    esac

done
;;
4)
while true
do
    echo "1.Display routing table"
    echo "2.Add gw routes"    
    echo "3.Service Network Restart"
    echo "4.Add netmask route"
    echo "5.Add IP"

    echo "Enter Your Choice:" 
    read CHOICE
    

    case $CHOICE in
        1)
            route -n
            ;;
        2)
            sudo route add default gw 192.168.1.1
            ;;
        3)
            sudo systemctl restart ifup@enp0s3

            ;;
        4)
            sudo route add -net 192.168.1.200 netmask 255.255.255.0 dev enp0s3
            ;;
        5)
            sudo vi /etc/network/interfaces
            ;;
        *)
        
            echo "invalid choice"
    esac


done
;;

    5)
        echo "Not compatible with this script!!"
    ;;

    6)
    while true
    do
    echo "1.Edit sysctl.conf"

    echo "Enter Your Choice:" 
    read CHOICE
    

    case $CHOICE in
        1)
            vi /etc/sysctl.conf
            ;;
        *)
            echo "invalid choice"
    esac

    done
    ;;
	7)
    while true 
    do

        echo "1.SSH i.e Enter a remote user"
        
        echo "2.SCP i.e secure file tranfer"
        echo "0. Quit"

        echo "Enter your choice"
        read choice
        case $choice in
            1) 
            echo "Enter the localadmin i.e aiktc or codept"
            read host;
            echo "Enter the IP address"
            read ip;
            sudo ssh $host@$ip

                ;;
            2)
            echo "What do you whant to tranfer??"
            echo "1. FILE"
            echo "2. FOLDER "
            echo "Enter your choice"
            read choice 
            case $choice in
                1)
                    echo "Enter the file name to be transfered"
                    read file_name
                    echo "Enter the localadmin i.e aiktc or codept"
                    read host
                    echo "Enter the IP address"
                    read ip
                    sudo scp $file_name $host@$ip:./
                    ;;
                2)
                    echo "Enter the folder name to be transfered"
                    read folder_name
                    echo "Enter the localadmin i.e aiktc or codept"
                    read host
                    echo "Enter the IP address"
                    read ip
                    sudo scp -r $folder_name $host@$ip:./
                    ;;
                0)
                    echo "Invalid choice"
                    break
                    ;;
                    
                    
            esac
            ;;
            0) 
            echo "Bye..."
            break
            ;;

                
        esac
    done
        ;;
     8)
while true
do
    echo "1.ADD IP"
    echo "2.PING Google"    
    echo "3.Install vsftpd packages"
    echo "4.Open Yum configuration file"
    echo "5.vsftpd restart"
    echo "6.Install FTP"
   

    echo "Enter Your Choice:" 
    read CHOICE
    

    case $CHOICE in
        1)
            sudo vi /etc/network/interfaces
            ;;
        2)
            ping -c 3 www.google.com
            service iptables stop
            ;;
        3)
            sudo apt-get install -y vsftpd 

            ;;
        4)
            vi /etc/vsftpd.conf
            ;;
        5)
            systemctl restart vsftpd
            ;;
        6)
            sudo apt-get install -y ftp
            ;;
        *)
        
            echo "invalid choice"
    esac


done
;;
9)
echo "Not supported with this script!!" 
;;
10)
while true
do
    echo "1.ADD IP"
    echo "2.PING Google"    
    echo "3.Install httpd packages"
    echo "4.Install mysql packages"
    echo "5.Start mysql service"
    echo "6.Install PHP server"
    echo "7.Create a new php file"
    echo "8.Run a php file in browser"
   

    echo "Enter Your Choice:" 
    read CHOICE
    

    case $CHOICE in
        1)
            sudo vi /etc/network/interfaces
            ;;
        2)
            ping -c 3 www.google.com
            
            ;;
        3)
            sudo apt-get install -y httpd 

            ;;
        4)
            sudo apt-get install -y mysql-server 
            ;;
        5)
            service mysqld start
            ;;
        6)
            sudo apt-get install php php-mysql
            ;;
        7)
            subl /var/www/html/
            ;;
        8)
            echo "Enter the file name and that file name should be in /var/www/html folder 
            otherwise give the file path followed by folder name";
            read name
            firefox localhost/$name

            
            ;;
        
        *)
        
            echo "invalid choice"
    esac


done
;;
        
esac