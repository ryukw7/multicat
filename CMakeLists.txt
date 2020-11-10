cmake_minimum_required(VERSION 3.17)
project(multicat C)

set(CMAKE_C_STANDARD 11)

include_directories(.)

get_filename_component(PARENT_DIR ../ ABSOLUTE)
include_directories(${PARENT_DIR})

add_executable(multicat
        multicat.c
#        lasts.c
#        multicat_validate.c
#        multilive.c
#        offsets.c
#        reordertp.c
        util.c
        util.h
        )

add_executable(ingests
        ingests.c
        ingests_debug.c
        )

add_executable(aggregartp
        aggregartp.c
        )