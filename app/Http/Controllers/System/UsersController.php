<?php

namespace App\Http\Controllers\System;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Gate;
use App\Services\UserService;
use App\Services\ClientService;
use App\Services\RoleService;
use App\User;
use App\Models\Management\Client;
use App\Models\System\Role;
use App\Models\Management\Entity;
use Carbon\Carbon;
use PDF;

class UsersController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function __construct(UserService $userService, RoleService $roleservice)
    {
        $this->service = $userService;
        $this->roleService = $roleservice;
    }
    protected $ctrl = array(
        "name"    => "Usuários",
        "route"   => "users",
        "title"   => "Usuários",
        "view"    => "users-view",
        "create"  => "users-create",
        "update"  => "users-edit",
        "delete"  => "users-delete",
        "errors" => ["error_all" => "Você não tem permissão!"]
    );

    public function index(Request $request)
    {
        $ctrl = $this->ctrl;

        // if(Gate::denies($ctrl['view'])){
        //     return redirect()->to('/home');
        // }

        return view($ctrl['route'].'.index', compact('itens', 'ctrl'));
    }

    public function users(Request $request)
    {
        $ctrl = $this->ctrl;
        $users = User::all();
        view()->share('users', $users);
        if($request->has('download')) {
        	// pass view file
            $pdf = PDF::loadView($ctrl['route'].'.users');
            // download pdf
            return $pdf->download('userlist.pdf');
        }
        return view($ctrl['route'].'.users', compact('ctrl', 'users'));
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
        $roles = $this->roleService->index();
        return view($ctrl['route'].'.create', compact('ctrl', 'item', 'clients', 'roles'));
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
        return redirect()->to($ctrl['route'])->with('success', 'Criado com sucesso!');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {

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

        $item = $this->service->edit($id);
        $roles = $this->roleService->index();
        return view($ctrl['route'].'.create', compact('ctrl', 'item', 'clients', 'role', 'entities'));
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
        return redirect()->to($ctrl['route'])->with('success', 'Editado com Sucesso!');
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
        return redirect()->to($ctrl['route'])->with('success', 'Deletado com sucesso!');
    }

    public function getData()
    {
        $datatable = $this->service->getData();
        return $datatable;
    }

    public function indexRoles(Request $request, $id)
    {
        $ctrl = $this->ctrl;
        // if(Gate::denies($ctrl['view'])){
        //     return redirect()->to('/home');
        // }
        $roles = $this->roleService->index();
        $item = User::find($id);
        return response(view($ctrl['route'].'.roles', compact('ctrl', 'item', 'roles')));
    }

    public function getRelation(Request $request)
    {
        $id = $request->id;
        $datatable = $this->service->getRelation($id);
        return $datatable;
    }

    public function StoreRoles(Request $request, $id)
    {
        $ctrl = $this->ctrl;
        // if(Gate::denies($ctrl['create'])){
        //     return redirect()->to('/home');
        // }
        $itens = $this->service->edit($id);
        $data = $request->all();
        foreach ($data['role_id'] as $value) {
            $roles = $this->roleService->find($value);
            $itens->addRole($roles);
        }
        return redirect()->back();
    }
    public function DestroyRole($role_id, $id)
    {
        $ctrl = $this->ctrl;
        // if(Gate::denies($ctrl['delete'])){
        //     return redirect()->to('/home');
        // }
        $itens = User::find($id);
        $role = Role::find($role_id);
        $itens->removeRole($role);
        return redirect()->back()->with('success', 'Deletado com sucesso!');
    }

    public function indexClients(Request $request, $id)
    {
        $ctrl = $this->ctrl;
        // if(Gate::denies($ctrl['view'])){
        //     return redirect()->to('/home');
        // }
        $clients = $this->clientService->index();
        $item = User::find($id);
        return response(view($ctrl['route'].'.clients', compact('ctrl', 'item', 'clients')));
    }

    public function getClients(Request $request)
    {
        $id = $request->id;
        $datatable = $this->service->getClients($id);
        return $datatable;
    }

    public function StoreClients(Request $request, $id)
    {
        $ctrl = $this->ctrl;
        // if(Gate::denies($ctrl['create'])){
        //     return redirect()->to('/home');
        // }
        $itens = $this->service->edit($id);
        $data = $request->all();
        foreach ($data['client_id'] as $value) {
            $clients = $this->clientService->find($value);
            $itens->addClient($clients);
        }
        return redirect()->back();
    }
    public function DestroyClients($client_id, $id)
    {
        $ctrl = $this->ctrl;
        // if(Gate::denies($ctrl['delete'])){
        //     return redirect()->to('/home');
        // }
        $itens = User::find($id);
        $client = Client::find($client_id);
        $itens->removeClient($client);
        return redirect()->back()->with('success', 'Deletado com sucesso!');
    }
}
