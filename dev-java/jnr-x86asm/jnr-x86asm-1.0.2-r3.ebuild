# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

JAVA_PKG_IUSE="doc source"
MAVEN_ID="com.github.jnr:jnr-x86asm:1.0.2"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="A pure-java port of asmjit"
HOMEPAGE="https://github.com/jnr/jnr-x86asm"
SRC_URI="https://github.com/jnr/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"
S="${WORKDIR}/${P}"

LICENSE="MIT"
SLOT="1.0"
KEYWORDS="amd64 arm64 ppc64"

DEPEND=">=virtual/jdk-1.8:*"
RDEPEND=">=virtual/jre-1.8:*"

JAVA_SRC_DIR="src/main/java"
