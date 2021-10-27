# Copyright (c) 2018 The Fyde OS Authors. All rights reserved.
# Distributed under the terms of the BSD

EAPI="5"

inherit fydeos-ftp
DESCRIPTION="termina image and mount scripts"
HOMEPAGE="http://fydeos.com"

LICENSE="BSD-Google"
SLOT="0"
KEYWORDS="arm amd64"
IUSE=""

RDEPEND=""

DEPEND="${RDEPEND}"

src_install() {
    insinto /usr/local
    use amd64 && doins -r tatl-fydeos
    use arm && doins -r tael-fydeos
}
