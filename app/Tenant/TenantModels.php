<?php

namespace App\Tenant;

use Illuminate\Database\Eloquent\Model;
// use Tenant;

trait TenantModels
{

    // protected static function boot()
    // {
    //     parent::boot();

    //     static::addGlobalScope(new TenantScope());

    //     static::creating(function (Model $obj) {
    //         $tenant = Tenant::getTenant();
    //         if($tenant){
    //             $obj->entity_id = $tenant;
    //         }
    //     });
    // }

}
