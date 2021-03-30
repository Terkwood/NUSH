module Lib
  ( Object (..),
    DbRef (..),
  )
where

newtype DbRef = DbRef Word deriving (Show)

data Object = Player | Room | Thing | Exit | Trash deriving (Show)
