<?php

namespace Graphic;

class Vertex {
    public $name;
    public $data;
    public $visited;

    public function __construct($name, $data = 0, $visited = 0) {
        $this->name = $name;
        $this->data = $data;
        $this->visited = $visited;
    }
}
