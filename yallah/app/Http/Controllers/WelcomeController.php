<?php

namespace App\Http\Controllers;
use Illuminate\Auth\RequestGuard;
use App\Models\Voyage;
use App\Models\Image;
use App\Models\Welcome;
use Illuminate\Http\Request;

class WelcomeController extends Controller
{
    public function index()
    {
       // dd(Voyage::with('images')->whereKey(19)->get());
        return view('welcome',['voyages'=>Voyage::with('images')->get()]);
    }
}