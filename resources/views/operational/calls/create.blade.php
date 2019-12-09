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
                                <h4 class="card-title">Cadastrar um atendimento</h4>por {{\Auth::user()->name}} em {{\Helper::formatDate(\Carbon\Carbon::now())}}
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
                                            <div class="col-lg-12 col-md-12">
                                                <div class="form-group">
                                                    <h5>Nome
                                                        <span class="required">*</span>
                                                    </h5>
                                                    <div class="controls">
                                                        <select class="select2 form-control" name="person_id" required>
                                                            <option value="">Nome</option>
                                                            @foreach ($people as $person)
                                                            
                                                                @if(isset($item->person_id))
                                                                    <option value="{{$person->id}}" {{ $item->person_id == $person->id ? 'selected': null }}>{{$person->name}} | {{$person->identification_number}}</option>
                                                                @else
                                                                    <option value="{{$person->id}}">{{$person->name}} | {{$person->identification_number}}</option>
                                                                @endif
                                                            @endforeach
                                                        </select>
                                                        @if ($errors->has('person_id'))
                                                            <div class="invalid-feedback" >
                                                                {{ $errors->first('person_id') }}
                                                            </div>
                                                        @endif
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-4 col-md-4">
                                                <div class="form-group">
                                                    <h5>Tipo
                                                        <span class="required">*</span>
                                                    </h5>
                                                    <div class="controls">
                                                        <select class="select2 form-control" name="type_id" required>
                                                            <option value="">Tipo</option>
                                                            @foreach ($types as $type)
                                                            
                                                                @if(isset($item->type_id))
                                                                    <option value="{{$type->id}}" {{ $item->type_id == $type->id ? 'selected': null }}>{{$type->type}}</option>
                                                                @else
                                                                    <option value="{{$type->id}}">{{$type->type}}</option>
                                                                @endif
                                                            @endforeach
                                                        </select>
                                                        @if ($errors->has('type_id'))
                                                            <div class="invalid-feedback" >
                                                                {{ $errors->first('type_id') }}
                                                            </div>
                                                        @endif
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-4 col-md-4">
                                                <div class="form-group">
                                                    <h5>Data
                                                        <span class="required">*</span>
                                                    </h5>
                                                    <div class="controls">
                                                        <input type='text' name="date" class="placeholder form-control {{ isset($item->date) ? 'active' :null }}" required data-validation-required-message="Este Campo é obrigatório" value="{{\Helper::formatDate(\Carbon\Carbon::now())}}" />
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-4 col-md-4">
                                                <div class="form-group">
                                                    <h5>Status
                                                        <span class="required">*</span>
                                                    </h5>
                                                    <div class="controls">
                                                        <select class="select2 form-control" name="status" required>
                                                            <option value="">Status</option>
                                                            @if(isset($item->status))
                                                                <option value="Andamento" {{ $item->status == 'Andamento' ? 'selected': null }}>Em Andamento</option>
                                                                <option value="Atendido" {{ $item->status == 'Atendido' ? 'selected': null }}>Atendido</option>
                                                                <option value="Concluído" {{ $item->status == 'Concluído' ? 'selected': null }}>Concluído</option>
                                                                <option value="Não Resolvido" {{ $item->status == 'Não Resolvido' ? 'selected': null }}>Não Resolvido</option>
                                                                <option value="Resolvido" {{ $item->status == 'Resolvido' ? 'selected': null }}>Resolvido</option>
                                                                <option value="Desistente" {{ $item->status == 'Desistente' ? 'selected': null }}>Desistente</option>
                                                            @else
                                                                <option value="Andamento">Em Andamento</option>
                                                                <option value="Atendido">Atendido</option>
                                                                <option value="Concluído">Concluído</option>
                                                                <option value="Não Resolvido">Não Resolvido</option>
                                                                <option value="Resolvido">Resolvido</option>
                                                                <option value="Desistente">Desistente</option>
                                                            @endif
                                                        </select>
                                                        @if ($errors->has('status'))
                                                            <div class="invalid-feedback" >
                                                                {{ $errors->first('status') }}
                                                            </div>
                                                        @endif
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-4 col-md-4">
                                                <div class="form-group">
                                                    <h5>Assunto
                                                        <span class="required"></span>
                                                    </h5>
                                                    <div class="controls">
                                                        <textarea name="call" class="form-control" rows="5" placeholder="Motivo da Visita" required>{{ isset($item->call) ? $item->call : old('call') }}</textarea>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-4 col-md-4">
                                                <div class="form-group">
                                                    <h5>Ação
                                                        <span class="required"></span>
                                                    </h5>
                                                    <div class="controls">
                                                        <textarea name="action" class="form-control" rows="5" required>{{ isset($item->action) ? $item->action : old('action') }}</textarea>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-4 col-md-4">
                                                <div class="form-group">
                                                    <h5>Observações
                                                        <span class="required"></span>
                                                    </h5>
                                                    <div class="controls">
                                                        <textarea name="obs" class="form-control" rows="5" required>{{ isset($item->obs) ? $item->obs : old('obs') }}</textarea>
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
