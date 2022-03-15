<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Voyage extends Model
{
    use HasFactory;
    use SoftDeletes;
    protected $table='voyages';
    protected $fillable =['titre','date_dp','date_ar','duree','prix','description','nbplace'];
    protected $primarykey='id';

    public function images(){
        return $this->hasMany('App\Models\Image','idvoyage');
    }
    public function reservation(){
        return $this->hasMany('App\Models\Reservation','voyage_id');
    }

    public static function boot(){
        parent::boot();
        Static::deleting(function( Voyage $voyage){
            $voyage->images()->delete();
        });

        Static::restoring(function( Voyage $voyage){
            $voyage->images()->restore();
        });

    }
}
