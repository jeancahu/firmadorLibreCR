# Paquete FirmadorLibreCR para ArchLinux

![Arch Linux](https://img.shields.io/badge/Arch%20Linux-1793D1?style=for-the-badge&logo=arch-linux&logoColor=white)
![Manjaro](https://img.shields.io/badge/Manjaro-34BE5B?style=for-the-badge&logo=manjaro&logoColor=white)
![EndeavourOS](https://img.shields.io/badge/EndeavourOS-7F7FFF?style=for-the-badge&logo=endeavouros&logoColor=white)
![SteamOS](https://img.shields.io/badge/SteamOS-000000?style=for-the-badge&logo=steam&logoColor=white)
![pacman](https://img.shields.io/badge/pacman-FBD000?style=for-the-badge&logo=arch-linux&logoColor=black)
![One Command Install](https://img.shields.io/badge/install-one--command-success?style=for-the-badge&logo=console)
![License: Custom](https://img.shields.io/badge/License-GPL3-lightgreen?style=for-the-badge)


- [Sitio oficial de descarga](https://firmador.libre.cr)
- [Repositorio del proyecto](https://codeberg.org/firmador/firmador)

- Versión del paquete: 1.9.8

---

## Instalación

Como tal el software no requiere de paquete puesto que es únicamente un archivo.jar, sin embargo este paquete
aporta el fichero desktop para observar un acceso directo en menús gráficos.

### Dependencia de controladores

El software requiere que el controlador privativo
de firma digital esté instalado para funcionar como es esperado, para ello seguir las
[instrucciones de instalación del paquete Debian de firma digital en ArchLinux](https://github.com/jeancahu/firmadigital)

### Construir el paquete a partir del GIT

```bash
git clone https://github.com/jeancahu/firmadorLibreCR.git
makepkg
```

### Instalar el paquete

```bash
sudo pacman -U firmadorlibrecr-1.9.8-1-x86_64.pkg.tar.zst
```

## Modo de uso

Utilizar el comando `firmador` en terminal o buscar **firmador** en el menú gráfico del sistema.

---

## Licencia


Este proyecto está licenciado bajo la **GNU General Public License versión 3 (GPLv3)**. </br>
Puedes consultar los términos completos de la licencia en [https://www.gnu.org/licenses/gpl-3.0.html](https://www.gnu.org/licenses/gpl-3.0.html).

![GPL v3 logo](https://www.gnu.org/graphics/gplv3-or-later.png)
