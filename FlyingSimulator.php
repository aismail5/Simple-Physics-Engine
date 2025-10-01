<?php
class Plane {
    public $altitude, $speed;
    function __construct() { $this->altitude = 0; $this->speed = 100; }
    function ascend() { $this->altitude += 100; }
    function descend() { $this->altitude -= 50; }
    function accelerate() { $this->speed += 20; }
    function status() {
        echo "Altitude: $this->altitude Speed: $this->speed\n";
    }
}

$plane = new Plane();
for ($i=0;$i<5;$i++) {
    $plane->ascend();
    $plane->accelerate();
    $plane->status();
    if ($i%2==1) $plane->descend();
}
echo "Flying Simulator Ended.\n";
?>