<?php

namespace App\Model;

use Nette;
use Nette\Utils\Json;

class Main_model
{
    use Nette\SmartObject;

    private Nette\Database\Explorer $database;

    public function __construct(Nette\Database\Explorer $database)
    {
        $this->database = $database;
    }

    public function get_data()
    {
        $result = $this->database->fetchAll('
        SELECT skola.id, mesto.nazev AS mesto, obor.nazev AS obor, pocet_prijatych.pocet AS prijatych, pocet_prijatych.rok AS rok_prijeti, skola.nazev AS skola, skola.geo_lat AS geo_lattitude, skola.geo_long AS geo_longtitude 
        FROM `mesto` 
        INNER JOIN skola ON mesto.id=skola.mesto INNER JOIN pocet_prijatych ON skola.id=pocet_prijatych.skola 
        INNER JOIN obor ON pocet_prijatych.obor=obor.id');
        return $result;
    }

    public function get_school()
    {
        $result_school = $this->database->fetchAll('SELECT * FROM skola');
        return $result_school;
    }
}
