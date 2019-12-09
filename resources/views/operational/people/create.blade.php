@extends('layouts.app')
@section('title', 'Deputado Cabo Maciel')
@push('scripts')
@endpush
@section('content')
    <div class="content-wrapper bg-hexagons">
        <div class="content-header row">
            <div class="content-header-left col-md-6 col-12 mb-2">
                <h3 class="content-header-title">{{$ctrl['name']}}</h3>
            </div>
            <div class="content-header-right col-md-6 col-12">
                <div class="btn-group float-md-right" role="group">
                    <a accesskey="V" class="btn btn-primary btn-min-width mr-1 mb-1" role="button" href="{{ route($ctrl['route'].'.index') }}">
                        <i class="la la-arrow-left"></i> Voltar
                    </a>
                </div>
            </div>
        </div>
        <div class="content-body">
            <!-- Input Validation start -->
            <section class="input-validation">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header">
                                <h4 class="card-title">Cadastrar uma Pessoa</h4> por: {{\Auth::user()->name}} em {{\Helper::formatDate(\Carbon\Carbon::now())}}
                                <a class="heading-elements-toggle">
                                    <i class="la la-ellipsis-v font-medium-3"></i>
                                </a>
                                <div class="heading-elements">
                                    <ul class="list-inline mb-0">
                                        <li>
                                            <a data-action="collapse">
                                                <i class="ft-minus"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a data-action="reload">
                                                <i class="ft-rotate-cw"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a data-action="expand">
                                                <i class="ft-maximize"></i>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="card-content collapse show">
                                <div class="card-body">
                                    <form class="form-horizontal" method="POST" novalidate @if( isset($item->id)) action="{{ route($ctrl['route'].'.update', $item->id) }}">
                                        {{ method_field('put') }}
                                        @else
                                            action="{{ route($ctrl['route'].'.store') }}">
                                        @endif
                                            @csrf
                                        <div class="row">
                                            <input type="text" name="user_id" class="form-control" value="{{ \Auth::user()->id }}" hidden>  
                                            <div class="col-lg-4 col-md-4">
                                                <div class="form-group">
                                                    <h5>Nome
                                                        <span class="required">*</span>
                                                    </h5>
                                                    <div class="controls">
                                                        <input type="text" name="name" class="form-control {{ $errors->has('name') ? 'is-invalid' : '' }} {{ isset($item->name) ? 'active' :null }}" required value="{{ isset($item->name) ? $item->name : old('name') }}" autofocus>
                                                        @if ($errors->has('name'))
                                                            <div class="invalid-feedback" >
                                                                {{ $errors->first('name') }}
                                                            </div>
                                                        @endif
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-4 col-md-4">
                                                <div class="form-group">
                                                    <h5>CPF
                                                        <span class="required"></span>
                                                    </h5>
                                                    <div class="controls">
                                                        <input type="text" name="identification_number" class="cpf form-control {{ $errors->has('identification_number') ? 'is-invalid' : '' }} {{ isset($item->identification_number) ? 'active' :null }}" required value="{{ isset($item->identification_number) ? $item->identification_number : old('identification_number') }}">
                                                        @if ($errors->has('identification_number'))
                                                            <div class="invalid-feedback" >
                                                                {{ $errors->first('identification_number') }}
                                                            </div>
                                                        @endif
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-4 col-md-4">
                                                <div class="form-group">
                                                    <h5>Apelido
                                                        <span class="required"></span>
                                                    </h5>
                                                    <div class="controls">
                                                        <input type="text" name="nickname" class="form-control {{ $errors->has('nickname') ? 'is-invalid' : '' }} {{ isset($item->nickname) ? 'active' :null }}" value="{{ isset($item->nickname) ? $item->nickname : old('nickname') }}">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-4 col-md-4">
                                                <div class="form-group">
                                                    <h5>Telefone
                                                        <span class="required"></span>
                                                    </h5>
                                                    <div class="controls">
                                                        <input type="text" name="phone" class="phone_with_ddd form-control {{ $errors->has('phone') ? 'is-invalid' : '' }} {{ isset($item->phone) ? 'active' :null }}" value="{{ isset($item->phone) ? $item->phone : old('phone') }}">
                                                        {{-- @if ($errors->has('phone'))
                                                            <div class="invalid-feedback" >
                                                                {{ $errors->first('phone') }}
                                                            </div>
                                                        @endif --}}
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-4 col-md-4">
                                                <div class="form-group">
                                                    <h5>Celular
                                                        <span class="required">*</span>
                                                    </h5>
                                                    <div class="controls">
                                                        <input type="text" name="cellphone" class="phone_us form-control {{ $errors->has('cellphone') ? 'is-invalid' : '' }} {{ isset($item->cellphone) ? 'active' :null }}" required value="{{ isset($item->cellphone) ? $item->cellphone : old('cellphone') }}">
                                                        @if ($errors->has('cellphone'))
                                                            <div class="invalid-feedback" >
                                                                {{ $errors->first('cellphone') }}
                                                            </div>
                                                        @endif
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-4 col-md-4">
                                                <div class="form-group">
                                                    <h5>E-mail
                                                        <span class="required"></span>
                                                    </h5>
                                                    <div class="controls">
                                                        <input type="text" name="email" class="form-control {{ $errors->has('email') ? 'is-invalid' : '' }} {{ isset($item->email) ? 'active' :null }}" value="{{ isset($item->email) ? $item->email : old('email') }}">
                                                        {{-- @if ($errors->has('email'))
                                                            <div class="invalid-feedback" >
                                                                {{ $errors->first('email') }}
                                                            </div>
                                                        @endif --}}
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-3 col-md-3">
                                                <div class="form-group">
                                                    <h5>Cep
                                                        <span class="required">*</span>
                                                    </h5>
                                                    <div class="controls">
                                                        <input type="text" name="zipcode" id="cep" class="cep form-control {{ $errors->has('zipcode') ? 'is-invalid' : '' }} {{ isset($item->zipcode) ? 'active' :null }}" required value="{{ isset($item->zipcode) ? $item->zipcode : old('zipcode') }}" onblur="pesquisacep(this.value);">
                                                        @if ($errors->has('zipcode'))
                                                            <div class="invalid-feedback" >
                                                                {{ $errors->first('zipcode') }}
                                                            </div>
                                                        @endif
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-4 col-md-4">
                                                <div class="form-group">
                                                    <h5>Endereço
                                                        <span class="required"></span>
                                                    </h5>
                                                    <div class="controls">
                                                        <input type="text" name="address" id="rua" class="form-control {{ $errors->has('address') ? 'is-invalid' : '' }} {{ isset($item->address) ? 'active' :null }}" required value="{{ isset($item->address) ? $item->address : old('address') }}">
                                                        @if ($errors->has('address'))
                                                            <div class="invalid-feedback" >
                                                                {{ $errors->first('address') }}
                                                            </div>
                                                        @endif
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-3 col-md-3">
                                                <div class="form-group">
                                                    <h5>Bairro
                                                        <span class="required"></span>
                                                    </h5>
                                                    <div class="controls">
                                                        <input type="text" name="neighborhood" id="bairro" class="form-control {{ $errors->has('neighborhood') ? 'is-invalid' : '' }} {{ isset($item->neighborhood) ? 'active' :null }}" required value="{{ isset($item->neighborhood) ? $item->neighborhood : old('neighborhood') }}">
                                                        @if ($errors->has('neighborhood'))
                                                            <div class="invalid-feedback" >
                                                                {{ $errors->first('neighborhood') }}
                                                            </div>
                                                        @endif
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-2 col-md-2">
                                                <div class="form-group">
                                                    <h5>Nº
                                                        <span class="required"></span>
                                                    </h5>
                                                    <div class="controls">
                                                        <input type="text" name="number" class="form-control {{ $errors->has('number') ? 'is-invalid' : '' }} {{ isset($item->number) ? 'active' :null }}" required value="{{ isset($item->number) ? $item->number : old('number') }}">
                                                        @if ($errors->has('number'))
                                                            <div class="invalid-feedback" >
                                                                {{ $errors->first('number') }}
                                                            </div>
                                                        @endif
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-4 col-md-4">
                                                <div class="form-group">
                                                    <h5>Complemento
                                                        <span class="required"></span>
                                                    </h5>
                                                    <div class="controls">
                                                        <input type="text" name="complement" class="form-control {{ $errors->has('complement') ? 'is-invalid' : '' }} {{ isset($item->complement) ? 'active' :null }}" value="{{ isset($item->complement) ? $item->complement : old('complement') }}">
                                                        {{-- @if ($errors->has('complement'))
                                                            <div class="invalid-feedback" >
                                                                {{ $errors->first('complement') }}
                                                            </div>
                                                        @endif --}}
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-4 col-md-4">
                                                <div class="form-group">
                                                    <h5>Cidade
                                                        <span class="required">*</span>
                                                    </h5>
                                                    <div class="controls">
                                                        <select class="select2 form-control" name="city_id" required>
                                                            <option value="">Cidade</option>
                                                            @foreach ($cities as $city)
                                                            
                                                                @if(isset($item->city_id))
                                                                    <option value="{{$city->id}}" {{ $item->city_id == $city->id ? 'selected': null }}>{{$city->city}}</option>
                                                                @else
                                                                    <option value="{{$city->id}}">{{$city->city}}</option>
                                                                @endif
                                                            @endforeach
                                                        </select>
                                                        @if ($errors->has('city_id'))
                                                            <div class="invalid-feedback" >
                                                                {{ $errors->first('city_id') }}
                                                            </div>
                                                        @endif
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-2 col-md-2">
                                                <div class="form-group">
                                                    <h5>Nascimento
                                                        <span class="required">*</span>
                                                    </h5>
                                                    <div class="controls">
                                                        <input type='text' name="birth" class="placeholder form-control {{ isset($item->birth) ? 'active' :null }}" required data-validation-required-message="Este Campo é obrigatório"  value="{{ isset($item->birth) ? \Helper::formatDate($item->birth) : old('birth') }}"/>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-2 col-md-2">
                                                <div class="form-group">
                                                    <h5>Sexo
                                                        <span class="required">*</span>
                                                    </h5>
                                                    <div class="controls">
                                                        <select class="select2 form-control" name="sex" required>
                                                            <option value="">Sexo</option>
                                                            <option value="Masculino">Masculino</option>
                                                            <option value="Feminino">Feminino</option>
                                                            <option value="Outro">Outro</option>
                                                        </select>
                                                        @if ($errors->has('sex'))
                                                            <div class="invalid-feedback" >
                                                                {{ $errors->first('sex') }}
                                                            </div>
                                                        @endif
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-4 col-md-4">
                                                <div class="form-group">
                                                    <h5>Vinculado
                                                        <span class="required">*</span>
                                                    </h5>
                                                    <div class="controls">
                                                        <select class="select2 form-control" name="link_id" required>
                                                            <option value="">Vinculo</option>
                                                            @foreach ($links as $link)
                                                            
                                                                @if(isset($item->link_id))
                                                                    <option value="{{$link->id}}" {{ $item->link_id == $link->id ? 'selected': null }}>{{$link->link}}</option>
                                                                @else
                                                                    <option value="{{$link->id}}">{{$link->link}}</option>
                                                                @endif
                                                            @endforeach
                                                        </select>
                                                        @if ($errors->has('link_id'))
                                                            <div class="invalid-feedback" >
                                                                {{ $errors->first('link_id') }}
                                                            </div>
                                                        @endif
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-3 col-md-3">
                                                <div class="form-group">
                                                    <h5>Zona
                                                        <span class="required">*</span>
                                                    </h5>
                                                    <div class="controls">
                                                        <select class="select2 form-control" name="district_id" required>
                                                            <option value="">Zona</option>
                                                            @foreach ($districts as $district)
                                                            
                                                                @if(isset($item->district_id))
                                                                    <option value="{{$district->id}}" {{ $item->district_id == $district->id ? 'selected': null }}>{{$district->district}}</option>
                                                                @else
                                                                    <option value="{{$district->id}}">{{$district->district}}</option>
                                                                @endif
                                                            @endforeach
                                                        </select>
                                                        @if ($errors->has('district_id'))
                                                            <div class="invalid-feedback" >
                                                                {{ $errors->first('district_id') }}
                                                            </div>
                                                        @endif
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-2 col-md-2">
                                                <div class="form-group">
                                                    <h5>Filhos
                                                        <span class="required">*</span>
                                                    </h5>
                                                    <div class="controls">
                                                        <select class="select2 form-control" name="children" required>
                                                            <option value="">Filhos</option>
                                                            <option value="Sim">Sim</option>
                                                            <option value="Não">Não</option>
                                                        </select>
                                                        @if ($errors->has('children'))
                                                            <div class="invalid-feedback" >
                                                                {{ $errors->first('children') }}
                                                            </div>
                                                        @endif
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-3 col-md-3">
                                                <div class="form-group">
                                                    <h5>Quantidade de filhos
                                                        <span class="required"></span>
                                                    </h5>
                                                    <div class="controls">
                                                        <input type="number" name="children_number" class="form-control {{ $errors->has('children_number') ? 'is-invalid' : '' }} {{ isset($item->children_number) ? 'active' :null }}" value="{{ isset($item->children_number) ? $item->children_number : old('children_number') }}">
                                                        {{-- @if ($errors->has('complement'))
                                                            <div class="invalid-feedback" >
                                                                {{ $errors->first('complement') }}
                                                            </div>
                                                        @endif --}}
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-12 col-md-12">
                                                <div class="form-group">
                                                    <h5>Observações
                                                        <span class="required"></span>
                                                    </h5>
                                                    <div class="controls">
                                                        <textarea name="more_information" class="form-control" rows="5">{{ isset($item->more_information) ? $item->more_information : old('more_information') }}</textarea>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-12 col-md-12">
                                                <div class="text-right">
                                                    <button type="reset" class="btn btn-danger">Resetar <i class="la la-refresh position-right"></i></button>
                                                    <button type="submit" class="btn btn-success" id="btn-save">Salvar <i class="la la-check position-right"></i></button>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Input Validation end -->
        </div>
    </div>

