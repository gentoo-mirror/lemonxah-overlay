# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="SlimeVR Server for SlimeVR Full-Body Tracking."
HOMEPAGE="https://slimevr.dev"
SRC_URI="https://github.com/SlimeVR/SlimeVR-Server/releases/download/v${PV}/SlimeVR-amd64.appimage"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64"

DEPEND="
	dev-libs/libayatana-appindicator
	gui-libs/gtk
	sys-fs/fuse
	virtual/jdk
	net-libs/webkit-gtk
	net-dns/avahi
"
RDEPEND="${DEPEND}"
BDEPEND=""
S="${WORKDIR}"
src_unpack() {
	default
	mkdir -p "${S}"
	cp "${DISTDIR}/SlimeVR-amd64.appimage" "${S}"
	chmod +x SlimeVR-amd64.appimage
	./SlimeVR-amd64.appimage --appimage-extract
	mv squashfs-root/* .
	rm -rf squashfs-root
}
src_install() {
	insinto /usr/share/slimevr
	doins -r usr/share/slimevr/*

	insinto /usr/bin
	doins usr/bin/slimevr
	fperms 0755 /usr/bin/slimevr

	insinto /usr/share/icons/
	doins -r usr/share/icons/*

	insinto /usr/share/applications/
	doins -r usr/share/applications/*
}
