# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{9..11} ) # no pypy3 support
inherit distutils-r1

MY_PN="${PN//-/_}"
MY_P="${MY_PN}-${PV}"
DESCRIPTION="Render CLI arguments (sub-commands friendly) defined by argparse module"
HOMEPAGE="https://github.com/tox-dev/sphinx-argparse-cli https://pypi.org/project/sphinx-argparse-cli/"
SRC_URI="mirror://pypi/${MY_PN:0:1}/${MY_PN}/${MY_P}.tar.gz"
S="${WORKDIR}/${MY_P}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="dev-python/sphinx[${PYTHON_USEDEP}]"

distutils_enable_tests pytest
