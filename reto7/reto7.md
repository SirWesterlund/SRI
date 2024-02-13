# <center>Reto 7. Monitorización de un servidor</center>

<p>Creamos la red docker y nos bajamos la imagen de prometheus y hacemos el "docker run"</p>

<p align="center"> <img src="./cap1.png"></p>
<p align="center"> <img src="./docker-run.png"></p>

<p>Configuramos lo siguiente para prometheus también:</p>

<p align="center"> <img src="./prometeus-yaml.png"></p>

<p>Accedemos a la web:</p>

<p align="center"> <img src="./prometeus-web.png"></p>

<p>Nos bajamos la imagen de cAdvisor y hacemos el "docker run":</p>

<p align="center"> <img src="./cadvisor-run.png"></p>

<p>Accedemos a la web:</p>

<p align="center"> <img src="./cAdvisor.png"></p>

<p>Hacemos un docker run del docker "node-exporter":</p>

<p align="center"> <img src="./docker-run2.png"></p>

<p>Accedemos a la web:</p>

<p align="center"> <img src="./node-exporter.png"></p>

<p>Ahora es el turno de grafana:</p>

<p align="center"> <img src="./docker-run3.png"></p>

<p>Accedemos a la web:</p>

<p align="center"> <img src="./grafana.png"></p>

<p>Usamos de credenciales usuario admin y contraseña admin aunque diga que no es seguro y entramos:</p>

<p align="center"> <img src="./bienvenido.png"></p>

<p>Ahora creamos el dashboard para el prometheus por ejemplo:</p>

<p align="center"> <img src="./dashboard.png"></p>

<p>Y si ha funcionado nos sale esto:</p>

<p align="center"> <img src="./va.png"></p>

<p>Ahora nos queda importar el dashboard:</p>

<p align="center"> <img src="./import.png"></p>

<p>Nos vamos ahora a "Home" > "Dashboards" > "Import dashboard", le damos a "load" a la derecha del "1860" y ya nos debería funcionar y aparecer lo siguiente:</p>

<p align="center"> <img src="./done.png"></p>

<p>Ahora tenemos el docker monitorizado.</p>