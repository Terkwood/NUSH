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
  )
where

import qualified Data.Map as Map

newtype NUSH = NUSH {nush :: Map.Map DbRef Object} deriving (Show)

data Object = PLAYER Player | ROOM Room | THING Thing | EXIT Exit | TRASH Trash deriving (Show)

newtype Player = Player Attrs deriving (Show)

newtype Room = Room Attrs deriving (Show)

newtype Thing = Thing Attrs deriving (Show)

newtype Exit = Exit Attrs deriving (Show)

newtype Trash = Trash Attrs deriving (Show)

data Attrs = Attrs {id :: DbRef, owner :: Owner, flags :: [Flag]} deriving (Show)

data Owner = Self | Other Player deriving (Show)

data Flag = Wizard | Connected deriving (Show)

newtype DbRef = DbRef Word deriving (Show, Ord, Eq)
