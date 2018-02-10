module Main where

import Control.Monad
import System.Environment
import SortNames
import SortedNamesToStrings

main = do
  args <- getArgs
  sns  <- sortNames args
  mapM_ putStrLn . sortedNamesToStrings $ sns