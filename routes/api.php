<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\ResetController;
use App\Http\Controllers\ForgetController;

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });

// Login Routes 
Route::post('/login', [AuthController::class, 'Login']);

// Register Routes 
Route::post('/register', [AuthController::class, 'Register']);

// Forget Password Routes 
Route::post('/forget-password', [ForgetController::class, 'ForgetPassword']);

// Reset Password Routes 
Route::post('/reset-password', [ResetController::class, 'ResetPassword']);

// Current User Route 
Route::get('/user', [UserController::class, 'User'])->middleware('auth:api');
