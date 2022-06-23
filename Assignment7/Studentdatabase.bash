#!/bin/bash
clear
echo "1. Create a student database"
echo "2. view the database"
echo "3. insert record"
echo "4. delete a record"
echo "5. modify a record"
echo "6. result a particular student"
echo "7. exit"
echo "enter your choice"
read d
case $d in
	1) 
		echo "enter a rollnumber of student"
		read rn

		echo "enter a name of student"
		read nm

		echo "enter a sanskrit marks"
		read sk

		echo "enter  a marks in english"
		read eg

		echo "enter a marks in Hindi"
		read hn

		record="$rn $nm $sk $eg $hn"
		echo $record>$stud
		;;

	2)
		echo "Showing database of student"
		cat stud;;

	3)
		echo "enter a rollnumber of student"
		read rn

		echo "enter a name of student"
		read nm

		echo "enter a marks in sanskrit"
		read sk

		echo "enter a marks in english"
		read eg
		
		echo "enter a marks in hindi"
		read hn

		record="$rn $nm $sk $hn $eg"
		echo $record>>$stud
		;;

	4)
		echo "enter rollnumber"
		read rn

		grep ^$rn stud
		if [ $? -ne 0 ];
		then
			echo "enter for all rollnumber doesn't exit"
		else
			grep -v $rn stud>>mp
			cp tmp stud
			
			echo "deletion complete"
		fi
		;;
	5)
		echo "Enter roll number"
		read rn1
		grep ^$rn stud
		if [ $? -ne 0 ];
		then
			echo "record for all rollnumbers doesn't exit"
		else
			echo "enter a roll number"
			read rn

			echo "enter a name of the studnet"
			read nm

			echo "enter a marks in sanskrit"
			read sk

			echo "enter a marks in english"
			read eg

			echo "enter a marks in hindi"
			read hn
			record="$rn $nm $sk $eg $hn"
			var1=`expr $var - 1`
			head -$var1 stud>temp
			echo $record>>temp
			var3=`wc -1 < stud`
			var2=`expr $var3 - $var`
			tail -$var2 stud>>temp
			cp temp stud
		fi
		;;
	6)
		echo "enter roll number"
		read rn
		ecjo "printing result"
		grep ^$rn stud
		;;
	7);;
		
	*) ehco "enter right choice"
esac
	


