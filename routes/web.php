<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\PatientController;
use App\Http\Controllers\SettingController;

Route::get('/', function () {
    // return view('welcome');
    return redirect('/login');
});

Route::get('/login', [LoginController::class, 'index'])->name('login');
Route::post('/loginaction', [LoginController::class, 'loginaction'])->name('loginaction');
// Route::get('/dashboard', [DashboardController::class, 'index'])->name('dashboard')->middleware('auth');
Route::get('/dashboard', [DashboardController::class, 'index'])->name('dashboard');
Route::get('/patient', [PatientController::class, 'index'])->name('patients');
Route::get('/logoutaction', [LoginController::class, 'logoutaction'])->name('logoutaction');
Route::get('/export-patients', [PatientController::class, 'export']);
Route::get('/setting', [SettingController::class, 'index'])->name('setting');