# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: media-sound/deadbeef-fb/deadbeef-fb-9999.ebuild,v 1 2013/14/11 00:15:35 megabaks Exp $

EAPI=4

inherit eutils git-2 autotools

DESCRIPTION="DeaDBeeF filebrowser plugin "
HOMEPAGE="http://sourceforge.net/projects/deadbeef-fb/"
EGIT_REPO_URI="git://git.code.sf.net/p/deadbeef-fb/code"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
IUSE="gtk2 gtk3"

DEPEND_COMMON="
	gtk2? ( media-sound/deadbeef[gtk2] )
	gtk3? ( media-sound/deadbeef[gtk3] )"

RDEPEND="${DEPEND_COMMON}"
DEPEND="${DEPEND_COMMON}"

S="${WORKDIR}/deadbeef-devel"

src_configure() {
	./autogen.sh
	my_config="--disable-static
	  $(use_enable gtk3)
	  $(use_enable gtk2)"
	econf ${my_config}
}

src_install() {
	emake DESTDIR="${D}" install
	find "${D}" -name "${PN}-${PV}" -exec rm -rf {} +
}
