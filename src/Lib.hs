module Lib
  ( Object (..),
    DbRef (..),
    Attrs (..),
  )
where

newtype DbRef = DbRef Word deriving (Show)

newtype Attrs = Attrs {id :: DbRef} deriving (Show)

data Object = Player Attrs | Room Attrs | Thing Attrs | Exit Attrs | Trash Attrs deriving (Show)
