# Copyright (c) 2022 Fyde Innovations Limited and the openFyde Authors.
# Distributed under the license specified in the root directory of this project.

EAPI=7

inherit fydeos-ftp
DESCRIPTION="termina image and mount scripts"
HOMEPAGE="http://fydeos.com"

LICENSE="BSD-Google"
SLOT="0"
KEYWORDS="arm amd64 arm64"
IUSE="+noarm64"

RDEPEND=""

DEPEND="${RDEPEND}"

src_install() {
    insinto /usr/local
    use amd64 && doins -r tatl-fydeos
    use arm && doins -r tael-fydeos
    use arm64 && doins -r tael-fydeos
}
