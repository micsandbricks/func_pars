type Parser a =  String -> Maybe (a, String)

-- E1

semicolon :: Parser Char

semicolon (c:cs)
        | c == ';' = Just (c, cs)
        | otherwise = Nothing

-- E2

becomes :: Parser String

becomes (x:xs)
        | x == ':' = helpFunction xs
        | otherwise = Nothing
        where helpFunction (x:xs)
                      | x == '=' = Just (":=", xs)
                      | otherwise = Nothing
