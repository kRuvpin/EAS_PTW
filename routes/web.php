<?php

use App\Http\Controllers\TokonController;
use App\Http\Controllers\CostumerController;
use App\Http\Controllers\AdminController;

use Illuminate\Support\Facades\Route;

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
});

Route::get('', [TokonController::class, 'index']);
Route::get('/index', [TokonController::class, 'index']);
Route::get('/signup', [TokonController::class, 'signup_form']);
Route::get('/signin', [TokonController::class, 'signin_form'])->name('signin');
Route::post('/signin/proses', [TokonController::class, 'signin']);
Route::post('/signup/proses', [TokonController::class, 'signup']);
Route::get('/logout', [TokonController::class, 'logout']);

route::group(['middleware' => ['auth', 'level:costumer']], function () {
    Route::get('/costumer/history', [CostumerController::class, 'history']);
    Route::get('/costumer/index', [CostumerController::class, 'index']);
    Route::get('/costumer/baju/detail/{idbaju}', [CostumerController::class, 'detail']);
    Route::get('/costumer/cart', [CostumerController::class, 'cart']);
    Route::post('/costumer/baju/tambah', [CostumerController::class, 'tambah']);
    Route::post('/costumer/cart/checkout', [CostumerController::class, 'checkout']);
    //Route::get('/costumer/cart/edit/{cartid}', [CostumerController::class, 'edit']);
    Route::get('/costumer/cart/delete/{cartid}', [CostumerController::class, 'hapus']);
});

route::group(['middleware' => ['auth', 'level:admin']], function () {
    Route::get('/admin/index', [AdminController::class, 'index']);
    Route::get('/admin/user', [AdminController::class, 'user']);
    Route::get('/admin/index/cari/', [AdminController::class, 'cari']);
    Route::get('/admin/baju/add', [AdminController::class, 'add']);
    Route::post('/admin/baju/add/proses', [AdminController::class, 'add_proses']);
    Route::get('/admin/report', [AdminController::class, 'report']);
    Route::post('/admin/laporan/bulan', [AdminController::class, 'filter']);
    Route::get('/admin/laporan/edit/{kodepembayaran}', [AdminController::class, 'edit']);
    Route::get('/admin/laporan/delete/{kodepembayaran}', [AdminController::class, 'hapus']);
    Route::post('/admin/baju/edit/proses', [AdminController::class, 'edit_proses']);
    Route::get('/admin/baju/detail/{idbaju}', [AdminController::class, 'detail']);
    Route::get('/admin/baju/edit/{idbaju}', [AdminController::class, 'edit_baju']);
    Route::post('/admin/baju/proses/', [AdminController::class, 'update_baju']);
    Route::get('/admin/baju/hapus/{idbaju}', [AdminController::class, 'hapus_baju']);
});

// Route::get('/signin', function () {
//     return view('akun.signin');
// })->name('signin');

Route::get('/tes', [TokonController::class, 'tes']);
