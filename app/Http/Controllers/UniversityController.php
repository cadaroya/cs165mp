<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Input;
use App\Models\University;
use App\Models\Location;
use DB;

class UniversityController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
         return view('pages.colleges');
    }
    
    public function byName()
    {
        $var = "Name";
        //$result = DB::select('SELECT * FROM scholarship natural join scholarship_university natural join ');
        return view('shows.byCollege')->with('var', $var);
    }

    public function byRegion()
    {
        $var = "Region";
        $dropdown = Location::pluck('region', 'region');
        $dropdown = $dropdown->unique();

        return view('shows.byCollege', ['dropdown' => $dropdown])->with('var', $var);
    }

    public function byProvince()
    {
        $var = "Province";
        $dropdown = Location::pluck('province', 'province');
        $dropdown = $dropdown->unique();
        
        return view('shows.byCollege', ['dropdown' => $dropdown])->with('var', $var);
    }

    public function byCity()
    {
        $var = "City";
        $dropdown = Location::pluck('city', 'city');
        $dropdown = $dropdown->unique();

        return view('shows.byCollege', ['dropdown' => $dropdown])->with('var', $var);
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // Retrieve Button pressed
        $var = strtolower($request->input('var'));

        // Validate if the user filled the form or not
        $this->validate($request, [
            $var => 'required',
        ]);

        // Result
        $name = $request->input('name');
        $region = $request->input('region');
        $province = $request->input('province');
        $city = $request->input('city');

        if(strlen($name) > 0)
            $results = DB::select('SELECT * from university where uname = :univ_name', ['univ_name' => $name]);
        elseif(strlen($region) > 0)
            $results = DB::select('SELECT * from University natural join Location where region = :univ_region', ['univ_region' => $region]);
        elseif(strlen($province) > 0)
            $results = DB::select('SELECT * from University natural join Location where province = :univ_province', ['univ_province' => $province]);
        elseif(strlen($city) > 0)
            $results = DB::select('SELECT * from University natural join Location where city = :univ_city', ['univ_city' => $city]);

        return view('shows.resultCollege', ['results' => $results]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $university = DB::select('SELECT * FROM university natural join location where uid = :id', ['id' => $id]);
        return view('shows.collegeTemplate')->with('university',$university);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
