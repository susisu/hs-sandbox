module Main (main) where

import System.Exit

import Test.HUnit

import Lib

tests :: Test
tests = test [
        "Lib" ~: "hello" ~: "Hello, Alice!" ~=? hello "Alice"
    ]

main :: IO ()
main = do
    counts <- runTestTT tests
    if errors counts + failures counts == 0
        then exitSuccess
        else exitFailure
