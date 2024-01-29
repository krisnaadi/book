@extends('default')

@section('content')

	<div class="col-md-10 mt-5">
		<h3> Tambah Buku</h3>
	</div>

	@if($errors->any())
		<div class="alert alert-danger">
			@foreach ($errors->all() as $error)
				{{ $error }} <br>
			@endforeach
		</div>
	@endif

	{!! Form::open(['route' => 'books.store']) !!}

		<div class="mb-3">
			{{ Form::label('title', 'Judul', ['class'=>'form-label']) }}
			{{ Form::text('title', null, array('class' => 'form-control')) }}
		</div>
		<div class="mb-3">
			{{ Form::label('category_id', 'Kategori', ['class'=>'form-label']) }}
			{{ Form::select('category_id', $categories, null, ['placeholder' => 'Pilih kategori', 'class' => 'form-select']) }}
		</div>
		<div class="mb-3">
			{{ Form::label('year', 'Tahun', ['class'=>'form-label']) }}
			{{ Form::selectRange('year', date('Y'), 1950, date('Y'), ['class' => 'form-select']) }}
		</div>
		<div class="mb-3">
			{{ Form::label('author_id', 'Pengarang', ['class'=>'form-label']) }}
			{{ Form::select('author_id', $authors, null, ['placeholder' => 'Pilih pengarang', 'class' => 'form-select']) }}
		</div>


		{{ Form::submit('Create', array('class' => 'btn btn-primary')) }}

	{{ Form::close() }}


@stop