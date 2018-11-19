module Main where

import           Card.Base
import           Cards

main :: IO ()
main = putStrLn $ display curseCard
