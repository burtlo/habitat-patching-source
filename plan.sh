pkg_name=knock-knock
pkg_origin=franklinwebber
pkg_version="0.1.0"
pkg_maintainer="Franklin Webber <franklin@chef.io>"
pkg_license=('Apache-2.0')
pkg_source="https://github.com/learn-chef/hab-patching-source/raw/master/${pkg_name}-${pkg_version}.tar.gz"
pkg_shasum=c35d0e7b4726f075545a93921c78853ee9c3ef47ed3a0793b4bb03b726812838
pkg_build_deps=( core/rust )
pkg_deps=( core/gcc-libs )
pkg_bin_dirs=( bin )

do_build() {
    cargo build --release
}

do_install() {
    cp target/release/$pkg_name $pkg_prefix/bin
}
