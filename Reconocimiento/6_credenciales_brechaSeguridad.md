# Presentasión del Apartado

La seguridad de la información es un tema crítico en el mundo digital actual, especialmente cuando se trata de __datos sensibles como contraseñas, información financiera o de identidad.__ Los ataques informáticos son una amenaza constante para cualquier empresa u organización, y una de las principales técnicas utilizadas por los atacantes es la explotación de las credenciales y brechas de seguridad.

Una de las formas más comunes en que los atacantes aprovechan las brechas de seguridad es mediante el uso de leaks de bases de datos. Estos leaks pueden ser el resultado de errores de configuración, vulnerabilidades en el software o ataques malintencionados. Cuando una base de datos se ve comprometida, los atacantes pueden acceder a una gran cantidad de información sensible, como nombres de usuario, contraseñas y otra información personal.

Una vez que los atacantes tienen acceso a esta información, pueden utilizarla para realizar ataques de fuerza bruta, phishing y otros ataques de ingeniería social para acceder a sistemas y cuentas protegidas. En algunos casos, los atacantes pueden incluso vender esta información en el mercado negro para que otros atacantes la utilicen.

Es importante entender que muchas de estas bases de datos filtradas y vendidas en línea son accesibles públicamente y en algunos casos, incluso se venden por una pequeña cantidad de dinero. Esto significa que cualquier persona puede acceder a esta información y utilizarla para llevar a cabo ataques malintencionados.

A continuación, se proporciona el enlace a la utilidad online de ejemplo que se muestra en esta clase:

### DeHashed: https://www.dehashed.com/

# Apuntes
Se coloca el dominio de la compañia en correspondiente, y reporta la contraseña en texto plano..
- Algunas estan hasheadas, no en texto plano
- Ante un Joomla\Wordpress : joomscan -> Analisis de vulnerabilidades y reconocimiento en la web.

# Tecnologia
- Whatweb : permite saber que tecnologias se ocupa detras de la web. Asi como el gestor de contenido.
    - whatweb https://masarq.cl 
        - https://masarq.cl [200 OK] Country[UNITED STATES][US], HTML5, HTTPServer[cloudflare], IP[104.21.68.79], MetaGenerator[Astro v5.12.0], Open-Graph-Protocol[website], Script[module], Title[Bienvenido | +Arq], UncommonHeaders[access-control-allow-origin,nel,referrer-policy,x-content-type-options,report-to,cf-cache-status,cf-ray,alt-svc]
    - whatweb https://arqmas.com
        - https://arqmas.com [302 Found] Country[UNITED STATES][US], HTTPServer[Kestrel], IP[13.223.25.84], RedirectLocation[https://www.hugedomains.com/domain_profile.cfm?d=arqmas.com]
        - https://www.hugedomains.com/domain_profile.cfm?d=arqmas.com [200 OK] ColdFusion, Cookies[site_version,site_version_phase], Country[RESERVED][ZZ], Frame, HTML5, HTTPServer[cloudflare], IP[172.67.70.191], JQuery, Open-Graph-Protocol[website], Script[text/javascript], Title[Arqmas.com is for sale | HugeDomains], UncommonHeaders[lb,cf-cache-status,report-to,nel,cf-ray,server-timing], X-Powered-By[ASP.NET], YouTube

            - Kestrel : es un servidor web de ASP.NET Core, funciona como servidor HTTP predeterminado. Usa directamente en solicitudes desde internet para procesar solicitudes desde Internet o detras de un servidor Proxy inverso como Nginx o IIS.
            - Tengine : servidor web open source similar a Nginx desarrollado por Taobao (Empresa grupo Alibaba - China), se basa en Nginx.
            - Nginx => es un software de código abierto, conocido por su alto rendimiento y estabilidad, que funciona como servidor web, proxy inverso, balanceador de carga y caché de contenido. OPEN SOURCE licenciado bajo la Licencia BSD simplificada.
            - jQuery => Es una biblioteca de JavaScript de código abierto, rápida y con numerosas funciones, diseñada para simplificar la manipulación del HTML, el manejo de eventos, la creación de animaciones y las peticiones AJAX
                - __BUSCAR VULNERABILIDADES POR LAS VERSIONES QUE APAREZCAN__
- Wappalyzer
- BuiltWith