@extends('default')

@section('content')

	<div class="d-flex justify-content-end mb-3"><a href="{{ route('books.create') }}" class="btn btn-info">Create</a></div>

	<table class="table table-bordered">
		<thead>
			<tr>
				<th>id</th>
				<th>title</th>
				<th>category_id</th>
				<th>year</th>
				<th>author_id</th>

				<th>Action</th>
			</tr>
		</thead>
		<tbody>
			@foreach($books as $book)

				<tr>
					<td>{{ $book->id }}</td>
					<td>{{ $book->title }}</td>
					<td>{{ $book->category_id }}</td>
					<td>{{ $book->year }}</td>
					<td>{{ $book->author_id }}</td>

					<td>
						<div class="d-flex gap-2">
                            <a href="{{ route('books.edit', [$book->id]) }}" class="btn btn-primary">Edit</a>
                            {!! Form::open(['method' => 'DELETE','route' => ['books.destroy', $book->id]]) !!}
                                {!! Form::submit('Delete', ['class' => 'btn btn-danger']) !!}
                            {!! Form::close() !!}
                        </div>
					</td>
				</tr>

			@endforeach
		</tbody>
	</table>

@stop
