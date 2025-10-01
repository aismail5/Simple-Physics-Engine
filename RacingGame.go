package main
import "fmt"

type Car struct {
    name  string
    pos   int
    speed int
}

func (c *Car) Accelerate() {
    c.speed += 2
}

func (c *Car) Move() {
    c.pos += c.speed
}

func main() {
    cars := []Car{
        {"Red", 0, 1},
        {"Blue", 0, 1},
    }
    for lap := 1; lap <= 5; lap++ {
        for i := range cars {
            cars[i].Accelerate()
            cars[i].Move()
            fmt.Printf("%s Car - Pos: %d Speed: %d\n", cars[i].name, cars[i].pos, cars[i].speed)
        }
    }
    fmt.Println("Racing Game Ended.")
}