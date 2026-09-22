vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO naitro2010/CommonLibSSE-GG
    REF vcpkg_9_22_2026
    SHA512 7b25167467a01e946de21232bcb486a26ff486c0c92a8c65f2a5d49647214ca436a1f4a1a1b2f437ff2532894b19c63e0cd7c41ca9464648b07a3bd4dbe3b9fc
    HEAD_REF main
)
vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH/extern/openvr
    REPO ValveSoftware/openvr
    REF v1.0.15
    SHA512 22ad52a659e1d2e4b52832400ac5c6766d1657cb81dfb9868bdc253120c661d41eeea68991eac44af9179d2bf6a346f038f1c444278a98b55b6b738af90ba1b5
    HEAD_REF master
)
vcpkg_cmake_configure(SOURCE_PATH ${SOURCE_PATH})
vcpkg_cmake_install()
vcpkg_install_copyright("${SOURCE_PATH}/LICENSE")
