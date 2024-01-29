@extends('default')

@section('content')

	<div class="col-md-10 mt-5">
		<h3> Daftar Buku</h3>
	</div>
	<div class="d-flex justify-content-end mb-3"><a href="{{ route('books.create') }}" class="btn btn-info">Create</a></div>

	<table class="table table-bordered">
		<thead>
			<tr>
				<th>
					Judul 
					@if($sort == 'desc')
						<a href="?sort=asc"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path fill="currentColor" d="m20 12l-1.41-1.41L13 16.17V4h-2v12.17l-5.58-5.59L4 12l8 8z"/></svg></a>
					@else
						<a href="?sort=desc"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path fill="currentColor" d="m4 12l1.41 1.41L11 7.83V20h2V7.83l5.58 5.59L20 12l-8-8z"/></svg></a>
					@endif
				</th>
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

	{!! $books->withQueryString()->links() !!}

@stop
