Mi Spacemacs
=

<br>
[![Built with Spacemacs](https://cdn.rawgit.com/syl20bnr/spacemacs/442d025779da2f62fc86c2082703697714db6514/assets/spacemacs-badge.svg)](http://github.com/syl20bnr/spacemacs)

<br>
<!-- markdown-toc start - Don't edit this section. Run M-x markdown-toc-generate-toc again -->
**Tabla de contenidos**

- [Acerca de](#acerca-de)
- [Instalación](#instalación)
- [Dependencias](#dependencias)
    - [Javascript](#javascript)
    - [React](#react)
- [Configuración](#configuración)
- [Atajos](#atajos)
    - [org-mode](#org-mode)
    - [markdown-mode](#markdown-mode)
    - [ag](#ag)
    - [General](#general)
- [Dotgen](#dotgen)
- [Spacebadge](#spacebadge)
- [Licencia](#licencia)

<!-- markdown-toc end -->

<br>
Acerca de
=========

<br>
Este repositorio contiene mis archivos de configuración para [Spacemacs](http://spacemacs.org/). Esta configuración está orientada en su mayoría a lenguajes web. En la misma se incluye soporte para:

<br>
 * PHP, Python y Javascript (`js2-mode`).
 * Versionado con `version-control` y `git` (Magit).
 * Snippets con `yasnippet` y `auto-yasnippet`.
 * `ag` para búsquedas en proyectos.
 * Sass con `scss-mode`.

<br>
El archivo también incluye una configuración genérica para `org-mode`. En el caso de que quieras forkear esta configuración tené en cuenta los pasos extra de configuración en la secciones [Dependencias](#dependencias) y [Configuración](#configuración).

<br>
Instalación
===========

<br>
Antes de instalar te conviene realizar un backup de tus archivos de configuración. La instalación se realiza clonando el repo de la siguiente manera:

<br>
``` shell
 $ git clone https://github.com/emaphp/spacemacs.d .spacemacs.d
```

<br>
Dependencias
============

<br>
Para que todo funcione correctamente necesitás instalar un par de cosas:

<br>
 * npm (para herramientas Javascript)
 * ag (para búsquedas en proyectos)

<br>
En el caso de que estés utilizando Ubuntu 16 podés instalar una versión actualizada de npm siguiendo [esta guía](https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-ubuntu-16-04).

<br>
Javascript
----------

<br>
Para trabajar con las layers `javascript` y `react` necesitás instalar los siguientes paquetes npm:

<br>
 * tern (autocompletado)
 * js-beautify (formato)
 * jshint (chequeo de errores)

<br>
Estos paquetes se instalan globalmente:

<br>
``` shell
 $ sudo npm install -g tern jshint js-beautify
```

<br>
Para chequeo de sintaxis utilizamos `eslint`. El listado de paquetes necesarios es el siguiente:

<br>
 * eslint (sintaxis)
 * eslint-plugin-import
 * esling-config-airbnb (configuración genérica de [Airbnb](https://github.com/airbnb/javascript))

<br>
Estos paquetes son simplemente para configurar `eslint` y también se instalan globalmente:

<br>
``` shell
 $ sudo npm install -g eslint eslint-plugin-import eslint-config-airbnb
```

<br>
Es recomendable crear los archivos `.eslintrc` y `.jsbeautifyrc` en nuestro proyecto. Estos pueden crearse con los atajos `SPC o d e` y `SPC o d j`. El listado completo de atajos para creación de `dotfiles` puede verse en la sección [Dotgen](#dotgen).

<br>
Configuración
=============

<br>
En el hook `user-init` modifico el tamaño de fuente por defecto a `15` (Spacemacs lo setea a `13`). Quizás quieras modificar esto a algo más de tu gusto. En `user-config` vas a encontrar una pequeña sección de *Customización* que define estos valores de configuración:

<br>
 * `custom-web-mode-indent`: La indentación para `web-mode` y modos Javascript. Valor por defecto: `2`.
 * `custom-c-mode-style`: El estilo de sintaxis para lenguaje C. Valor por defecto: `k&r`.
 * `custom-org-mode-dir`: La carpeta que contendrá nuestros archivos para `org-mode`. Valor por defecto: `~/gitlab/org`.
 * `custom-org-mode-agenda-dir`: La carpeta que contendrá los archivos para `org-agenda`. Valor por defecto: `~/gitlab/org/agenda`.
 * `custom-org-mode-capture-file`: El archivo utilizado por `org-capture`. Valor por defecto: `notas.org`.
 * `custom-org-mode-agenda-key`: La combinación usada para acceder al archivo de notas gestionado por `org-capture`. Valor por defecto: `(kbd "<f12>")`.

<br>
Los valores de configuración utilizados para `org-mode` están pensados para gestionar las notas y tareas dentro de un repositorio. Esto es bastante conveniente porque más tarde podés administrarlas como un proyecto más.

<br>
Atajos
======

<br>
La última parte de la configuración define atajos útiles para distintos modos:

<br>
org-mode
--------

<br>
 * `SPC o c` : Invoca a `org-capture` (desde cualquier modo).
 * `SPC o C` : Invoca a `org-cut-subtree`.
 * `SPC o o` : Copia la URL del enlace bajo el cursor.
 * `[F12]`   : Abre el archivo de notas utilizado por `org-capture`.

<br>
markdown-mode
-------------

<br>
 * `SPC o t` : Invoca a `markdown-toc-generate-toc` para generar una tabla de contenidos del documento.

<br>
ag
--

<br>
 * `SPC o p` : Invoca a `ag-project` para realizar búsquedas en el proyecto actual. Los resultados se listan en un buffer aparte.
 * `SPC o k` : Invoca a `ag-kill-buffers`. Este comando cierra todos los buffers de búsqueda creados por `ag`.

<br>
General
-------

<br>
 * `C-c C-K` : Copia una línea entera. Útil en casos de encontrarnos en buffers sin `evil` (microbuffer).
 * `C-+` y `C--` : Permiten aumentar y reducir el tamaño de la fuente actual.
 * `C-;` : Un alias de `M-;` que permite utilizar comentarios simples (`//`) en archivos Javascript y Sass.
 * `SPC o s` : Invoca a `just-one-space`. Este comando reduce a `1` el número de espacios entre 2 elementos.
 * `SPC o h` : Escapa el código HTML en el texto seleccionado.

<br>
Dotgen
======

<br>
`dotgen` es una pequeña utilidad para generar `dotfiles` específicos para herramientas Javascript. Esta extensión crea los archivos dentro de la carpeta raíz de un proyecto, por lo que no funcionará si no estamos dentro de uno. Los atajos de `dotgen` se encuentran bajo el prefijo `SPC o d`:

<br>
  * `SPC o d e` : Crea un archivo `.eslintrc`.
  * `SPC o d i` : Crea un archivo `.eslintignore`.
  * `SPC o d j` : Crea un archivo `.jsbeautifyrc`.
  * `SPC o d b` : Crea un archivo `.babelrc`.
  * `SPC o d w` : Crea un archivo `.bowerrc`.
  * `SPC o d h` : Crea un archivo `.jshintrc`.
  * `SPC o d I` : Crea un archivo `.jshintignore`.

<br>
`dotgen` usa un solo valor de configuración llamado `custom-dotgen-dir`, el cual define la carpeta con las plantillas para estos archivos. El valor por defecto es `~/.spacemacs.d/dotgen` y lo podés encontrar en la parte de customización de `user-config`. Las plantillas para estos archivos vienen incluidas en el repositorio, así que podes modificarlas a tu gusto.

<br>
Spacebadge
==========

<br>
`spacebadge` es una utilidad para insertar el [badge](https://github.com/syl20bnr/spacemacs#supporting-spacemacs) de Spacemacs en distintos tipos de documento. Esta herramienta agrega los siguientes atajos bajo el prefijo `SPC o b`:

<br>
 * `SPC o b m` : Inserta el badge en `markdown-mode`.
 * `SPC o b o` : Inserta el badge en `org-mode`.
 * `SPC o b w` : Inserta el badge en `web-mode`.

<br>
Licencia
========

<br>
Liberado bajo licencia MIT.
