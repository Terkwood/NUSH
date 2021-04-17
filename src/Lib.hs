module Lib
  ( Object (..),
    DbRef (..),
  )
where

newtype DbRef = DbRef Word deriving (Show)

data Object = Player {id :: DbRef} | Room {id :: DbRef} | Thing {id :: DbRef} | Exit {id :: DbRef} | Trash {id :: DbRef} deriving (Show)
