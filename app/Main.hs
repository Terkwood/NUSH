module Main where

import qualified Data.Map as Map
import Lib

limbo = Room Attrs {Lib.id = DbRef 0, owner = Other wiz, flags = [], name = "Limbo"}

wiz = Player Attrs {Lib.id = DbRef 1, owner = Self, flags = [Connected], name = "Wizerd"}

game = makeNush [ROOM limbo, PLAYER wiz]

found = Map.lookup (DbRef 0) game

main :: IO ()
main = print found