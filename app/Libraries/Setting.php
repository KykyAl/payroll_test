<?php

/**
 *
 * @link       https://www.codekop.com/
 * @version    1.0.2
 * @copyright  Codekop Datatables Library (c) 2022
 *
 * File      : Datatables.php
 * author    : Fauzan Falah
 * E-mail    : fauzancodekop@gmail.com / fauzan1892@codekop.com
 *
 *
 **/

namespace App\Libraries;

class Setting
{
    public function __construct()
    {
        $this->db = \Config\Database::connect();
    }

    public function GetSetting()
    {
        $query = $this->db->query("SELECT * FROM setting");
        $result = $query->getRowArray();
        return $result; // Convert array $callback ke json
    }
}
