# Copyright 2024 lemonxah
# Distributed under the terms of the GNU General Public License v2

# Autogenerated by pycargoebuild 0.13.4

EAPI=8

CRATES="
	aho-corasick@1.1.3
	alsa-sys@0.3.1
	alsa@0.9.1
	anstream@0.6.15
	anstyle-parse@0.2.5
	anstyle-query@1.1.1
	anstyle-wincon@3.0.4
	anstyle@1.0.8
	arrayvec@0.7.6
	autocfg@1.4.0
	bindgen@0.70.1
	bitflags@1.3.2
	bitflags@2.6.0
	block-buffer@0.10.4
	bumpalo@3.16.0
	bytemuck@1.19.0
	byteorder@1.5.0
	bytes@1.7.2
	cc@1.2.1
	cesu8@1.1.0
	cexpr@0.6.0
	cfg-if@1.0.0
	clang-sys@1.8.1
	clap@4.5.20
	clap_builder@4.5.20
	clap_derive@4.5.18
	clap_lex@0.7.2
	claxon@0.4.3
	colorchoice@1.0.2
	combine@4.6.7
	core-foundation-sys@0.8.7
	coreaudio-rs@0.11.3
	coreaudio-sys@0.2.16
	cpal@0.15.3
	cpufeatures@0.2.14
	crypto-common@0.1.6
	dasp_sample@0.11.0
	data-encoding@2.6.0
	digest@0.10.7
	either@1.13.0
	encoding_rs@0.8.35
	env_filter@0.1.2
	env_logger@0.11.5
	equivalent@1.0.1
	flatbuffers@22.10.26
	fnv@1.0.7
	generic-array@0.14.7
	getrandom@0.2.15
	glob@0.3.1
	hashbrown@0.15.1
	heck@0.5.0
	hound@3.5.1
	http@1.1.0
	httparse@1.9.5
	humantime@2.1.0
	indexmap@2.6.0
	is_terminal_polyfill@1.70.1
	itertools@0.13.0
	itoa@1.0.11
	jni-sys@0.3.0
	jni@0.21.1
	jobserver@0.1.32
	js-sys@0.3.72
	lazy_static@1.5.0
	lewton@0.10.2
	libc@0.2.161
	libloading@0.8.5
	log@0.4.22
	mach2@0.4.2
	memchr@2.7.4
	minimal-lexical@0.2.1
	ndk-context@0.1.1
	ndk-sys@0.5.0+25.2.9519653
	ndk@0.8.0
	nom@7.1.3
	num-derive@0.4.2
	num-traits@0.2.19
	num_enum@0.7.3
	num_enum_derive@0.7.3
	oboe-sys@0.6.1
	oboe@0.6.1
	ogg@0.8.0
	once_cell@1.20.2
	pkg-config@0.3.31
	ppv-lite86@0.2.20
	proc-macro-crate@1.3.1
	proc-macro2@1.0.88
	quote@1.0.37
	rand@0.8.5
	rand_chacha@0.3.1
	rand_core@0.6.4
	regex-automata@0.4.8
	regex-syntax@0.8.5
	regex@1.11.0
	rodio@0.20.1
	rustc-hash@1.1.0
	rustc_version@0.4.1
	same-file@1.0.6
	semver@1.0.23
	sha1@0.10.6
	shlex@1.3.0
	strsim@0.11.1
	symphonia-bundle-mp3@0.5.4
	symphonia-core@0.5.4
	symphonia-metadata@0.5.4
	symphonia@0.5.4
	syn@2.0.82
	thiserror-impl@1.0.64
	thiserror@1.0.64
	tinyvec@1.8.0
	tinyvec_macros@0.1.1
	toml_datetime@0.6.8
	toml_edit@0.19.15
	tungstenite@0.24.0
	typenum@1.17.0
	unicode-ident@1.0.13
	utf-8@0.7.6
	utf8parse@0.2.2
	version_check@0.9.5
	walkdir@2.5.0
	wasi@0.11.0+wasi-snapshot-preview1
	wasm-bindgen-backend@0.2.95
	wasm-bindgen-futures@0.4.45
	wasm-bindgen-macro-support@0.2.95
	wasm-bindgen-macro@0.2.95
	wasm-bindgen-shared@0.2.95
	wasm-bindgen@0.2.95
	web-sys@0.3.72
	winapi-util@0.1.9
	windows-core@0.54.0
	windows-result@0.1.2
	windows-sys@0.45.0
	windows-sys@0.52.0
	windows-targets@0.42.2
	windows-targets@0.52.6
	windows@0.54.0
	windows_aarch64_gnullvm@0.42.2
	windows_aarch64_gnullvm@0.52.6
	windows_aarch64_msvc@0.42.2
	windows_aarch64_msvc@0.52.6
	windows_i686_gnu@0.42.2
	windows_i686_gnu@0.52.6
	windows_i686_gnullvm@0.52.6
	windows_i686_msvc@0.42.2
	windows_i686_msvc@0.52.6
	windows_x86_64_gnu@0.42.2
	windows_x86_64_gnu@0.52.6
	windows_x86_64_gnullvm@0.42.2
	windows_x86_64_gnullvm@0.52.6
	windows_x86_64_msvc@0.42.2
	windows_x86_64_msvc@0.52.6
	winnow@0.5.40
	zerocopy-derive@0.7.35
	zerocopy@0.7.35
"

declare -A GIT_CRATES=(
	[solarxr_protocol]='https://github.com/SlimeVR/SolarXR-Protocol;e4540a5129140b5f3aa30885030910daa47768fc;SolarXR-Protocol-%commit%/protocol/rust'
)

inherit cargo

DESCRIPTION="SlimeVR Cli tool for interfacing with the SlimeVR server to send yaw and full reset requests"
HOMEPAGE="https://github.com/lemonxah/slimevr-cli"
SRC_URI="
	https://github.com/lemonxah/slimevr-cli/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz
	${CARGO_CRATE_URIS}
"
S="${WORKDIR}/slimevr-cli-${PV}"

LICENSE=""
# Dependent crate licenses
LICENSE+=" Apache-2.0 BSD ISC MIT MPL-2.0 Unicode-DFS-2016"
SLOT="0"
KEYWORDS="~amd64"

src_unpack() {
	if [[ "${PV}" == *9999* ]]; then
		git-r3_src_unpack
		cargo_live_src_unpack
	else
		cargo_src_unpack
	fi
}

src_install() {
	cargo_src_install
	insinto /usr/share/slimevr-cli/assets
	doins -r assets/*
}
