@extends('layouts.admin.master')
@section('title', 'Policy Management')
@section('stylesheets')
<link href="{{ asset('css/jquery-ui.min.css') }}" rel="stylesheet">
<link href="{{ asset('css/tagsinput.css?vision=') .$vision }}" media="all" rel="stylesheet" type="text/css"/>
@endsection

@section('content')
{{ Form::open(array('url' => "admin/pocy/{$data->id}", 'method' => 'post' ,'class'=>'form-horizontal')) }}
@method('PUT')
<div class="card">
    <h3 class="card-header text-danger">Edit #{{ $data->pocy_ref_no }}</h3>
    <div class="card-body">
        <div class="text-center tour-button">
            <a class="btn btnt btn-secondary" href="{{url('admin/pocy')}}">
                {{ __('message.back')}}
            </a>
            <button type="submit" class="btn btnt btn-danger center-block"> {{__('message.save')}}</button>
        </div>
        <div class="form-group ">
            {{ Form::label('_list_provider[]', 'Provider Not GOP', ['class' => 'col-form-label text-center']) }}
            {{ Form::select('_list_provider[]', $list_provider,  empty($data->providers) ? null : explode(",",$data->providers) , ['id'=>'list_provider','class' => 'select2 form-control' ,'multiple']) }}
        </div>
        <div class="form-group ">
            {{ Form::label('Emails', 'Emails', ['class' => 'col-form-label text-center']) }}
            {{ Form::text('email', $data->email, [ 'class' => 'form-control','placeholder' =>'Email',  'data-role' => 'tagsinput']) }}<br/>
        </div>
    </div>
    <div class="card-footer">
        
    </div>
</div>
{{ Form::close() }}
@endsection

@section('scripts')
<script type="text/javascript" src="{{ asset('js/jquery-ui.min.js') }}"></script>
<script src="{{ asset('js/tagsinput.js?vision=') .$vision }}"></script>
<script type="text/javascript">
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
    $( '.date' ).datepicker( {
        dateFormat: 'yy-mm-dd',
        minDate: new Date(),
    } );
</script>
@endsection
