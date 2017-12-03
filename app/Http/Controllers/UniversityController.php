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
        $location = DB::select('SELECT * FROM location');
        return view('shows.addCollege', ['location'=> $location]);
    }

    public function insert(Request $request)
    {
        $this->validate($request, [
            'univ_name' => 'required'
        ]);

        if(Location::find($request->input('loc_id')) != NULL)
        {
            $university = new University;
            $university->uid = NULL;
            $university->uname = $request->input('univ_name');
            $university->location_id = $request->input('loc_id');
            $university->save();

            return redirect('/colleges')->with('success', 'Update Successful');
        }
        else {
            return redirect('/colleges')->with('success', 'UPDATE FAILED!!! Wrong location');
        }
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
            $results = DB::select('SELECT * from university where uname LIKE CONCAT("%",:univ_name,"%")', ['univ_name' => $name]);
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
        $university = University::find($id);
        $location = DB::select('SELECT * FROM location');
        return view('shows.editCollege', ['university' => $university, 'location'=> $location]);
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
        if(Location::find($request->input('loc_id')) != NULL)
        {
            $university = University::find($id);
            if(strlen($request->input('univ_name')) > 0)
                $university->uname = $request->input('univ_name');
            
            $university->location_id = $request->input('loc_id');
            $university->save();

            return redirect('/colleges')->with('success', 'Update Successful');
        }
        else {
            return redirect('/colleges')->with('success', 'UPDATE FAILED!!! Wrong location');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $univ = University::find($id);
        $univ->delete();
        return redirect('/colleges')->with('success', 'University Deleted');
    }
}
