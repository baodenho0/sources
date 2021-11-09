<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\QuestionAnswer;
use App\Functions\General;

class QuestionAnswerController extends Controller
{
    private $QAndA;

    public function __construct(){
        $this->QAndA = new QuestionAnswer;
    }

    public function index(){
        return view("admin.questionanswer.index");
    }

    public function getEdit(Request $request){
        $data = $this->QAndA->getById($request->id);

        $result = [
            'status' => 1,
            'data' =>  $data,           
        ];

        return response()->json($result);
    }

    public function postEdit(Request $request)
    {
        
        $arr = [
            'question' => $request->question,
            'answer' => $request->answer
        ];

        $this->QAndA->updateById($request->id,$arr);

        $result = [
            'status' => 1,          
        ];

        return response()->json($result);
    }

    public function getAdd(){
        return view('admin.questionanswer.add_or_edit');
    }

    public function postAdd(Request $request){ //dd($request->all());
        

        $arr = [
            'question' => $request->question,
            'answer' => $request->answer
        ];

        $this->QAndA->createByArr($arr);

        return redirect()->route('questionanswer')->with('success','Created successfully');
    }

    public function datatable(){
        return $this->QAndA->datatable();
    }

    public function delete(Request $request){
        $this->QAndA->deleteById($request->id);

        $result = [
            'status'=>1
        ];

        return response()->json($result);
    }
}
