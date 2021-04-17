module Main where

import Lib

wiz = Player Attrs {Lib.id = DbRef 1, owner = Self}

main :: IO ()
main = print (PLAYER wiz)
