module Main where

import Lib

main :: IO ()
main = print Player {Lib.id = DbRef 0}
