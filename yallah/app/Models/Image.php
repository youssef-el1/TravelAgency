<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Image extends Model
{
    use HasFactory;
    use SoftDeletes;
    protected $table='images';
    protected $fillable=['path'];
    protected $primarykey='id';

    public function voyage(){
        return $this->belongsTo('App\Models\Voyage','idvoyage');
    } 
}
