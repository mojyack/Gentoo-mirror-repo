# Copyright 2019-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{10..13} )

inherit distutils-r1

DESCRIPTION="Automated testing for the examples in your documentation"
HOMEPAGE="
	https://github.com/simplistix/sybil/
	https://pypi.org/project/sybil/
"
# tests are missing in sdist, as of 5.0.1
SRC_URI="
	https://github.com/simplistix/sybil/archive/${PV}.tar.gz
		-> ${P}.gh.tar.gz
"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~alpha amd64 arm arm64 ~hppa ~loong ppc ppc64 ~riscv sparc x86"

RDEPEND="
	>=dev-python/pytest-8[${PYTHON_USEDEP}]
"
BDEPEND="
	test? (
		dev-python/myst-parser[${PYTHON_USEDEP}]
		dev-python/seedir[${PYTHON_USEDEP}]
		dev-python/testfixtures[${PYTHON_USEDEP}]
	)
"

distutils_enable_tests pytest

python_test() {
	local -x PYTEST_DISABLE_PLUGIN_AUTOLOAD=1
	epytest
}
