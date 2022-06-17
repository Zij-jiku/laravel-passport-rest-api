<?php

namespace App\Http\Controllers;

use Auth;
use Exception;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\Http\Requests\RegisterRequest;



class AuthController extends Controller
{
    public function Login(Request $request)
    {
        try {
            if (Auth::attempt($request->only('email', 'password'))) {
                $user = Auth::user();
                $token = $user->createToken('app')->accessToken;

                return response([
                    'message' => 'Success Login',
                    'user' => $user,
                    'token' => $token
                ], 200);
            }
        } catch (Exception $exception) {
            return response([
                'message' => $exception->getMessage()
            ], 400);
        }
        return response([
            'message' => 'Email Or Password is Incorrect'
        ], 401);
    }

    public function Register(RegisterRequest $request)
    {
        try {

            $user = User::create([
                'name' => $request->name,
                'email' => $request->email,
                'password' => Hash::make($request->password)
            ]);
            $token = $user->createToken('app')->accessToken;

            return response([
                'message' => "Registration Successfully",
                'token' => $token,
                'user' => $user
            ], 200);
        } catch (Exception $exception) {
            return response([
                'message' => $exception->getMessage()
            ], 400);
        }
    }
}
