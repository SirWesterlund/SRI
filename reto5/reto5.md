# <center>Reto 5. Servidor Streaming</center>

<p>Instalo OBS y habilitamos el módulo libnginx-mod-rtmp, después añadimos el rtmp al final del fichero nginx.conf:<p>

<p align="center"> <img src="./r.png"></p>
<p align="center"> <img src="./rr.png"></p>

<p>Me voy a la configuración de OBS y pongo lo siguiente en "Ajustes" en el apartado de "Emisión":</p>

<p align="center"> <img src="./1.png"></p>

<p>Ahora vamos al VLC y en "Medio" > " Abrir ubicación de red" ponemos la siguiente red URL, le damos a iniciar transmisión desde el OBS y después a emitir en el VLC y debería aparecer la transmisión en ambos.

<p align="center"> <img src="./2.png"></p>