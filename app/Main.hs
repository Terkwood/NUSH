module Main where

import qualified Data.Map as Map
import Lib

limboId = DbRef 0

limbo = Room Attrs {Lib.id = limboId, owner = Other wiz, flags = []}

wizId = DbRef 1

wiz = Player Attrs {Lib.id = wizId, owner = Self, flags = [Connected]}

game = Map.fromList [(limboId, ROOM limbo), (wizId, PLAYER wiz)]

found = Map.lookup (DbRef 0) game

main :: IO ()
main = print found