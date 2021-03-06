# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/sys-fs/f2fs-tools/f2fs-tools-1.1.0-r1.ebuild,v 1.8 2013/09/05 13:27:13 ago Exp $

EAPI="5"

inherit autotools git-2

DESCRIPTION="Tools for Flash-Friendly File System (F2FS)"
HOMEPAGE="http://sourceforge.net/projects/f2fs-tools/ http://git.kernel.org/?p=linux/kernel/git/jaegeuk/f2fs-tools.git;a=summary"
EGIT_REPO_URI="git://git.kernel.org/pub/scm/linux/kernel/git/jaegeuk/${PN}.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
IUSE=""

src_prepare () {
	eautoreconf
}
