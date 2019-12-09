<?php

namespace App\Http\Middleware;

use Closure;
use Auth;
use Tenant;

class TenantMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  \Closure $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        $user = Auth::user();
        $entity = $user->entity_id;
        if($entity){
            Tenant::setTenant($entity);
        }
        return $next($request);
    }
}
