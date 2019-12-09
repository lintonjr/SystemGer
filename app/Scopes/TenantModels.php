<?php
namespace App\Scopes;

use Illuminate\Database\Eloquent\Model;
use App\Scopes\TenantScope;
trait TenantModels
{
    protected static function boot()
    {
        parent::boot();
        static::addGlobalScope(new TenantScope);
        static::creating(function(Model $model){

            // dd(  null !== $model->getTable(). ".sis_account_id" );
                        
            $aId = Auth()->user()->sis_account_id;
            $model->sis_account_id = $aId;
        });
    }
}