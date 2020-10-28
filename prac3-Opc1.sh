#!/bin/bash

sudo groupadd AMSA -g 2304 #Creació del grup AMSA amb id 2304

sudo useradd user1 -g 2304 #Generacio primer usuari. El -g assigna al usuari al grup
sudo usermod -p 1234 user1 #Assignacio de la contrassenya 1234 a user1
echo Password user1:
sudo passwd user1

sudo useradd user2 -g 2304 #Generació segon usuari
sudo usermod -p 4567 user2 #Assignacio de la contrassenya 4567 al user2
echo Password user2:
sudo passwd user2

sudo useradd user3 -g 2304 #Generació tercer usuari
sudo usermod -p 8901 user3 #Assignació de la contrassenya 8901 al user3
echo Password user3:
sudo passwd user3

#Mostrem les configuracions
echo Directori de usuaris
cat /etc/passwd #Directori on es registren els usuaris
echo Directori de grups:
cat /etc/group #Directori que conte un els noms dels grups i un llistat dels usuaris que pertanyen a cada grup
echo Directori de constrassenyes:
sudo cat /etc/shadow #Directori on es troben les constrassenyes xifrades i ens dona informacio sobre caducitat i validesa dels contes

#Eliminar grup i usuaris
sudo userdel user1 #Eliminacio user1
sudo userdel user2 #Eliminacio user2
sudo userdel user3 #Eliminacio user3
sudo groupdel AMSA #Eliminacio grup
