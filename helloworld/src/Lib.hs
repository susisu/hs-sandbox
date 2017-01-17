module Lib (
    hello,
    sayHello
) where

hello :: String -> String
hello name = "Hello, " ++ name ++ "!"

sayHello :: String -> IO ()
sayHello = putStrLn . hello
