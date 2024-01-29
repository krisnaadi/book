<?php

namespace App\Services;

use App\Models\Category;

class CategoryService
{
    public function get() : object 
    {
        return Category::get();
    }
}