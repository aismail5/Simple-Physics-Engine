import Foundation

class Platform {
    var x: Int
    init(x: Int) { self.x = x }
}

class Player {
    var pos: Int
    init() { pos = 0 }
    func jump() { pos += 2 }
    func move() { pos += 1 }
}

var platforms = [Platform(x:2), Platform(x:4), Platform(x:6)]
var player = Player()
for step in 1...5 {
    player.move()
    if platforms.contains(where: { $0.x == player.pos }) {
        player.jump()
        print("Jumped to position \(player.pos)")
    } else {
        print("Moved to position \(player.pos)")
    }
}
print("3D Platformer Ended.")