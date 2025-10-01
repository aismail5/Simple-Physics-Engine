class Ship {
  int x = 0, y = 0, fuel = 10;
  void move(int dx, int dy) {
    if (fuel > 0) {
      x += dx; y += dy; fuel--;
    }
  }
  void status() {
    print("Ship at ($x,$y) Fuel: $fuel");
  }
}

void main() {
  var ship = Ship();
  for (var i=0; i<5; i++) {
    ship.move(1,1);
    ship.status();
  }
  print("Space Exploration Ended.");
}