@endsection
@push('link')
@endpush
@push('scripts')
    <script src="{{asset('js/general-scripts.js')}}" type="text/javascript"></script>
    <script type="text/javascript" src="{{ asset('js/pages/form-select2-exemple.js') }}"></script>
    <script type="text/javascript" src="{{ asset('js/jquery-mask.js') }}"></script>
    <script type="text/javascript" >
    
        function limpa_formulário_cep() {
                //Limpa valores do formulário de cep.
                document.getElementById('rua').value=("");
                document.getElementById('bairro').value=("");
        }

        function meu_callback(conteudo) {
            if (!("erro" in conteudo)) {
                //Atualiza os campos com os valores.
                document.getElementById('rua').value=(conteudo.logradouro);
                document.getElementById('bairro').value=(conteudo.bairro);
            } //end if.
            else {
                //CEP não Encontrado.
                limpa_formulário_cep();
                alert("CEP não encontrado.");
            }
        }
            
        function pesquisacep(valor) {

            //Nova variável "cep" somente com dígitos.
            var cep = valor.replace(/\D/g, '');

            //Verifica se campo cep possui valor informado.
            if (cep != "") {

                //Expressão regular para validar o CEP.
                var validacep = /^[0-9]{8}$/;

                //Valida o formato do CEP.
                if(validacep.test(cep)) {

                    //Preenche os campos com "..." enquanto consulta webservice.
                    document.getElementById('rua').value="...";
                    document.getElementById('bairro').value="...";

                    //Cria um elemento javascript.
                    var script = document.createElement('script');

                    //Sincroniza com o callback.
                    script.src = 'https://viacep.com.br/ws/'+ cep + '/json/?callback=meu_callback';

                    //Insere script no documento e carrega o conteúdo.
                    document.body.appendChild(script);

                } //end if.
                else {
                    //cep é inválido.
                    limpa_formulário_cep();
                    alert("Formato de CEP inválido.");
                }
            } //end if.
            else {
                //cep sem valor, limpa formulário.
                limpa_formulário_cep();
            }
        };

    </script>
    <script>
        $(document).ready(function(){
            $('.date').mask('00/00/0000');
            $('.cep').mask('00000-000');
            $('.phone_with_ddd').mask('(00) 0000-0000');
            $('.phone_us').mask('(00) 00000-0000');
            $('.cpf').mask('000.000.000-00', {reverse: true});
            $('.placeholder').mask("00/00/0000", {placeholder: "__/__/____"}, {reverse: true});
            $('.selectonfocus').mask("00/00/0000", {selectOnFocus: true});
        });
    </script>
@endpush
