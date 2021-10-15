<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Users extends Model
{
    protected $fillable = [
        'number', 'firstName', 'lastName', 'mobile', 'email', 'address', 'password', 'date', 'age', 'religion', 'nationality', 'imageName'
    ];
}
