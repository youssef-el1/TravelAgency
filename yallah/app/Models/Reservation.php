<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Reservation extends Model
{
    use HasFactory;
    protected $table='reservations';
    protected $fillable =['user_id','voyage_id','nom','prenom','nbr_place','tele','type_pay','photo_recu','statut'];
    protected $primarykey='id';
    
    public function user() {
        return $this->belongsTo(User::class);
    }

    public function voyage() {
        return $this->belongsTo(Voyage::class);
    }
}
