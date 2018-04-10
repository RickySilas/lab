<?php

namespace App\Api\V1\Requests;

use Config;
use Dingo\Api\Http\FormRequest;

class EidRequest extends FormRequest
{
    public function rules()
    {
        $base = Config::get('boilerplate.sample_base'); 
        $eid = Config::get('boilerplate.eid'); 

        return array_merge($base, $eid);
    }

    public function authorize()
    {
    	return true;        
    }
}
