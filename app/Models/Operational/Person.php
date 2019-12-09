<?php

namespace App\Models\Operational;

use App\Models\Administration\City;
use App\Models\Administration\District;
use App\Models\Administration\Link;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Person extends Model
{
    use SoftDeletes;
    protected $table = 'people';
    protected $fillable = [
                            'city_id',
                            'link_id',
                            'district_id',
                            'name',
                            'identification_number',
                            'nickname',
                            'phone',
                            'cellphone',
                            'email',
                            'zipcode',
                            'address',
                            'neighborhood',
                            'number',
                            'complement',
                            'more_information',
                            'sex',
                            'children',
                            'birth',
                            'user_id',
                            'deleted_at'
                        ];

    public static function createCustom($data)
    {
        $data['birth'] = \Helper::convertDate($data['birth']);
        $data['user_id'] = \Auth::user()->id;
        // dd($data);
        return self::create($data);
    }
    
    public static function updateCustom($id, $data)
    {
        $data['birth'] = \Helper::convertDate($data['birth']);
        $data['user_id'] = \Auth::user()->id;
        return self::find($id)->update($data);
    }

    public function cities()
    {
        return $this->belongsTo(City::class, 'city_id');
    }
    public function links()
    {
        return $this->belongsTo(Link::class, 'link_id');
    }
    public function districts()
    {
        return $this->belongsTo(District::class, 'district_id');
    }
}
