module Lib
  ( Object (..),
    Attrs (..),
    DbRef (..),
  )
where

data Object = Player Attrs | Room Attrs | Thing Attrs | Exit Attrs | Trash Attrs deriving (Show)

newtype Attrs = Attrs {id :: DbRef} deriving (Show)

newtype DbRef = DbRef Word deriving (Show)
