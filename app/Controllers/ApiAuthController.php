<?php

namespace App\Controllers\Api;

use CodeIgniter\API\ResponseTrait;
use App\Controllers\BaseController;
use CodeIgniter\Shield\Models\UserModel;

class AuthController extends BaseController
{
    use ResponseTrait;
    public function getToken()
    {
        $user = new UserModel();
        $userData = $user->find(auth()->id());
        print_r($userData->id);
        die;
        $gett = auth()->user()->getAccessTokenById('auth_token');
        // $crendentials = [
        //     'email' => $this->request->getPost('email'),
        //     'password' => $this->request->getPost('password'),
        // ];


        // if (auth()->loggedIn()) {
        //     auth()->logout();
        // }



        // $loginAttempt = auth()->attempt($crendentials);
        // if (!$loginAttempt->isOk()) {
        //     return $this->fail('invalid Login', 400);
        // } else {
        // $user = new UserModel();
        // $userData = $user->find(auth()->id());

        $token = auth()->user()->generateAccessToken('auth_token');
        $auth_token = $token->raw_token;
        return $this->respond(['status' => true, 'token' => $auth_token]);
        // }
    }

    public function loggedOut()
    {
        return $this->fail('User not logged in. Please log in', 400);
    }
}
