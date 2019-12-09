<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Management\Entity;

class FrontendController extends Controller
{
    private $totalPage = 10;

    protected $ctrl = array(
        "name"    => "Listagem de Conteúdo",
        "route"   => "entities",
        "title"   => "Listagem de Conteúdo",
        "errors" => ["error_all" => "Você não tem permissão!"]
     );

    public function index()
    {
        $ctrl = $this->ctrl;

        $itens = Entity::whereNull('deleted_at')->get();
        return response(view('Frontend.' . $ctrl['route'] . '.entities', compact('ctrl', 'itens')));
    }

    public function agencies($name)
    {
        $ctrl = $this->ctrl;

        $entity = Entity::where('name', $name)->with('agencies')->first();
        return response(view('Frontend.'.$ctrl['route']. '.entity-page', compact('ctrl', 'entity')));
    }
}
