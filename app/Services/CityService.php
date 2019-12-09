<?php

namespace App\Services;
use Yajra\Datatables\Datatables;
use App\Models\Administration\City;
use Carbon\Carbon;

class CityService
{
    public function __construct(City $model)
    {
        $this->model = $model;
    }

    public function index()
    {
        return $this->model::whereNull('deleted_at')->orderBy('city', 'ASC')->get();
    }

    public function store($request)
    {
        $this->model::createCustom($request->all());
    }

    public function edit($id)
    {
        return $this->model::where('id', $id)->first();
    }

    public function update($id, $request)
    {
        $this->model::updateCustom($id, $request->all());
    }

    public function delete($id)
    {
        $this->model::updateCustom($id, ['deleted_at' => Carbon::now()]);
    }

    public function getData()
    {
        $view = 'cities';
        $returns = $this->model::select(['id', 'city', 'deleted_at', 'created_at', 'updated_at']);

        return Datatables::of($returns)
            ->addColumn('action', function ($return) use ($view) {
                $edit =  route($view.'.edit',$return->id);
                $destroy =  route($view.'.destroy',$return->id);
                return "&emsp;<a href='{$edit}' title='Editar' ><li class='bqX' data-tooltip='Editar'><i class='mdi mdi-pencil'></i></li></a>
                        <a href='{$destroy}' class='cancel-button'><li class='bqX' data-tooltip='Excluir'><i class='mdi mdi-delete'></i></li></a>";
            })
            ->editColumn('id', 'ID: {{$id}}')
            ->make(true);
    }

}
