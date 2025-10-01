data Ball = Ball { bx :: Int, by :: Int, velocity :: Int } deriving Show

moveBall :: Ball -> Ball
moveBall b = b { bx = bx b + velocity b }

bounce :: Ball -> Ball
bounce b = b { velocity = -(velocity b) }

main :: IO ()
main = do
    let ball = Ball 0 0 2
    let simulate b 0 = print b
        simulate b n = do
            let b1 = if bx b > 5 then bounce b else b
            let b2 = moveBall b1
            print b2
            simulate b2 (n-1)
    simulate ball 5
    putStrLn "Physics Puzzle Ended."