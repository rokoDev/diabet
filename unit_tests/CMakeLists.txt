cmake_minimum_required(VERSION 3.6)

project(diabet_test)

  if(CMAKE_CXX_COMPILER_ID MATCHES "^(Apple)?Clang$")
    message(STATUS "this is Clang compiler")
  elseif(CMAKE_CXX_COMPILER_ID STREQUAL "GNU")
    message(STATUS "this is GNU compiler")
  endif()
  
  foreach(LETTER ${GAME_SRC})
        list(APPEND PREPENDED_GAME_SRC "${CMAKE_SOURCE_DIR}/${LETTER}")
  ENDFOREACH(LETTER)
  
  list(FILTER PREPENDED_GAME_SRC EXCLUDE REGEX "^.*/main.cpp$")
  
  foreach(LETTER ${GAME_HEADERS})
        list(APPEND PREPENDED_GAME_HEADERS "${CMAKE_SOURCE_DIR}/${LETTER}")
  ENDFOREACH(LETTER)
  
  include_directories(/usr/local/include)
  
  add_executable(test_executable
                                ${PREPENDED_GAME_SRC}
                                ${PREPENDED_GAME_HEADERS}
								main.cpp
								SimpleTest.cpp
								)
  
  target_link_libraries(test_executable
                        cocos2d
						/usr/local/lib/libgtest.a
	)

  add_test(NAME test_1 COMMAND test_executable)
