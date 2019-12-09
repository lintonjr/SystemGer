<?php

namespace App\Models\Administration;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class District extends Model
{
    use SoftDeletes;
    protected $table = 'district';
    protected $fillable = ['district', 'deleted_at'];
    
    public static function createCustom($data)
    {
        return self::create($data);
    }
    
    public static function updateCustom($id, $data)
    {
        return self::find($id)->update($data);
    }
}
