#include <iostream>
#include <vector>
#include <string>

class Enemy {
public:
    int x, y, health;
    Enemy(int x, int y, int h) : x(x), y(y), health(h) {}
    void hit(int dmg) { health -= dmg; }
};

class Player {
public:
    int x, y, ammo;
    Player() : x(0), y(0), ammo(10) {}
    void move(int dx, int dy) { x += dx; y += dy; }
    void shoot(std::vector<Enemy>& enemies) {
        if (ammo > 0) {
            for (auto& e : enemies)
                if (e.x == x && e.y == y) e.hit(5);
            ammo--;
        }
    }
};

int main() {
    Player p;
    std::vector<Enemy> enemies;
    enemies.push_back(Enemy(1, 1, 15));
    enemies.push_back(Enemy(2, 2, 20));
    for (int i = 0; i < 5; ++i) {
        p.move(1, 1);
        p.shoot(enemies);
        std::cout << "Player at (" << p.x << "," << p.y << ") Ammo: " << p.ammo << "\n";
        for (size_t j = 0; j < enemies.size(); ++j)
            std::cout << "Enemy " << j << " Health: " << enemies[j].health << "\n";
    }
    std::cout << "FPS Ended.\n";
    return 0;
}