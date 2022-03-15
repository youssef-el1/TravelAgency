<?php

namespace App\Http\Controllers;
use App\Models\Voyage;
use App\Models\Reservation;
use Illuminate\Http\Request;
use Illuminate\Auth\RequestGuard;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\File;

class ReservationController extends Controller
{
    public function index()
    {
        return view('reservation',['reservation'=>Reservation::all()]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        
        return view('formulaireres');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $reservation=reservation::create($request->only(['nom','prenom','nbr_place','tele','type_pay','photo_recu']));
        $id = $request->session()->get('idvoyage');
        $reservation->user_id=Auth::user()->id;
        $reservation->voyage_id=$id;
        if ($request->type_pay=='sur_place') {
            $reservation->statut=1;
        }
        
        if($request->hasFile('image'))
        {   
            $image=$request->image;
            $image_name =time().'_'.$image->getClientOriginalName();
            $image->move(public_path('recu'), $image_name);
            $reservation->photo_recu=$image_name;
        }

        $reservation->save();
        return redirect()->route('reservation.create');

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $reservation=Reservation::findOrFail($id);
        return view('reservationshow',['reservations'=>Reservation::with('voyage')->whereKey($id)->get()]);
        
    }

    public function resusershow($id)
    {
        return view('reservationuser',['reservation'=>Reservation::where('user_id',$id)->get()]);
        
    }



    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $reservation=Reservation::findOrFail($id);
        return view('editreservations',['reservations'=>Reservation::With('voyage')->whereKey($id)->get()]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $reservation=Reservation::whereKey($id)->first();
        $reservation->update($request->only(['nom','prenom','nbr_place','tele','type_pay']));
        if($request->hasFile('image'))
        {   
            if (File::exists('./recu/'.$reservation->photo_recu)){
                File::delete('./recu/'.$reservation->photo_recu);
            }
            
            $image=$request->image;
            $image_name =time().'_'.$image->getClientOriginalName();
            $image->move(public_path('recu'), $image_name);
            $reservation->photo_recu=$image_name;
            $reservation->save();

        }

        return redirect()->route('reservation.edit');
        
    }

    public function updatestatut(Request $request, $id)
    {
        $reservation=Reservation::whereKey($id)->first();
        $reservation->update($request->only(['statut']));

        return redirect()->back();
        
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Reservation::destroy($id);
        return redirect()->back();
    }
}
