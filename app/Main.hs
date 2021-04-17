module Main where

import Lib

limbo = Room Attrs {Lib.id = DbRef 0, owner = Other wiz}

wiz = Player Attrs {Lib.id = DbRef 1, owner = Self}

game = NUSH [ROOM limbo, PLAYER wiz]

main :: IO ()
main = print game
