$TTL 86400  ; Tiempo de vida en caché (en segundos)

javi.com.   IN  SOA   ns1.javi.com. admin.javi.com. (
                  2023101001 ; Número de serie
                  3600       ; Tiempo de actualización (1 hora)
                  1800       ; Tiempo de reintentos (30 minutos)
                  604800     ; Tiempo de expiración (7 días)
                  86400 )    ; Tiempo mínimo en caché (1 día)

javi.com.  IN  NS  ns1.javi.com.
javi.com.  IN  NS  ns2.javi.com.
ns1.javi.com.  IN A  56.23.45.3
ns2.javi.com.  IN A   56.23.45.3
www     IN  A     56.23.45.3
ftp     IN  A     56.23.45.3
@       IN  MX 10  mail.javi.com.
mail    IN  A     45.67.34.2

