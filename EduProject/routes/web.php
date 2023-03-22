<?php

use App\Http\Controllers\DocentesController;
use App\Http\Controllers\EstudiantesController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\MainController;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
})->name("main.page");
Route::get('/dashboard', function () {
    return view('dashboard');
})->name("dashboard.page");
// Auth Pages
Route::post('/login-form', [LoginController::class, "authenticationUser"])->name("login.auth");
Route::get('/logout', [LoginController::class, "destroy"])->name("session.destroy");
// User Pages
Route::get('/register-user', [UserController::class, "index"])->name("registerUser.form");
Route::post('/create-user', [UserController::class, "create"])->name('registerUser.create');
// Estudent Pages
Route::post('/create-estudent', [EstudiantesController::class, "create"])->name('registerEstudent.create');
Route::get('/show-estudents/{content}', [EstudiantesController::class, "show"])->name('registerEstudent.show');
Route::post('/delete-estudent/{id}', [EstudiantesController::class, "delete"])->name('registerEstudent.delete');
Route::post('/edit-estudent/{id}', [EstudiantesController::class, "edit"])->name('registerEstudent.edit');
Route::post('/update-estudent/{id}', [EstudiantesController::class, "update"])->name('registerEstudent.update');
// Docent Pages
Route::post('/create-docente', [DocentesController::class, "create"])->name('registerDocente.create');
Route::get('/show-estudents/{content}', [DocentesController::class, "show"])->name('registerEstudent.show');
Route::post('/delete-estudent/{id}', [DocentesController::class, "delete"])->name('registerEstudent.delete');
Route::post('/edit-estudent/{id}', [DocentesController::class, "edit"])->name('registerEstudent.edit');
Route::post('/update-estudent/{id}', [DocentesController::class, "update"])->name('registerEstudent.update');
// Admin Pages
Route::get('/adminweb',
    function () {
        return view('admin');
    }
    )->name("Admin.page");
Route::get('/contentAdmin/{content}', [MainController::class, "contentController"])->name("content.dashboard");
Route::get('/contentAdmin', [MainController::class, "contentControllerRedirect"])->name("content.dashboard.extra");
Route::post('/login-forms', [LoginController::class, "authenticationAdmin"])->name("loginAdmin.auth");
Route::get('/logoutAdmin', [LoginController::class, "destroyAdmin"])->name("sessionAdmin.destroy");

