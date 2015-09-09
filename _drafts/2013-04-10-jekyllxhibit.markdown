---
layout: post
title: jekyllxhibit
homepage: https://github.com/colaborativa/jekyllxhibit
demo: http://jekyllxhibit.colaborativa.eu
date: 2013-04-10 17:10:06
licence_link: https://github.com/colaborativa/jekyllxhibit/blob/gh-pages/LICENSE
---
# Tutorial de la plantilla base *Jekyllxhibit*: creación de páginas Web por colaborativa.eu
Última actualización: 23 de Abril de 2013

## 1. Registro de dominio (opcional)

El primer paso sería registrar un dominio .ES o .COM. En caso de no haber registrado un dominio nuestra página web estará alojada en un subdominio de [GitHub][6]

> http://NOMBREUSUARIO.github.io 

## 2. Dar de alta en [GitHub][6]

Vamos a utilizar las siguientes tres herramientas para crear nuestra página web:

* *Jekyll*: es un simple generador de páginas web en html estático.
* *Prose.io*: es un editor de contenidos en formato *Jekyll*.
* *GitHub Pages*: aloja gratuitamente páginas generadas con *Jekyll*.

Nos damos de alta en [GitHub.com][6], ¡es muy fácil y gratis!

<a href="http://www.flickr.com/photos/50381188@N06/8637580247/" title="Paso-02-GitHub por colaborativa.eu, en Flickr"><img src="http://farm9.staticflickr.com/8244/8637580247_991f7df110.jpg" width="500" height="286" alt="Paso-02-GitHub"></a>

## 3. Copiar plantilla base *Jekyllxhibit* en nuestro usuario de [GitHub][6]

A continuación accedemos con nuestro usuario en [GitHub][6] y localizamos nuestra plantilla base *Jekyllxhibit* en:

