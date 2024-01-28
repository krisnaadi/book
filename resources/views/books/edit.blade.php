@extends('default')

@section('content')

	@if($errors->any())
		<div class="alert alert-danger">
			@foreach ($errors->all() as $error)
				{{ $error }} <br>
			@endforeach
		</div>
	@endif

	{{ Form::model($book, array('route' => array('books.update', $book->id), 'method' => 'PUT')) }}

		<div class="mb-3">
			{{ Form::label('title', 'Title', ['class'=>'form-label']) }}
			{{ Form::text('title', null, array('class' => 'form-control')) }}
		</div>
		<div class="mb-3">
			{{ Form::label('category_id', 'Category_id', ['class'=>'form-label']) }}
			{{ Form::text('category_id', null, array('class' => 'form-control')) }}
		</div>
		<div class="mb-3">
			{{ Form::label('year', 'Year', ['class'=>'form-label']) }}
			{{ Form::text('year', null, array('class' => 'form-control')) }}
		</div>
		<div class="mb-3">
			{{ Form::label('author_id', 'Author_id', ['class'=>'form-label']) }}
			{{ Form::text('author_id', null, array('class' => 'form-control')) }}
		</div>

		{{ Form::submit('Edit', array('class' => 'btn btn-primary')) }}

	{{ Form::close() }}
@stop
