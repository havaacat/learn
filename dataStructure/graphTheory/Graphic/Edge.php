<?php

namespace Graphic;

class Edge {
    
    public $head;
    
    public $tail;
    
    public $weight;

    public function __construct($head, $tail, $weight = 0) {
        $this->head   = $head;
        $this->tail   = $tail;
        $this->weight = $weight;
    }
} 
