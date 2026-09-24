vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO MinLL/CommonLibVR
    REF v4.39.5
    SHA512 6eb01e5ebbf2216d1fa33b63afa9363e8dc07a2afcb510157b47baa9d66a3d44d5e5571cb42bea29899b8dc329c69e628dcf81f371dfb40c740763e008ef3809 
    HEAD_REF ng
)
vcpkg_from_github(
    OUT_SOURCE_PATH OPENVR_SOURCE_PATH
    REPO ValveSoftware/openvr
    REF v1.0.15
    SHA512 22ad52a659e1d2e4b52832400ac5c6766d1657cb81dfb9868bdc253120c661d41eeea68991eac44af9179d2bf6a346f038f1c444278a98b55b6b738af90ba1b5
    HEAD_REF master
)

file(COPY "${OPENVR_SOURCE_PATH}/lib" DESTINATION "${SOURCE_PATH}/extern/openvr/")
file(COPY "${OPENVR_SOURCE_PATH}/src" DESTINATION "${SOURCE_PATH}/extern/openvr/")
file(COPY "${OPENVR_SOURCE_PATH}/headers" DESTINATION "${SOURCE_PATH}/extern/openvr/")
file(COPY "${OPENVR_SOURCE_PATH}/bin" DESTINATION "${SOURCE_PATH}/extern/openvr/")
file(COPY "${OPENVR_SOURCE_PATH}/CMakeLists.txt" DESTINATION "${SOURCE_PATH}/extern/openvr/")

vcpkg_cmake_configure(SOURCE_PATH ${SOURCE_PATH})
vcpkg_cmake_install()
vcpkg_cmake_config_fixup(PACKAGE_NAME CommonLibSSE CONFIG_PATH lib/cmake)

file(GLOB CMAKE_CONFIGS "${CURRENT_PACKAGES_DIR}/share/CommonLibSSE/CommonLibSSE/*.cmake")
file(INSTALL ${CMAKE_CONFIGS} DESTINATION "${CURRENT_PACKAGES_DIR}/share/CommonLibSSE")
file(INSTALL "${SOURCE_PATH}/cmake/CommonLibSSE.cmake" DESTINATION "${CURRENT_PACKAGES_DIR}/share/CommonLibSSE")