> [https://github.com/colaborativa/jekyllxhibit][7]

 <a href="http://www.flickr.com/photos/50381188@N06/8638707576/" title="Paso-03-01-GitHub-Clonar por colaborativa.eu, en Flickr"><img src="http://farm9.staticflickr.com/8399/8638707576_0138553b93.jpg" width="500" height="286" alt="Paso-03-01-GitHub-Clonar"></a>

Hacemos click en **FORK this repo** localizado en la parte superior derecha y tendremos en nuestro usuario de [GitHub][6] una copia de la plantilla llamada *Jekyllxhibit*.

## 4. Renombrar plantilla [GitHub][6]

Un paso más antes de comenzar a añadir contenidos. Tenemos que renombrar la actual plantilla teniendo en cuenta que:

* Si es una pagina de *perfil* y no disponemos de dominio propio o vamos a utilizar un dominio propio la plantilla hay que llamarla siguiendo la nomenclatura: 

> NOMBREUSUARIO.github.io 

* Si es una pagina de *proyecto* y vamos a utilizar un subdominio dentro de nuestro dominio principal no importa el nombre que elijamos para la plantilla.

 De esta manera podremos acceder a nuestra página Web a través de la url: 

> http://nombreusuario.github.io

Para renombrarla hacemos click en la pestaña **Settings** del repositorio, introducimos el nuevo nombre y hacemos click en **Rename**. Llegado este punto hay que asegurarse que la sección **GitHub Pages** de **Settings** está activada y puede leerse: 

> Your site is published at http://www.nombreusuario.github.io

<a href="http://www.flickr.com/photos/50381188@N06/8663129822/" title="Paso-03-01-GitHub-Renombrar por colaborativa.eu, en Flickr"><img src="http://farm9.staticflickr.com/8255/8663129822_22c39377c1.jpg" width="500" height="338" alt="Paso-03-01-GitHub-Renombrar"></a>

## 5. Configurar plantilla [GitHub][6]

El archivo `CNAME` forma parte de nuestra plantilla *Jekyllxhibit* y tiene que ser editado teniendo en cuenta:

* Si vamos a utilizar un dominio propio el archivo `CNAME` debe contener el nombre de nuestro dominio, por ejemplo: `colaborativa.eu`. Habrá que esperar unos 10 minutos para ver el dominio actualizado.
* Si no disponemos de dominio propio, se accederá a nuestra página  a través de `NOMBREUSUARIO.github.io`. En este caso el archivo `CNAME` debe contener una línea en blanco.

Para editar el archivo `CNAME` ir a nuestra plantilla en [GitHub][6], veremos entonces la lista de archivos que la forman. Hacer click sobre el archivo `CNAME` y aparecerá la siguiente pantalla:

<a href="http://www.flickr.com/photos/50381188@N06/8662033087/" title="Paso-05-01-GitHub-Editar-CNAME por colaborativa.eu, en Flickr"><img src="http://farm9.staticflickr.com/8265/8662033087_806a19a1a0.jpg" width="500" height="251" alt="Paso-05-01-GitHub-Editar-CNAME"></a>

Hacer click en **Edit**, editarlo y hacer click en **Commit Changes** situado abajo a la derecha. 

<a href="http://www.flickr.com/photos/50381188@N06/8662033247/" title="Paso-05-02-GitHub-Editar-CNAME por colaborativa.eu, en Flickr"><img src="http://farm9.staticflickr.com/8255/8662033247_043b7ceeb7.jpg" width="500" height="398" alt="Paso-05-02-GitHub-Editar-CNAME"></a>

En el explorador ir a nombreusuario.github.com y ver la plantilla funcionando. ¡Ya podemos comenzar a añadir contenidos!

## 6. Descripción estructura plantilla [GitHub][6]

Brevemente describimos los archivos que componen la plantilla en [GitHub][6]:

* archivo _config.yml: almacena información de configuración de la plantilla. 
* directorio _layouts: plantillas en html que se utilizarán para visualizar los posts, en nuestro caso sólo disponemos de una llamada `default.html`. 
* directorio _posts: el contenido de nuestra página Web se localiza en este directorio, deben nombrarse siguiendo la nomenclatura **AÑO-MES-DIA-título.md**. El orden en el que aparecen los contenidos viene determinado por esta fecha. Cuenta con dos subdirectorios: 

    * directorio sections: incluye las secciones que aparecen en la barra de la izquierda. Cada sección tiene asociado un número de exhibits.

    * directorio exhibits: incluye nuestros protectos, artículos, noticias, etc. Cada exhibit está asociado a una sección concreta.

* directorio stylesheets: hojas de estilo en formato CSS.

## 7. Añadir Contenidos con [Prose.io][4]

Para comenzar a añadir contenidos iremos a:

> [http://prose.io][4]

y accederemos con nuestras credenciales de [GitHub][6], para ello hacer click en el botón **Authorize with GitHub**.

<a href="http://www.flickr.com/photos/50381188@N06/8638725787/" title="Paso-07-01-Proseio-Acceder por colaborativa.eu, en Flickr"><img src="http://farm9.staticflickr.com/8522/8638725787_9a2ec88a12.jpg" width="500" height="271" alt="Paso-07-01-Proseio-Acceder"></a>

[Prose.io][4] tendrá acceso a nuestra plantilla alojada en [GitHub][6] y nos permitirá añadir contenidos. [Prose.io][4] nos mostrará una lista de proyectos alojados en [GitHub][6], hacemos click en la plantilla que deseamos modificar y aparecerá la siguiente pantalla:

<a href="http://www.flickr.com/photos/50381188@N06/8661989797/" title="Paso-07-02-Proseio-Listado-01 por colaborativa.eu, en Flickr"><img src="http://farm9.staticflickr.com/8253/8661989797_b547459157.jpg" width="500" height="313" alt="Paso-07-02-Proseio-Listado-01"></a>

Podremos añadir o modificar contenidos en el directorio `exhibits`, que contiene nuestros proyectos, artículos, noticias, etc., y en el directorio `sections`, que contiene las secciones en las que se clasifican los exhibits y se muestran en la columna de la izquierda.

### 7.1 Editar secciones con [Prose.io][4]

Para editar una sección existente hacer click en el directorio `sections` y aparecerá el listado de secciones existentes:

<a href="http://www.flickr.com/photos/50381188@N06/8663096662/" title="Paso-07-03-Proseio-sections por colaborativa.eu, en Flickr"><img src="http://farm9.staticflickr.com/8252/8663096662_7ee1cb1267.jpg" width="500" height="313" alt="Paso-07-03-Proseio-sections"></a>

Hacemos click en la que deseamos modificar y aparecerá la siguiente barra de edición:

<a href="http://www.flickr.com/photos/50381188@N06/8638754525/" title="Paso-07-04-Proseio-sections-editar por colaborativa.eu, en Flickr"><img src="http://farm9.staticflickr.com/8532/8638754525_30afa7ff88.jpg" width="500" height="271" alt="Paso-07-04-Proseio-sections-editar"></a>

A continuación vamos a explicar las opciones de la barra de edición:

#### Formato *Markdown*

Los contenidos se escriben en formato de texto *Markdown*. Se trata de un lenguaje de marcado fácil y en el que se pueden insertar bloques de texto `HTML`. El formato *Markdown* genera archivos muy limpios y separa estilo de contenido, esto es positivo ya que puedes reutilizar el mismo contenido con distintos formatos.

Os recomendamos utilizar el siguiente editor online de *Markdown* para poder visualizar y editar al mismo tiempo:

> [http://jrmoran.com/playground/markdown-live-editor/][5]

Al hacer click en el botón **M** de la barra de edición nos aparecerá un pequeño y sencillo tutorial de la sintaxis *Markdown*:

<a href="http://www.flickr.com/photos/50381188@N06/8638769529/" title="Paso-07-05-Proseio-barra-edicion-markdown por colaborativa.eu, en Flickr"><img src="http://farm9.staticflickr.com/8106/8638769529_8a0f461062.jpg" width="500" height="396" alt="Paso-07-05-Proseio-barra-edicion-markdown"></a>

#### Cabecera con *Metadatos*

Todos los archivos contienen una pequeña cabecera con variables de configuración sencillas llamada **Metadata** y a continuación el contenido propiamente dicho de la sección o exhibit a editar. A través del botón **Metadata** podemos mostrar o ocultar esta cabecera, lo cual nos permitirá centrarnos en la edición del contenido.

<a href="http://www.flickr.com/photos/50381188@N06/8639873168/" title="Paso-07-06-Proseio-barra-edicion-metadata por colaborativa.eu, en Flickr"><img src="http://farm9.staticflickr.com/8539/8639873168_62718f54f7.jpg" width="500" height="396" alt="Paso-07-06-Proseio-barra-edicion-metadata"></a>

En el caso de las secciones sólo existirá la cabecera de *Metadatos*, la parte de contenidos estará vacía, y el único dato que tendremos que editar es el que corresponde a la etiqueta **title** que se refiere al título de la sección que aparecerá en la columna izquierda de la página Web. El resto de etiquetas permanecerán intactas.

#### Sección publicada

Otra opción de la barra de edición nos permite indicar si la sección se publicará en nuestra Web o no. Está representada por el icono estándard de **Herramientas**. Esta opción resulta de utilidad cuando estamos creando nuevas secciones que aún no hemos llenado de contenido por lo que nos interesa mantenerlas ocultas.

<a href="http://www.flickr.com/photos/50381188@N06/8639873292/" title="Paso-07-07-Proseio-barra-edicion-publicado por colaborativa.eu, en Flickr"><img src="http://farm9.staticflickr.com/8521/8639873292_08de43dce8.jpg" width="500" height="396" alt="Paso-07-07-Proseio-barra-edicion-publicado"></a>

#### Vista Preliminar

Al hacer click en el botón **Vista prelimitar**, representado con un icono de un ojo, veremos como se visualizará nuestra sección o exhibit en la página Web. En el caso de secciones al no existir contenido, sólo existe la cabecera de metadata, la vista preliminar mostrará una pantalla en blanco.

<a href="http://www.flickr.com/photos/50381188@N06/8638769937/" title="Paso-07-08-Proseio-barra-edicion-vistapreliminar por colaborativa.eu, en Flickr"><img src="http://farm9.staticflickr.com/8255/8638769937_22b9321aea.jpg" width="500" height="396" alt="Paso-07-08-Proseio-barra-edicion-vistapreliminar"></a>

#### Guardar y salir

Una vez editado el título de la sección debemos guardar los cambios. Para ello hacer click en el botón **Save** de la barra de edición y aparecerá la siguiente pantalla:

<a href="http://www.flickr.com/photos/50381188@N06/8639903062/" title="Paso-07-09-Proseio-barra-edicion-guardarysalir por colaborativa.eu, en Flickr"><img src="http://farm9.staticflickr.com/8384/8639903062_6c85fab690.jpg" width="500" height="396" alt="Paso-07-09-Proseio-barra-edicion-guardarysalir"></a>

A continuación hacer click en el botón **Commit** para confirmar los cambios. Cada vez que realizamos una modificación se registrarán junto con un mensaje que podemos personalizar si lo deseamos.

Si en el momento de guardar no estamos satisfechos con los cambios realizados podemos volver a la pantalla de edición haciendo click en el icono de **Prohibido**, situado junto al botón **Commit**.

### 7.2 Añadir fotos con [Prose.io][4] y [Flickr.com][9]

Para añadir fotos a uno de nuestros artículos situados en el directorio `exhibits` primero tendremos que seleccionar el archivo a través de [Prose.io][4] y entrar en la pantalla de edición.

<a href="http://www.flickr.com/photos/50381188@N06/8639973616/" title="Paso-07-10-Proseio-flickr por colaborativa.eu, en Flickr"><img src="http://farm9.staticflickr.com/8542/8639973616_c271f67bb5.jpg" width="500" height="396" alt="Paso-07-10-Proseio-flickr"></a>

Una manera fácil de almacenar las imágenes de nuestra página Web es a través del servicio gratuito que ofrece [Flickr.com][9]. Para ello tendremos que darnos de alta en [Flickr.com][9] y añadir las fotos. Para insertar una foto en uno de nuestros exhibits sólo hay que hacer click en el botón **Compartir** de [Flickr.com][9], copiar el código html asociado a la imagen y pegarlo en el archivo de nuestro exhibit en [Prose.io][4].

<a href="http://www.flickr.com/photos/50381188@N06/8639974016/" title="Paso-07-11-Proseio-flickr por colaborativa.eu, en Flickr"><img src="http://farm9.staticflickr.com/8117/8639974016_c2a77b12fa.jpg" width="500" height="289" alt="Paso-07-11-Proseio-flickr"></a>

En la siguiente captura de pantalla podemos ver la imagen insertada en nuestro exhibit.

<a href="http://www.flickr.com/photos/50381188@N06/8638875757/" title="Paso-07-13-Proseio-flickr por colaborativa.eu, en Flickr"><img src="http://farm9.staticflickr.com/8100/8638875757_867e85aa81.jpg" width="500" height="396" alt="Paso-07-13-Proseio-flickr"></a>

En la siguiente captura de pantalla podemos ver una vista preliminar de como se visualizaría en nuestra Web.

<a href="http://www.flickr.com/photos/50381188@N06/8638875923/" title="Paso-07-14-Proseio-flickr por colaborativa.eu, en Flickr"><img src="http://farm9.staticflickr.com/8111/8638875923_b088d5a880.jpg" width="500" height="396" alt="Paso-07-14-Proseio-flickr"></a>

Una vez concluida la edición, hacemos click en botón **Save**. A continuación hacer click en el botón **Commit** para confirmar los cambios. Cada vez que realizamos una modificación se registrarán junto con un mensaje que podemos personalizar si lo deseamos.

Si en el momento de guardar no estamos satisfechos con los cambios realizados podemos volver a la pantalla de edición haciendo click en el icono de **Prohibido**, situado junto al botón **Commit**.

<a href="http://www.flickr.com/photos/50381188@N06/8638878691/" title="Paso-07-15-Proseio-flickr por colaborativa.eu, en Flickr"><img src="http://farm9.staticflickr.com/8259/8638878691_d4e66bf223.jpg" width="500" height="396" alt="Paso-07-15-Proseio-flickr"></a>


### 7.3 Añadir vídeos con [Prose.io][4] y [vimeo.com][8]

Para añadir fotos a nuestros `exhibits` hay que seguir un proceso similar, recomendamos utilizar el servicio gratuito [vimeo.com][8]. El primer paso sería darse de alta en [vimeo.com][8] y subir el vídeo que queremos insertar en nuestra página Web. La siguiente captura muestra el formulario de alta de [vimeo.com][8].

<a href="http://www.flickr.com/photos/50381188@N06/8640024066/" title="Paso-07-16-Proseio-vimeo por colaborativa.eu, en Flickr"><img src="http://farm9.staticflickr.com/8099/8640024066_a1b65e15a3.jpg" width="500" height="396" alt="Paso-07-16-Proseio-vimeo"></a>

A continuación, accedemos a [vimeo.com][8] y añadimos nuestro primer vídeo. Para insertarlo en uno de nuestro `exhibits` habrá que hacer click en el botón **Share** situado en la esquina superior derecha del vídeo y copiar el texto situado bajo el título **Embed**.

<a href="http://www.flickr.com/photos/50381188@N06/8639974276/" title="Paso-07-12-Proseio-vimeo por colaborativa.eu, en Flickr"><img src="http://farm9.staticflickr.com/8522/8639974276_c5b2b83e89.jpg" width="500" height="289" alt="Paso-07-12-Proseio-vimeo"></a>

En [vimeo.com][8] accedemos al `exhibit` en el que deseamos insertar el vídeo y pegamos el texto de [vimeo.com][8].

<a href="http://www.flickr.com/photos/50381188@N06/8640024222/" title="Paso-07-17-Proseio-vimeo por colaborativa.eu, en Flickr"><img src="http://farm9.staticflickr.com/8108/8640024222_2c4ee838f7.jpg" width="500" height="396" alt="Paso-07-17-Proseio-vimeo"></a>

En el texto para la inserción del vídeo hay que hacer una comprobación antes de almacenar los cambios del `exhibit`. *Jekyll* no entiende correctamente aquellas variables en las que no se especifica ningún valor, esperamos que resuelvan este problema pronto. En el ejemplo de abajo se trataría de las variables: **webkitAllowFullScreen**, **mozallowfullscreen** y **allowFullScreen**.

```html
<iframe src="http://player.vimeo.com/video/58116607" width="500" height="281" frameborder="0"
webkitAllowFullScreen mozallowfullscreen allowFullScreen>
</iframe> <p><a href="http://vimeo.com/58116607">Montaje RepRapPro Huxley en Colaboratorio</a>
from <a href="http://vimeo.com/colaborativa">colaborativa</a> on 
<a href="http://vimeo.com">Vimeo</a>.
</p>
```

Para que el vídeo se inserte correctamente hay que editar el texto y eliminarlas. El texto anterior editado quedaría:

```html
<iframe src="http://player.vimeo.com/video/58116607"  width="500" height="281" frameborder="0"> 
</iframe> 
<p>
<a href="http://vimeo.com/58116607">Montaje RepRapPro Huxley en Colaboratorio</a> from 
<a href="http://vimeo.com/colaborativa">colaborativa</a> on <a href="http://vimeo.com">Vimeo</a>.
</p>
```

Haciendo click en el botón de **Vista preliminar** podemos comprobar que el vídeo se ha insertado correctamente en nuestro `exhibit`.

<a href="http://www.flickr.com/photos/50381188@N06/8638920807/" title="Paso-07-18-Proseio-vimeo por colaborativa.eu, en Flickr"><img src="http://farm9.staticflickr.com/8104/8638920807_5a5ef1c6eb.jpg" width="500" height="396" alt="Paso-07-18-Proseio-vimeo"></a>

## Instrucciones para configurar un dominio propio 

Podéis encontrar una guía completa elaborada por GitHub en este [enlace][10]. Uno de los pasos fundamentales es el siguiente:

* Configurar DNS: al dar de alta tu dominio tendrás que establecer un **A record** que apunte a la dirección IP de GitHub 204.232.175.78. Dependiendo de donde tengas contratado tu dominio las instrucciones para realizarlo serán ligeramente distintas.

## Créditos

La plantilla base *Jekyllxhibit* es un proyecto de código libre distribuido bajo [licencia MIT][1]. Los textos e imágenes bajo una licencia creative commons [CC BY 3.0 ES][2].

## Contacto

Puedes contactar con nosotros en info@colaborativa.eu para más información o visitar nuestra página Web [colaborativa.eu][3].

[1]: http://opensource.org/licenses/MIT
[2]: http://creativecommons.org/licenses/by/3.0/es/
[3]: http://colaborativa.eu
[4]: http://prose.io
[5]: http://jrmoran.com/playground/markdown-live-editor/
[6]: http://gitHub.com
[7]: https://github.com/colaborativa/jekyllxhibit
[8]: http://vimeo.com
[9]: http://flickr.com
[10]: https://help.github.com/articles/setting-up-a-custom-domain-with-pages





