<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\DashboardController;

Route::post('/loginaction', [LoginController::class, 'loginaction']);
Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');

