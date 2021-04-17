module Main where

import Lib

main :: IO ()
main = print (Player Attrs {Lib.id = DbRef 0})
