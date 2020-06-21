import System.IO

main :: IO Integer

main = do
  input <- readFile "day1input.txt"
  let numInput = map (read::String->Integer) $ lines input 
  let fuel = sum $ map (subtract 2) (map (`div` 3) numInput)
  return fuel 
