<?php

namespace App\Http\Controllers\Front;

use App\Models\Post;
use App\Models\Skill;
use App\Models\Client;
use App\Models\Service;
use App\Models\Education;
use App\Models\Portfolio;
use App\Models\Experience;
use App\Models\Testimonial;
use App\Models\HomePageItem;
use Illuminate\Http\Request;
use App\Models\PortfolioCategory;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;

class HomeController extends Controller
{
    public function index() 
    {
        // echo Hash::make(12345678);
        $page_data = HomePageItem::where('id',1)->first();
        
        $service_total = $page_data->service_total;

        $left_skills = Skill::where('side','Left')->get();
        $right_skills = Skill::where('side','Right')->get();
        $education = Education::orderBy('item_order','asc')->get();
        $experiences = Experience::orderBy('item_order','asc')->get();
        $testimonials = Testimonial::orderBy('id','asc')->get();
        $clients = Client::orderBy('id','asc')->get();
        $services = Service::orderBy('item_order','asc')->take($service_total)->get();
        $portfolios = Portfolio::orderBy('id','asc')->get();
        $portfolio_categories = PortfolioCategory::orderBy('id','asc')->get();
        $posts = Post::orderBy('id','desc')->take(3)->get();
        return view('front.home', compact('page_data','left_skills','right_skills','education','experiences','testimonials','clients','services','portfolios','portfolio_categories','posts'));
    }
}
