//
//  main.cpp
//  DiabetTest
//
//  Created by roko on 26/06/2017.
//
//

#include "gtest/gtest.h"

GTEST_API_ int main(int argc, char **argv) {
    printf("Running main() from main.cpp\n");
    testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
