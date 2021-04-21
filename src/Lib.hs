module Lib
  ( NUSH (..),
    Object (..),
    Attrs (..),
    DbRef (..),
    Player (..),
    Room (..),
    Thing (..),
    Exit (..),
    Trash (..),
    Owner (..),
    Flag (..),
    makeNush,
  )
where

import qualified Data.Map as Map

type NUSH = Map.Map DbRef Object

data Object = PLAYER Player | ROOM Room | THING Thing | EXIT Exit | TRASH Trash deriving (Show)

newtype Player = Player Attrs deriving (Show)

newtype Room = Room Attrs deriving (Show)

newtype Thing = Thing Attrs deriving (Show)

newtype Exit = Exit Attrs deriving (Show)

newtype Trash = Trash Attrs deriving (Show)

data Attrs = Attrs {id :: DbRef, owner :: Owner, flags :: [Flag], name :: String} deriving (Show)

data Owner = Self | Other Player deriving (Show)

data Flag = Wizard | Connected deriving (Show)

newtype DbRef = DbRef Word deriving (Show, Ord, Eq)

objId :: Object -> DbRef
objId (PLAYER (Player p)) = Lib.id p
objId (ROOM (Room r)) = Lib.id r
objId (THING (Thing t)) = Lib.id t
objId (EXIT (Exit e)) = Lib.id e
objId (TRASH (Trash t)) = Lib.id t

makeNush :: [Object] -> NUSH
makeNush objs = Map.fromList (map (\o -> (objId o, o)) objs)