<?php

namespace App\Http\Controllers;
use App\Models\Voyage;
use Illuminate\Http\Request;
use Illuminate\Auth\RequestGuard;
use Illuminate\Support\Facades\Auth;

class HomeController extends Controller
{
    public function index(){
        
        $role=Auth::user()->role;
        if ($role==1) {
            return redirect()->route('dashboard');
        }
        else{
            return redirect('/home');
        }
    }

    public function voyage(){
        return view('userdashboard',['voyages'=>Voyage::with('images')->get()]);
    }
}
