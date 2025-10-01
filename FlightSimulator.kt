class Aircraft(var altitude: Int = 0, var speed: Int = 100) {
    fun climb() { altitude += 200 }
    fun descend() { altitude -= 100 }
    fun boost() { speed += 30 }
    fun status() { println("Altitude: $altitude Speed: $speed") }
}

fun main() {
    val plane = Aircraft()
    for (i in 1..5) {
        plane.climb()
        plane.boost()
        plane.status()
        if (i % 2 == 0) plane.descend()
    }
    println("Flight Simulator Ended.")
}