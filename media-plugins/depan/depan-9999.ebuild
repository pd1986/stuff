# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/media-plugins/fft3dfilter/fft3dfilter-9999.ebuild,v 1.1 2014/01/15 18:11:23 brothermechanic Exp $

EAPI=5

inherit git-2 cmake-utils

DESCRIPTION="The DePanEstimate and DePan plugins, ported to avxsynth"
HOMEPAGE="https://github.com/btb/depan"
EGIT_REPO_URI="https://github.com/btb/depan.git"
EGIT_BRANCH="master"

LICENSE="GPL"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="sci-libs/fftw
	media-video/avxsynth"

RDEPEND=""

