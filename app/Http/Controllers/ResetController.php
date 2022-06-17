<?php

namespace App\Http\Controllers;

use DB;
use Illuminate\Http\Request;
use App\Http\Requests\ResetRequest;
use Illuminate\Support\Facades\Hash;

class ResetController extends Controller
{
    public function ResetPassword(ResetRequest $request)
    {
        $email = $request->email;
        $token = $request->token;
        $password = Hash::make($request->password);

        $email_check = DB::table('password_resets')->where('email', $email)->first();
        $pin_check = DB::table('password_resets')->where('token', $token)->first();

        if (!$email_check) {
            return response([
                'message' => "Email Not Found"
            ], 401);
        }
        if (!$pin_check) {
            return response([
                'message' => "Pin Code Invalid"
            ], 401);
        }
        DB::table('users')->where('email', $email)->update(['password' => $password]);
        DB::table('password_resets')->where('email', $email)->delete();
        return response([
            'message' => 'Password Change Successfully'
        ], 200);
    } // end method 



}
