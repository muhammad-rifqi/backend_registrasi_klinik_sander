<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\PatientController;

Route::post('/loginaction', [LoginController::class, 'loginaction']);
Route::middleware('auth:sanctum')->get('/patients', [PatientController::class, 'data']);
Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');

