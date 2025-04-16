// test.cpp
#include <gtest/gtest.h>
#include "main.cpp"

TEST(AddTest, PositiveNumbers) {
    EXPECT_EQ(add(2, 3), 5);
}

TEST(AddTest, NegativeNumbers) {
    EXPECT_EQ(add(-1, -1), -2);
}

TEST(AddTest, MixedNumbers) {
    EXPECT_EQ(add(-1, 1), 0);
}