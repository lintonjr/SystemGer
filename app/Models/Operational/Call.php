<?php

namespace App\Models\Operational;

use App\Models\Administration\Type;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Call extends Model
{
    use SoftDeletes;
    protected $table = 'calls';
    protected $fillable = [
                            'person_id',
                            'type_id',
                            'date',
                            'status',
                            'call',
                            'action',
                            'obs',
                            'user',
                            'deleted_at'
                        ];

    public static function createCustom($data)
    {
        // $data['date'] = \Helper::convertDate($data['date']);
        // dd($data);
        return self::create($data);
    }
    
    public static function updateCustom($id, $data)
    {
        $data['date'] = \Helper::convertDate($data['date']);
        return self::find($id)->update($data);
    }

    public function getDateAttribute($value)
    {
        return \Helper::formatDate($value);
    }

    public function people()
    {
        return $this->belongsTo(Person::class, 'person_id');
    }
    public function types()
    {
        return $this->belongsTo(Type::class, 'type_id');
    }
}
