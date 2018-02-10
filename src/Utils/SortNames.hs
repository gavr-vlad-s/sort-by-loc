module SortNames(
  sortNames
) where

import qualified Data.List as Lists

sortNames :: [String] -> IO [(String, Int)]
sortNames names = do
  xs <- mapM nameToNameWithLOC names
  return . Lists.sortBy (\(_, l1) (_, l2) -> l2 `compare` l1) $ xs

nameToNameWithLOC :: String -> IO (String, Int)
nameToNameWithLOC name = do
  text <- readFile name
  return (name, length . lines $ text)