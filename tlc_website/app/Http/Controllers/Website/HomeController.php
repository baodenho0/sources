<?php

namespace App\Http\Controllers\Website;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Slide;
use App\SlideTitle;
use App\HomeService;
use App\OurTeam;
use App\Title;
use App\Banner;
use App\Step;
use App\StepDescription;


class HomeController extends Controller
{

	private $slide;
    private $slideTitle;
    private $homeService;
    private $title;

	public function __construct(){
        $this->slide = new Slide;
        $this->step = new Step;
        $this->step_description = new StepDescription;
        $this->slideTitle = new SlideTitle;
        $this->homeService = new HomeService;
        $this->ourTeam = new OurTeam;
        $this->title = new Title;
        $this->banner = new Banner;

	}

    public function index(){
    	$data = [
            'slide' => $this->slide->getAll(),
            'step' => $this->step->getAll(),
            'step_description' => $this->step_description->getAll(),
            'slideTitle' => $this->slideTitle->getAll(),
            'homeService' => $this->homeService->getByNumber(4),
            'ourTeam' => $this->ourTeam->getByNumber(3),
            'title' => $this->title->find(1) ?? null,
            'banner' => $this->banner->find(1) ?? null,
    	];
        return view("website.home.index",$data);
    }

    
}
