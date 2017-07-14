//
//  SimpleTest.cpp
//  Diabet
//
//  Created by roko on 26/06/2017.
//
//

#include "SimpleTest.h"
#include "gtest/gtest.h"
#include "HelloWorldScene.h"

TEST(SimpleTest, falseMethod_test) {
    const auto * helloInstance = HelloWorld::create();
    ASSERT_EQ(false, helloInstance->falseMethod());
}

TEST(SimpleTest, trueMethod_test) {
    const auto * helloInstance = HelloWorld::create();
    ASSERT_EQ(true, helloInstance->trueMethod());
}
