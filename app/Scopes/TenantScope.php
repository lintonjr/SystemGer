<?php
namespace App\Scopes;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Scope;

class TenantScope implements Scope 
{
	public function apply(Builder $builder, Model $model)
	{


		$aId = auth()->user()->sis_account_id;
		if($aId) 
		{
			$fullColumnName = $model->getTable() . ".sis_account_id";
			$builder->where($fullColumnName, $aId);
		}
	}
}