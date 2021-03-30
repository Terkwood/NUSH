module Lib
  ( Object (..),
  )
where

data Object = Player | Room | Thing | Exit | Trash deriving (Show)
