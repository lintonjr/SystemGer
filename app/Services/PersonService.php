<?php

namespace App\Services;

use App\Models\Administration\City;
use App\Models\Administration\District;
use App\Models\Administration\Link;
use App\Models\Operational\Person;
use Yajra\Datatables\Datatables;
use Carbon\Carbon;

class PersonService
{
    public function __construct(Person $model)
    {
        $this->model = $model;
    }

    public function index()
    {
        return $this->model::whereNull('deleted_at')->orderBy('name', 'ASC')->get();
    }

    public function cities()
    {
        return City::all();
    }

    public function links()
    {
        return Link::all();
    }

    public function districts()
    {
        return District::all();
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
        $view = 'people';
        $returns = $this->model::select(['id', 'city_id', 'link_id', 'district_id', 'name', 'identification_number',
        'nickname', 'phone', 'cellphone', 'email', 'zipcode', 'address', 'neighborhood', 'number', 'more_information',
        'complement', 'sex', 'birth', 'children', 'deleted_at', 'created_at', 'updated_at']);

        return Datatables::of($returns)
            ->addColumn('action', function ($return) use ($view) {
                $edit =  route($view.'.edit',$return->id);
                $destroy =  route($view.'.destroy',$return->id);
                return "&emsp;<a href='{$edit}' title='Editar' ><li class='bqX' data-tooltip='Editar'><i class='mdi mdi-pencil'></i></li></a>
                        <a href='{$destroy}' class='cancel-button'><li class='bqX' data-tooltip='Excluir'><i class='mdi mdi-delete'></i></li></a>";
            })
            ->editColumn('birth', '{{\Helper::formatDate($birth)}}')
            ->make(true);
    }

}
