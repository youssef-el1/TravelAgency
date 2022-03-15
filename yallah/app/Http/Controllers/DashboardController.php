<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use App\Models\User;
use App\Models\Reservation;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
    public function index(){

        $reservation=Reservation::all()->count();
        $user=User::all()->count();

        $voyage=Reservation::with('voyage')->get();
        $revenue=0;
        foreach($voyage as $voy){
            $revenue+=$voy->nbr_place*$voy->Voyage->prix;
        }
        
        $reservation1=Reservation::with('voyage')->orderBy('created_at','desc')->get();

        // dd(Reservation::with('voyage')->get());

        return view('dashboard',['reservation'=>$reservation,
                                 'user'=>$user,
                                 'revenue'=>$revenue,
                                 'reservation1'=>$reservation1]);
    }
}
