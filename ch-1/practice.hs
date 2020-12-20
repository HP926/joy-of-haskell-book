-- function :: Integer -> Integer -> Integer 
function :: (Ord p, Num p) => p -> p -> p -- same as above more generic
function x y = if x > y then x + 10 else y

function2 :: Integer -> Integer -> Integer 
function2 x y = 
  case x > y of
    False -> y
    True  -> x + 10


absVal2 :: (Num a, Ord a) => a -> a
absVal2 x =
  case x < 0 of
    True  -> negate x
    False -> x


validateUsernamePassword :: String -> String -> String
validateUsernamePassword username password =
  if null username
     then (if null password
             then "Empty username and password"
             else "Empty username") 
      else (if null password
              then "Empty password" else "Okay")


myValidateUsernamePassword :: String -> String -> String
myValidateUsernamePassword username password =
  case  (null username, null password) of
    (True, False)  -> "Empty username"
    (False, True)  -> "Empty password"
    (True, True)   -> "Empty username and password"
    (False, False) -> "Okay"


tail' :: [a] -> Maybe [a]
tail' [] = Nothing
tail' [a] = Just [a]

head' :: [a] -> Maybe a
head' []  = Nothing
head' [a] = Just a