<?php

namespace App\Services;

use App\Models\Book;

class BookService
{
    public function get(string $title = null, string $sort = 'asc', int $limit = 10) : object 
    {
        $books = Book::with('author', 'category')->orderBy('title', $sort);

        if ($title != null) {
            $books = $books->where('title', 'like', '%' + $title + '%');
        }

        return $books->paginate($limit);
    }

    public function save(array $book, int $id = 0) : object 
    {
        return Book::updateOrCreate(['id' => $id], $book);
    }

    public function getById(int $id) : object
    {
        return Book::findOrFail($id);
    }

    public function delete(int $id) 
    {
        Book::destroy($id);
    }
}