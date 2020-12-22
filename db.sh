#! /bin/bash
service  mysql start    
mysql  -u root -p -e  


 banner() {
	
	
	clear
	
	printf "   \e[33;1m ><<<<<          ><       ><<< ><<<<<<      ><       ><< ><<         ><         ><< <<  ><<<<<<<< \e[0m\n"
	printf "   \e[33;1m ><<   ><<      >< <<          ><<         >< <<     ><    ><<      >< <<     ><<    ><<><<      \e[0m\n"
	printf "   \e[33;1m ><<    ><<    ><  ><<         ><<        ><  ><<    ><     ><<    ><  ><<     ><<      ><<      \e[0m\n"
	printf "   \e[33;1m ><<    ><<   ><<   ><<        ><<       ><<   ><<   ><<< ><      ><<   ><<      ><<    ><<<<<<  \e[0m\n"
	printf "   \e[33;1m ><<    ><<  ><<<<<< ><<       ><<      ><<<<<< ><<  ><     ><<  ><<<<<< ><<        ><< ><<      \e[0m\n"
	printf "   \e[33;1m ><<   ><<  ><<       ><<      ><<     ><<       ><< ><      >< ><<       ><< ><<    ><<><<      \e[0m\n"
	printf "   \e[33;1m ><<<<<    ><<         ><<     ><<    ><<         ><<><<<< ><< ><<         ><<  ><< <<  ><<<<<<<<\e[0m\n"
	printf "\n                                                                                                          \e[0m\n"
	printf "   \e[92m[\e[37;1m+\e[92m]\e[0m\e[33;1m Tool Created by      (jdsingh)\e[0m\n"
	printf "\n"
	
	
}
banner






echo "1 Show databases"
echo "2 Create new Database"
echo "3 Show tables"
echo "4 Create new table "
echo "5 Delete Database"
echo "6 Delete Table"

read menu


if [[ $menu == 1 ]] ; then 
mysql  -e "SHOW DATABASES"
elif
  [[ $menu == 2 ]] ; then 
  echo "Enter Database Name "
  read dbname1
  mysql -e "CREATE DATABASE $dbname1"
 
 elif
   [[ $menu == 3 ]] ; then 
   echo "Enter Database Name "
   read dbname 
   mysql  -D $dbname -e  "SHOW TABLES"

elif
 
 [[ $menu == 4 ]] ; then 
 echo " USE Database name "
 read dbname2
 echo "Enter Table Name "
 read tablename
 echo "Enter Fields Name  "
 read  field
 echo  "Enter Data Type"
 read  datatype
 echo "Not null"
 read not
 echo "premary key "
 read premary 
 mysql -D  $dbname2 -e  " CREATE TABLE $tablename ( $field $datatype $not $premary )" 

elif
  [[  $menu == 5 ]] ; then
  echo "Delete Database Name"
  read delete
  mysql  -e  "DROP DATABASE $delete "


elif 
  [[ $menu == 6 ]] ; then
  echo "Enter Database Name "
  read dbname3
  echo "Enter Table Name "
  read tbname2
  mysql -D $dbname3 -e "DROP TABLE $tbname3"





else
echo "Database Not Valid "
fi 
