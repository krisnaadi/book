<?php

namespace App\Services;

use App\Models\Author;

class AuthorService
{
    public function get() : object 
    {
        return Author::get();
    }
}