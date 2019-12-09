<?php

namespace App\Services;

use App\Models\Administration\Type;
use App\Models\Operational\Person;
use Yajra\Datatables\Datatables;
use App\Models\Operational\Call;
use Carbon\Carbon;

class CallService
{
    public function __construct(Call $call)
    {
        $this->model = $call;
    }

    public function people()
    {
        return Person::all();
    }

    public function types()
    {
        return Type::all();
    }

    public function index()
    {
        return $this->model::whereNull('deleted_at')->orderBy('name', 'ASC')->get();
    }

    public function store($request)
    {
        $data = $request->all();
        $data['user'] = \Auth::user()->id;
        $data['date'] = \Helper::convertDate($request->date);
        $this->model::createCustom($data);
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
        $view = 'calls';
        $returns = $this->model::with(['people', 'types'])->select('calls.*');

        return Datatables::of($returns)
            ->addColumn('action', function ($return) use ($view) {
                $edit =  route($view.'.edit',$return->id);
                $destroy =  route($view.'.destroy',$return->id);
                return "&emsp;<a href='{$edit}' title='Editar' ><li class='bqX' data-tooltip='Editar'><i class='mdi mdi-pencil'></i></li></a>
                        <a href='{$destroy}' class='cancel-button'><li class='bqX' data-tooltip='Excluir'><i class='mdi mdi-delete'></i></li></a>";
            })
            ->make(true);
    }

}
