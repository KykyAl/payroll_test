<?php

namespace App\Controllers;

class Home extends BaseController
{
    public function index(): string
    {
        $userData = auth()->user();
        $uri = service('uri'); // Get the URI service
        $mobile = $this->request->getUserAgent()->isMobile();

        // echo "<pre>" . var_export(json_decode($userData->role), true);
        // die;


        $data = array(
            'title' => 'DASHBOARD',
            'access' => json_decode($userData->access),
            'segment1' => ucfirst($uri->getSegment(1)),
            'segment2' => '',
            'user' => $userData,
            'mobile' => $mobile
        );
        return view('dashboard', $data);
    }

    // public function index()
    // {
    //     $database = \Config\Database::connect();
    //     if ($database) {
    //         // check if db exists:
    //         if ($test = $database->query("SELECT SCHEMA_NAME FROM INFORMATION_SCHEMA.SCHEMATA WHERE SCHEMA_NAME='test_payroll'")) {
    //             //db connection initialized
    //             dd($test);
    //         } else {
    //             return false; // db not exist
    //         }
    //     } else {
    //         //db connection  not initialized
    //         return redirect()->to('db_setup');
    //     }
    // }
}