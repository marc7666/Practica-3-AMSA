#!/bin/bash

usr=`whoami`
if [ $usr == "root" ]
then
	echo "Configurant el sistema logging per a que escrigui a /var/log/prova.log"
	sudo touch /etc/rsyslog.d/30-mylog.conf
	sudo echo "/var/log/prova.log" > /etc/rsyslog.d/30-mylog.conf
	sudo echo "& ~" >> /etc/rsyslog.d/30-mylog.conf
	sudo rm -f /var/log/prova.log
	sudo service rsyslog restart
	echo "Escrivint els missatges"
	gcc ex3missatges.c -o ex3missatges
	./ex3missatges
	echo "Retornant a la configuració inicial"
	sudo rm -f /etc/rsyslog.d/30-mylog.conf
	echo "Fet"
	echo "Llegeix el fitxer /var/log/prova.log/ com a sudo per a veure els resultats"
else
	echo "ERROR: S'ha d'executar com a root"
fi
