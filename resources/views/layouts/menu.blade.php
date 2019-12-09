<div class="main-menu menu-fixed menu-accordion menu-shadow menu-light" data-scroll-to-active="true">
	<div class="main-menu-content">
		<ul class="navigation navigation-main" id="main-menu-navigation" data-menu="menu-navigation">
            <li class="nav-item">
                <a href="{{route('home')}}">
                    <i class="la la-home"></i>
                    <span class="menu-title" data-i18n="nav.dash.main">Dashboard</span>
                </a>
            </li>
            <li class="nav-item {{ (Request::is('operational') or Request::is('operational/*')) ? 'active' : '' }}">
                <a href="#">
                    <i class="la la-plus-square"></i>
                    <span class="menu-title" data-i18n="nav.templates.main">Cadastros</span>
                </a>
                <ul class="menu-content">
                    <li class="{{ (Request::is('operational/people') or Request::is('operational/people/*')) ? 'active' : '' }}">
                        <a class="menu-item" href="{{ route('people.index') }}" data-i18n="nav.templates.vert.main">Pessoas</a>
                    </li>
                    <li class="{{ (Request::is('operational/calls') or Request::is('operational/calls/*')) ? 'active' : '' }}">
                        <a class="menu-item" href="{{ route('calls.index') }}" data-i18n="nav.templates.vert.main">Atendimentos</a>
                    </li>
                </ul>
            </li>
            <li class="nav-item {{ (Request::is('administration') or Request::is('administration/*')) ? 'active' : '' }}">
                <a href="#">
                    <i class="la la-plus-square"></i>
                    <span class="menu-title" data-i18n="nav.templates.main">Administração</span>
                </a>
                <ul class="menu-content">
                    <li class="{{ (Request::is('administration/links') or Request::is('administration/links/*')) ? 'active' : '' }}">
                        <a class="menu-item" href="{{ route('links.index') }}" data-i18n="nav.templates.vert.main">Vínculos</a>
                    </li>
                    <li class="{{ (Request::is('administration/cities') or Request::is('administration/cities/*')) ? 'active' : '' }}">
                        <a class="menu-item" href="{{ route('cities.index') }}" data-i18n="nav.templates.vert.main">Cidades</a>
                    </li>
                    <li class="{{ (Request::is('administration/districts') or Request::is('administration/districts/*')) ? 'active' : '' }}">
                        <a class="menu-item" href="{{ route('districts.index') }}" data-i18n="nav.templates.vert.main">Zonas</a>
                    </li>
                    <li class="{{ (Request::is('administration/types') or Request::is('administration/types/*')) ? 'active' : '' }}">
                        <a class="menu-item" href="{{ route('types.index') }}" data-i18n="nav.templates.vert.main">Tipos de Atendimentos</a>
                    </li>
                </ul>
            </li>
            <li class="nav-item {{ (Request::is('system') or Request::is('system/*') or Request::is('users')) ? 'active' : '' }}">
                <a href="#">
                    <i class="la la-users"></i>
                    <span class="menu-title" data-i18n="nav.templates.main">Sistema</span>
                </a>
                <ul class="menu-content">
                    <li class="{{ (Request::is('system/roles') or Request::is('system/roles/*')) ? 'active' : '' }}">
                        <a class="menu-item" href="{{ route('roles.index') }}" data-i18n="nav.templates.horz.main">Papéis</a>
                    </li>
                    <li class="{{ (Request::is('system/permissions') or Request::is('system/permissions/*')) ? 'active' : '' }}">
                        <a class="menu-item" href="{{ route('permissions.index') }}" data-i18n="nav.templates.horz.main">Permissões</a>
                    </li>
                    <li class="{{ (Request::is('users') or Request::is('users/*')) ? 'active' : '' }}">
                        <a class="menu-item" href="{{ route('users.index') }}" data-i18n="nav.templates.vert.main">Usuários</a>
                    </li>
                </ul>
            </li>
		</ul>
	</div>
</div>
