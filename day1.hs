totalFuel :: Integral p => p -> p

totalFuel x
  | eachFuel <= 0 = 0
  | otherwise     = eachFuel + totalFuel eachFuel 
  where eachFuel = (subtract 2 . (`div` 3)) x

main :: IO Integer

main = do
  input <- readFile "day1input.txt"
  let numInput = map (read::String->Integer) $ lines input 
  let fuel = sum $ map totalFuel numInput
  return fuel 
