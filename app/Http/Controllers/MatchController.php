<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class MatchController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('pages.match');
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

    public function result(Request $request)
    {
        $this->validate($request, [
            'sex' => 'required',
            'age' => 'required',
            'year' => 'required',
            'semester' => 'required',
            'maxgrade' => 'required',
            'GWA' => 'required',
            'level' => 'required',
            'field' => 'required',
            'course' => 'required',
            'university' => 'required'
        ]);

        return view('shows.result');
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // Validation
        $this->validate($request, [
            'sex' => 'required',
            'age' => 'required',
            'year' => 'required',
            'semester' => 'required',
            'maxgrade' => 'required',
            'GWA' => 'required',
            'level' => 'required',
            'field' => 'required',
            'course' => 'required',
            'university' => 'required'
        ]);

        // Variable Declarations
        $sex = $request->input('sex');
        $age = $request->input('age');
        $year = $request->input('year');
        $semester = $request->input('semester');
        $level = $request->input('maxgrade');
        $GWA = $request->input('GWA');
        $maxgrade = $request->input('level');
        $field = $request->input('field');
        $course = $request->input('course');
        $university = $request->input('university');

        // mySQL Query
        $results = DB::select('SELECT DISTINCT *
        FROM
        ((Scholarship_University B NATURAL JOIN University C)  RIGHT JOIN Scholarship A ON A.sid = B.sid)       
        JOIN 
        ((Scholarship_Program E NATURAL JOIN Program F)  RIGHT JOIN Scholarship D ON D.sid = E.sid)         

        ON (A.sid = D.sid) 
        WHERE (A.sex IS NULL or A.sex = :A) and (A.age IS NULL or A.age = :B) and (A.year IS NULL or A.year = :C) and 
        (A.semester IS NULL or A.semester = :D) and (A.level IS NULL or A.level = :E) and (A.GWA IS NULL or A.GWA >= :F) and (A.maxgrade IS NULL or A.maxgrade >= :G)
        and (C.uname IS NULL or C.uname = :H) and (F.pname IS NULL or F.pname = :I)

        UNION

        SELECT DISTINCT *
        FROM
        ((Scholarship_University B NATURAL JOIN University C)  RIGHT JOIN Scholarship A ON A.sid = B.sid)      
        JOIN 
        ((Scholarship_Program E NATURAL JOIN Program F)  RIGHT JOIN Scholarship D ON D.sid = E.sid)        

        ON (A.sid = D.sid) 
        WHERE (A.sex IS NULL or A.sex = :A2) and (A.age IS NULL or A.age = :B2) and (A.year IS NULL or A.year = :C2) and 
        (A.semester IS NULL or A.semester = :D2) and (A.level IS NULL or A.level = :E2) and (A.GWA IS NULL or A.GWA >= :F2) and (A.maxgrade IS NULL or A.maxgrade >= :G2)
        and (C.uname IS NULL or C.uname = :H2) and (F.field IS NULL or F.field = :J)', [
        'A' => $sex,
        'B' => $age,
        'C' => $year,
        'D' => $semester,
        'E' => $level,
        'F' => $GWA,
        'G' => $maxgrade,
        'H' => $university,
        'I' => $course,
        'J' => $field,

        'A2' => $sex,
        'B2' => $age,
        'C2' => $year,
        'D2' => $semester,
        'E2' => $level,
        'F2' => $GWA,
        'G2' => $maxgrade,
        'H2' => $university,
        ]);
        
        return view('shows.result', ['results' => $results]);
    }


    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
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
