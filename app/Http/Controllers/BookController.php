<?php

namespace App\Http\Controllers;

use App\Http\Requests\BookRequest;
use App\Models\Book;
use App\Services\AuthorService;
use App\Services\BookService;
use App\Services\CategoryService;
use Illuminate\Http\Request;

class BookController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Contracts\View\View
     */
    public function index(Request $request, BookService $service)
    {
        $books = $service->get(sort: $request->sort ?? 'asc');
        return view('books.index', ['books' => $books, 'sort' => $request->sort ?? 'asc']);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Contracts\View\View
     */
    public function create(AuthorService $authorService, CategoryService $categoryService)
    {
        return view('books.create', [
            'authors' => $authorService->get()->pluck('name', 'id'), 
            'categories' => $categoryService->get()->pluck('name', 'id')
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  BookRequest  $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(BookRequest $request, BookService $service)
    {
        $service->save($request->validated());

        return to_route('books.index');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Contracts\View\View
     */
    public function edit($id, BookService $bookService, AuthorService $authorService, CategoryService $categoryService)
    {
        $book = $bookService->getById($id);

        return view('books.edit',[
            'book' => $book, 
            'authors' => $authorService->get()->pluck('name', 'id'), 
            'categories' => $categoryService->get()->pluck('name', 'id')
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  BookRequest  $request
     * @param  int  $id
     * @return \Illuminate\Http\RedirectResponse
     */
    public function update(BookRequest $request, $id, BookService $service)
    {
        $service->save($request->validated(), $id);

        return to_route('books.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\RedirectResponse
     */
    public function destroy($id, BookService $service)
    {
        $service->delete($id);

        return to_route('books.index');
    }
}
