## Reto1. WEB de la empresa

Primero me creo una cuenta en No-Ip y me instalo un cliente de
****Cliente de Actualización Dinámica**** a través de la guía que me da
la propia web de
No-Ip **"westerlund.hopto.org"** es el nombre de host
***
![](./1000000000000385000000F9A49FD42A949F2961.png)![](./10000000000004D5000000DF6B9070F3CDB4C364.png)

Tras esto podemos elegir el cómo poner en marcha el noip. He usado
la manera de arrancarlo como servicio, entonces para esto he tenido que
irme a **/etc/systemd/system/** y lo he llamado noip2.service con
el siguiente
contenido

![](./10000000000001410000010B1AA1F2C0DE6CC23C.png)

Después reiniciamos el daemon con **systemctl daemon-reload** y tras
esto hacemos un **systemctl start noip2** y debería arrancar y podremos
ver su estado, tras esto si funciona tendremos que habilitarlo con
**systemctl enable noip2** y si todo funciona tendría que salir esto:

****![](./10000000000003840000014CEA2DB74A5D8E79B8.png)****


Ahora realizo la parte de tener una web con además una zona segura
con seguridad digest. Entonces, primero me creo la página web en
**/var/www/empresa/** y la zona segura en **/var/www/empresa/admin/**:

Después me copio el **000-default.conf** y lo llamo **empresa.conf** con
la siguiente configuración:

![](./10000000000001830000007A8D7AC5F31BC9E21D.png)

![](./100000000000024E000002922B59515457BE4A52.png)


Después por si no lo habías hecho, activas el modulo auth_digest con
**a2enmod auth_digest** para que funcione la autenticación digest y
reinicias el servicio apache2. Posteriormente creamos las credenciales
para la **"Zona Restringida"** (que así es como yo la llamo) con el
siguiente comando:\
\
sudo htdigest -c /etc/apache2/.htpasswd \"Zona Restringida\" pepe

![](./100000000000034D0000003B8857639D10D601FE.png)

Con esto ya tenemos las credenciales para la zona restringida. Ya
solo nos queda hacer un a2ensite empresa.conf  y poner en
/etc/hosts lo siguiente:

![](./10000000000001A1000000DFCD14EA4CFB5C570A.png)

Para ver si funciona en la máquina de la instancia, hagamos un curl
al nombre de dominio y si funciona sale la estructura de la web:\
\
![](./10000000000003D10000010F3BDDFD470AAC0A30.png)


****![](./10000000000003840000016683AEE38D25080461.png)![](./100000000000022C00000124902C3AC481CBAD5D.png)****

Después para obtener el certificado, instalamos certbot, tenemos los puertos 80 y 443 abiertos y ejecutamos el comando **certbot --apache** y seleccionamos nuestro dominio, y con eso tendríamos nuestra web segura porque nos genera nuestra web con los mismos parámetros pero en un ssl.conf. En mi caso lo llamé **empresa-ssl.conf**.
