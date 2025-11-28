# Maintainer: Jeancarlo Hidalgo <jeancahu [at] gmail [dot] com>

pkgname=firmadorlibrecr
pkgver=1.9.8
pkgrel=1
arch=('x86_64')
pkgdesc="Firmador Libre CR"
license=('GPL3')

depends=(
    'jre8-openjdk'
)

optdepends=(
    'jre21-openjdk: Recomendado utilizar con OpenJDK 21'
)

makedepends=(
    'imagemagick' # Dependencia para redimensionar los iconos
    'maven'
)

install=firmadorlibrecr.install
options=(!strip docs libtool emptydirs !zipman staticlibs)
source=(
    "https://codeberg.org/firmador/firmador/archive/${pkgver}.tar.gz"
    "firmadorlibrecr.desktop"
    "firmadorlibrecr-launcher.sh"
)
md5sums=(
    'cab4acc53feb73bff375a339267ce7b5'
    '2d0fa25cb94a36ef749740a58888e027'
    'f566046c1c6f40ba81b5e6a367bb69a7'
)

prepare() {
    magick ${srcdir}/firmador/src/main/resources/firmador.png -resize 128x128 ${srcdir}/firmador-128.png
    cd firmador; mvn clean package # Crear el JAR
}

package() {
    # Crear directorios
    install -dm755 "$pkgdir/usr/share/applications"
    install -dm755 "$pkgdir/usr/share/icons/hicolor/128x128/apps"
    install -dm755 "$pkgdir/usr/share/java"

    # Instalar el .jar
    install -Dm644 "${srcdir}/firmador/target/firmador.jar" "$pkgdir/usr/share/java/firmadorlibrecr.jar"

    # Instalar el .desktop
    install -Dm644 "${srcdir}/firmadorlibrecr.desktop" "$pkgdir/usr/share/applications/firmadorlibrecr.desktop"

    # Instalar el icono
    install -Dm644 "${srcdir}/firmador-128.png" "$pkgdir/usr/share/icons/hicolor/128x128/apps/firmadorlibrecr.png"

    # Launcher utiliza la versión recomendada de OpenJDK 21 si está disponible en el sistema
    install -Dm755 "${srcdir}/firmadorlibrecr-launcher.sh" "$pkgdir/usr/bin/firmador"

    # Licencia del software
    install -Dm644 "${srcdir}/firmador/COPYING" "$pkgdir/usr/share/licenses/firmadorlibrecr/COPYING"

    # Docs
    install -Dm644 "${srcdir}/firmador/AUTHORS.md" "$pkgdir/usr/share/doc/firmadorlibrecr/AUTHORS.md"
    install -Dm644 "firmador/preguntas-frecuentes.md" "$pkgdir/usr/share/doc/firmadorlibrecr/preguntas-frecuentes.md"
}
