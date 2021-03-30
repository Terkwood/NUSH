module Lib
    ( someFunc,
        Object
    ) where


data Object = Player | Room | Thing | Exit | Trash

someFunc :: IO ()
someFunc = putStrLn "someFunc"
