<?php

namespace App\Http\Controllers\Operational;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Services\CallService;

class CallsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function __construct(CallService $callService)
    {
        $this->service = $callService;
    }

    protected $ctrl = array(
        "name"    => "Atendimentos",
        "route"   => "calls",
        "title"   => "atendimentos",
        "view"    => "calls-view",
        "create"  => "calls-create",
        "update"  => "calls-edit",
        "delete"  => "calls-delete",
        "errors" => ["error_all" => "Você não tem permissão!"]
    );
    
    public function index()
    {
        $ctrl = $this->ctrl;
        // if(Gate::denies($ctrl['view'])){
        //     return redirect()->to('/home');
        // }
        return view('operational.'.$ctrl['route'].'.index', compact('ctrl'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $ctrl = $this->ctrl;
        // if(Gate::denies($ctrl['create'])){
        //     return redirect()->to('/home');
        // }
        $people = $this->service->people();
        $types = $this->service->types();
        return view('operational.'.$ctrl['route'].'.create', compact('ctrl', 'people', 'types'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $ctrl = $this->ctrl;
        // if(Gate::denies($ctrl['create'])){
        //     return redirect()->to('/home');
        // }
        $create = $this->service->store($request);
        return redirect()->to('/operational/'.$ctrl['route'])->with('success', 'Criado com sucesso!');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $ctrl = $this->ctrl;
        // if(Gate::denies($ctrl['update'])){
        //     return redirect()->to('/home');
        // }

        $people = $this->service->people();
        $types = $this->service->types();
        $item = $this->service->edit($id);
        return view('operational.'.$ctrl['route'].'.create', compact('ctrl', 'item', 'people', 'types'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $ctrl = $this->ctrl;
        // if(Gate::denies($ctrl['update'])){
        //     return redirect()->to('/home');
        // }
        $update = $this->service->update($id, $request);
        return redirect()->to('/operational/'.$ctrl['route'])->with('success', 'Editado com Sucesso!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $ctrl = $this->ctrl;
        // if(Gate::denies($ctrl['delete'])){
        //     return redirect()->to('/home');
        // }
        $item = $this->service->delete($id);
        return redirect()->to('/operational/'.$ctrl['route'])->with('success', 'Deletado com sucesso!');
    }

    public function getData()
    {
        $datatable = $this->service->getData();
        return $datatable;
    }
}
