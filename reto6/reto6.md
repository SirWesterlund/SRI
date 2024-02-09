# <center>Reto 6. Servidor de correo electrónico</center>

<p>He usado la guía legendaria de server-world.info y he seguido literalmente los pasos que realiza, aquí tienes los links:</p>

# POSTFIX
https://www.server-world.info/en/note?os=Ubuntu_20.04&p=mail&f=1

<p>Tras esto, el puerto 25 se abre.</p>

# DOVECOT
https://www.server-world.info/en/note?os=Ubuntu_20.04&p=mail&f=2

<p>Después de esto instalo mailutils y añado un usuario nuevo en mi caso "westerlund" como lo hace la guía en el apartado "Add Mail User Accounts" en el siguiente link:</p>

# MAIL USER ACCOUNTS

https://www.server-world.info/en/note?os=Ubuntu_20.04&p=mail&f=3

<p>Después de eso, podemos probar a enviar un correo a nosotros mismos y si todo funciona, estos se almacenarán en /Maildir/cur</p>

<p align="center"> <img src="./purebee.png"></p>

# SSL CERTIFICATES

https://www.server-world.info/en/note?os=Ubuntu_20.04&p=ssl&f=2

<p>Creo el certificado SSL para usar el puerto 587 instalando certbot y ejecutando el siguiente comando tras haber instalado certbot:</p>

<code>certbot certonly --standalone -d westerlund460.duckdns.org</code>

<p align="center"> <img src="./buenisima2.png"></p>

# SSL/TLS SETTINGS

https://www.server-world.info/en/note?os=Ubuntu_20.04&p=mail&f=5

<p>Tras obtener el certificado, debo cambiar el contenido en los ficheros main.cf, master.cf y 10-ssl.conf como hace en la guía:</p>

<p align="center"> <img src="./maincf.png"></p>
<p align="center"> <img src="./mastercf.png"></p>
<p align="center"> <img src="./ssl.png"></p>

<p>Y ahora reinicamos postfix y dovecot y se nos quedan abiertos los puertos que tocan:</p>

<p align="center"> <img src="./puertos.png"></p>

# THUNDERBIRD

<p>Configuramos en el Thunderbird nuestro correo:</p>

<p align="center"> <img src="./buena5.png"></p>
<p align="center"> <img src="./buena6.png"></p>

<p>Ahora vamos a la configuración manual para ver si verifica:</p>

<p align="center"> <img src="./si.png"></p>

<p>Ahora veremos si tiene en la bandeja de entrada los correos, he mandado un correo a propósito para ver si lo recibe:</p>

<p align="center"> <img src="./test.png"></p>
<p align="center"> <img src="./test2.png"></p>