import System.IO
import Control.Monad

main = do
 input <- readFile "day1input.txt"
 let inputLines = lines input
 let numInput = map (read::String->Integer) inputLines
 let fuel = sum $ map (subtract 2) (map (`div` 3) numInput)
 return fuel 
