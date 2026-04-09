<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\ItemController;
use App\Http\Controllers\Api\AuthController;

Route::post('/register', [AuthController::class, 'register']);
Route::post('/login', [AuthController::class, 'login']);

Route::get('/external-data', [ItemController::class, 'external']);

Route::middleware('auth:sanctum')->group(function () {
    Route::apiResource('items', ItemController::class);
});
