<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\Image;
use App\Models\Reservation;
use App\Models\Voyage;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;

class VoyageController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
       // dd(Voyage::with('images')->get());
        return view('voyageindex',['voyage'=>Voyage::with('images')->get()]);
        
    }

    public function archive()
    {    
        return view('voyagearchive',['voyagear'=>Voyage::onlyTrashed()->with('images')->get()]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('voyagecreate');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $voyage=Voyage::create($request->only(['titre','date_dp','date_ar','duree','prix','description','nbplace']));
        if($request->hasFile('image'))
    {
        foreach($request->image as $image)
        {
            $image_name =time().'_'.$image->getClientOriginalName();
            $image->move(public_path('uploads'), $image_name);
            $images=Image::create(['path'=>$image_name]);
            $images->voyage()->associate($voyage)->save();
        }

    }

    
        return redirect()->route('voyage.index');

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $voyages=Voyage::findOrFail($id);
        session()->put('idvoyage',$id);
        return view('plus_details',['voyages'=>Voyage::with('images')->whereKey($id)->get()]);
        
    }

    public function resvoyshow($id)
    {
        $voyages=Voyage::findOrFail($id);
       
        return view('reservation',['reservation'=>Reservation::where('voyage_id',$id)->get()]);
        
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $voyage=Voyage::findOrFail($id);
        $nbim=Image::where('idvoyage',$id)->count();
        // dd($nbim+3);
        return view('voyagesedit',['voyages'=>Voyage::whereKey($id)->get(),
                                    'images'=>Image::where('idvoyage',$id)->get()]);
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
        $voyage=Voyage::with('images')->whereKey($id)->first();
        $voyage->update($request->only(['titre','date_dp','date_ar','duree','prix','description']));

        if($request->hasFile('image'))
    {
        foreach($request->image as $image)
        {
            $image_name =time().'_'.$image->getClientOriginalName();
            $image->move(public_path('uploads'), $image_name);
            $images=Image::create(['path'=>$image_name]);
            $images->voyage()->associate($voyage)->save();
        }

    }
        
        return redirect()->route('voyage.index');
        
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Voyage::destroy($id);
        return redirect()->route('voyage.index');
    }

    public function destroyimage($id)
    {
        $img=Image::whereKey($id)->first();

        if (File::exists('./uploads/'.$img->path)){
            File::delete('./uploads/'.$img->path);
        }
        DB::table('images')
        ->where('id',$id)
        ->delete();
        return redirect('/voyage/'.$img->idvoyage.'/edit');
    }

    public function restore(Request $request,$id)
    {
        $voyage= Voyage::onlyTrashed()->where('id',$id)->first();
        $voyage->restore();
        return redirect()->route('voyage.index');
    }

    public function forcedelete(Request $request,$id)
    {
        $voyage= Voyage::onlyTrashed()->where('id',$id)->first();
        $voyage->forceDelete();
        return redirect()->back();
    }
}
