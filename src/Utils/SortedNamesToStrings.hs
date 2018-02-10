module SortedNamesToStrings(
  sortedNamesToStrings
) where

sortedNamesToStrings :: [(String, Int)] -> [String]
sortedNamesToStrings sis = map (\(s, i) -> s ++ " " ++ show i) aligned 
  where
    aligned = alignRightBorder sis

alignRightBorder :: [(String, Int)] -> [(String, Int)]
alignRightBorder xs = map (\(x, i) -> (x ++ replSpace x, i)) xs
  where
    maxLength   = maximum . map (length . fst) $ xs
    replSpace y = replicate (maxLength - length y) ' '