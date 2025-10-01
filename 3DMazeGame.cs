using System;
using System.Collections.Generic;

class MazeCell {
    public bool Wall;
    public MazeCell(bool wall) { Wall = wall; }
}

class Maze {
    public MazeCell[,] cells;
    public int size;
    public Maze(int s) {
        size = s;
        cells = new MazeCell[s, s];
        for (int i = 0; i < s; i++)
            for (int j = 0; j < s; j++)
                cells[i, j] = new MazeCell((i+j)%3==0);
    }
    public bool IsWall(int x, int y) {
        return x<0 || y<0 || x>=size || y>=size || cells[x, y].Wall;
    }
}

class Player {
    public int x, y;
    public Player() { x = 0; y = 0; }
    public bool Move(int dx, int dy, Maze maze) {
        if (!maze.IsWall(x+dx, y+dy)) {
            x += dx; y += dy;
            return true;
        }
        return false;
    }
}

class Program {
    static void Main() {
        Maze maze = new Maze(5);
        Player p = new Player();
        for (int i = 0; i < 5; i++) {
            p.Move(1, 0, maze);
            Console.WriteLine($"Player at ({p.x},{p.y})");
        }
        Console.WriteLine("3D Maze Ended.");
    }
}