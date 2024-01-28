<?php

namespace App\Services;

use App\Models\Book;

class BookService
{
    public function get(string $title = null, string $sort = 'asc', int $limit = 10) : array 
    {
        $books = Book::orderBy('title', $sort);

        if ($title != null) {
            $books = $books->where('title', 'like', '%' + $title + '%');
        }

        return $books->paginate($limit);
    }

    public function save(array $book) : array 
    {
        return Book::createOrUpdate($book);
    }

    public function getById(int $id) : array
    {
        return Book::findOrFail($id);
    }

    public function delete(int $id) 
    {
        Book::destroy($id);
    }
}