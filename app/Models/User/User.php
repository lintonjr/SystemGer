<?php

namespace App\Models\User;

use Illuminate\Database\Eloquent\Model;
use App\Scopes\TenantModels;
use App\Models\System\Role;
use App\Models\Management\Client;
class User extends Model
{

    protected $fillable = [
        'name', 'email', 'deleted_at', 'password'
    ];
    protected $hidden = [
        'password', 'remember_token',
    ];

    public function roles(){
        return $this->belongsToMany(Role::class, 'role_user');
    }
    public function clients(){
        return $this->belongsToMany(Client::class, 'client_user');
    }

    public static function createCustom($data){
        $data['password'] = \bcrypt($data['password']);

		return self::create($data);
	}
	public static function updateCustom($id, $data){
        $data['password'] = \bcrypt($data['password']);
		return self::find($id)->update($data);
    }

	public function setCnpjCpfAttribute($value){
		$value = strlen($value) > 0 ? $value : NULL;
		$value = preg_replace('/[^0-9]/', '', $value);
		$this->attributes['cnpj_cpf'] = $value;
    }
    public function setFotoUrlAttribute($value){
		$value = isset($value) ? $value : 'img/avatars/avatar-blank.png';
		$this->attributes['foto_url'] = $value;
    }

    public function isAdmin()
    {
        return $this->existsRole('Administrador');
    }

    public function addRole($role)
    {
        if(is_string($role)){
            $role = Role::where('name', $role)->firstOrFail();
        }
        if($this->existsRole($role)){
            return;
        }

        return $this->roles()->attach($role);
    }
    public function removeRole($role)
    {
        if(is_string($role)){
            $role = Role::where('name', $role)->firstOrFail();
        }

        return $this->roles()->detach($role);
    }
    public function existsRole($role)
    {
        if(is_string($role)){
            $role = Role::where('name', $role)->firstOrFail();
        }

        return (boolean) $this->roles()->find($role->id);
    }
    public function addClient($client)
    {
        if(is_string($client)){
            $client = Client::where('name', $client)->firstOrFail();
        }
        if($this->existsClient($client)){
            return;
        }

        return $this->clients()->attach($client);
    }
    public function removeClient($client)
    {
        if(is_string($client)){
            $client = Client::where('name', $client)->firstOrFail();
        }

        return $this->clients()->detach($client);
    }
    public function existsClient($client)
    {
        if(is_string($client)){
            $client = Client::where('name', $client)->firstOrFail();
        }

        return (boolean) $this->clients()->find($client->id);
    }

    public function existsThisRole($roles)
    {
        $userRoles = $this->roles;
        return $roles->intersect($userRoles)->count();
    }

}
