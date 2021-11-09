<?php

namespace App\Http\Controllers\OgProduction;

use App\Http\Controllers\Controller;
use App\Map;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class mapController extends Controller
{
    public function edit()
    {   
        $data['map'] = Map::first();

        return view('pages.map.edit',$data);
    }

    public function update(Request $request)
    {
        $all = $request->only(['iframe']);
        $msgs = [];
        $validator = Validator::make($all,[
            'iframe'=>'required|string',           
        ],$msgs);
        if(!$validator->fails()){         
            $map = Map::first();
            if($map){
                $map->update($all);
            } else {
                Map::create($all);
            }

            return redirect()->route('map.edit')->with(['success'=>'Cập nhật Map thành công.']);
        }
        return redirect()->back()->withErrors($validator)->withInput();
    }
}
