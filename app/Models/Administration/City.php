<?php

namespace App\Models\Administration;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class City extends Model
{
    use SoftDeletes;
    protected $table = 'city';
    protected $fillable = ['city', 'deleted_at'];

    public static function createCustom($data)
    {
        return self::create($data);
    }
    
    public static function updateCustom($id, $data)
    {
        return self::find($id)->update($data);
    }
}
