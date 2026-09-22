vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO naitro2010/CommonLibSSE-GG
    REF vcpkg_9_22_2026
    SHA512 7b25167467a01e946de21232bcb486a26ff486c0c92a8c65f2a5d49647214ca436a1f4a1a1b2f437ff2532894b19c63e0cd7c41ca9464648b07a3bd4dbe3b9fc
    HEAD_REF main
)
vcpkg_cmake_configure(SOURCE_PATH ${SOURCE_PATH})
vcpkg_cmake_install()
vcpkg_install_copyright("${SOURCE_PATH}/LICENSE")
