@extends('default')

@section('content')

	<div class="col-md-10 mt-5">
		<h3> Daftar Buku</h3>
	</div>
	<div class="d-flex justify-content-end mb-3"><a href="{{ route('books.create') }}" class="btn btn-info">Create</a></div>

	<table class="table table-bordered">
		<thead>
			<tr>
				<th><a href="?sort=asc">Judul 
					@if($sort == 'desc')
						{{ '(asc)' }}
					@endif
				</a></th>
				<th>Kategori</th>
				<th>Tahun</th>
				<th>Pengarang</th>

				<th>Aksi</th>
			</tr>
		</thead>
		<tbody>
			@foreach($books as $book)

				<tr>
					<td>{{ $book->title }}</td>
					<td>{{ $book->category->name }}</td>
					<td>{{ $book->year }}</td>
					<td>{{ $book->author->name }}</td>

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

	{!! $books->links() !!}

@stop
