pkgname=k9copy
pkgver=3.0.3.70
pkgrel=1
_commit=2d0649e41d0b671821e5b8745cc676153fbc9d71
pkgdesc="A small utility to copy DVD"
arch=('x86_64')
url="https://github.com/keijukainen/k9copy"
license=('GPL')
depends=('kdesu' 'hicolor-icon-theme' 'kio' 'libmpeg2' 'xine-lib' 'dvd+rw-tools' 'dvdauthor' 'libdvdnav' 'kdelibs4support')
optdepends=('libdvdcss: for decoding encrypted DVDs')
makedepends=('cmake' 'extra-cmake-modules' 'kdoctools')
source=("k9copy.zip::https://github.com/keijukainen/k9copy/archive/{$_commit}.zip")
md5sums=('4691f3875f3d1f3449b8ccabb445ae5f')

prepare() {
    cd "${srcdir}/${pkgname}-${_commit}"
    mkdir -p build
}

build(){
    cd "${srcdir}/${pkgname}-${_commit}/build"
    cmake .. -DCMAKE_INSTALL_PREFIX=/usr -DQT5_BUILD=ON -Wno-dev
    make
}

package(){
    cd "${srcdir}/${pkgname}-${_commit}/build"
    make DESTDIR="${pkgdir}" install
}
