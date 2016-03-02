<?php

require_once __DIR__.'/Graphic/Vertex.php';
require_once __DIR__.'/Graphic/Edge.php';
require_once __DIR__.'/Graphic/GraALG.php';

use Graphic\Vertex;
use Graphic\Edge;
use Graphic\GraALG;

$begin_int = ord('A');
$verex = array();
//定义结点,初始化A-E的节点
for ($i = 0; $i < 9; $i++) {
    $letter = chr($begin_int + $i);
    $verex [$letter] = new Vertex($letter);  
}
//定义边
$edge_arr = array('AB', 'AF',
    'BA', 'BC', 'BG', 'BI',
    'CB', 'CD', 'CI',
    'DC', 'DE', 'DG', 'DH', 'DI',
    'ED', 'EF', 'EH',
    'FA', 'FE', 'FG',
    'GB', 'GD', 'GF', 'GH',
    'HD', 'HE', 'HG',
    'IB', 'IC', 'ID'
);
$edges = array();
foreach ($edge_arr as $edge) {
    $tail = substr($edge, 0, 1);
    $head = substr($edge, 1, 1);
    $edges[$edge] = new Edge($head, $tail);
}
//定义图
$graphic_arr = array();
foreach ($verex as $ver) {
    $row = array();
    foreach ($edges as $edge) {
        if ($ver->name == $edge->head) {
            $row[] = $edge->tail;
        }
    }
    $graphic_arr [$ver->name] = $row;
}
$graphic = new GraALG($verex, $edges, $graphic_arr);
#$graphic->DFSTraverse();
$graphic->BFSTraverse();
