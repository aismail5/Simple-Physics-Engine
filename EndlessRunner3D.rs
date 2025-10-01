struct Runner {
    pos: i32,
    score: i32,
}

impl Runner {
    fn new() -> Runner {
        Runner { pos: 0, score: 0 }
    }
    fn run(&mut self) {
        self.pos += 1;
        self.score += 10;
    }
    fn jump(&mut self) {
        self.pos += 2;
        self.score += 20;
    }
    fn status(&self) {
        println!("Position: {} Score: {}", self.pos, self.score);
    }
}

fn main() {
    let mut r = Runner::new();
    for i in 0..5 {
        if i % 2 == 0 { r.jump(); } else { r.run(); }
        r.status();
    }
    println!("Endless Runner 3D Ended.");
}