<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use App\Models\University;
use App\Models\Program;

class MatchController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        
        $college_dropdown = University::orderBy('uname')->pluck('uname', 'uname');
        $course_dropdown = Program::orderBy('pname')->pluck('pname', 'pname');
        return view('pages.match', ['college_dropdown' => $college_dropdown, 'course_dropdown' => $course_dropdown]);
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
         //   'field' => 'required',
            'course' => 'required',
            'university' => 'required'
        ]);

        // Variable Declarations
        $sex = $request->input('sex');
        $age = $request->input('age');
        $year = $request->input('year');
        $semester = $request->input('semester');
        $level = $request->input('level');
        $GWA = $request->input('GWA');
        $maxgrade = $request->input('maxgrade');
        //$field = $request->input('field');
        $course = $request->input('course');
        $university = $request->input('university');
        
        // mySQL Query
        $results = DB::select('SELECT DISTINCT *
        FROM
        ((Scholarship_University B NATURAL JOIN University C)  RIGHT JOIN Scholarship A ON A.sid = B.sid)       
        JOIN 
        ((Scholarship_Program E LEFT JOIN Program F ON E.pid = F.pid) RIGHT JOIN Scholarship D ON D.sid = E.sid)         

        ON (A.sid = D.sid) 
        WHERE (A.sex IS NULL or A.sex = :A) and (A.age IS NULL or A.age = :B) and (A.year IS NULL or A.year = :C) and 
        (A.semester IS NULL or A.semester = :D) and (A.level IS NULL or A.level LIKE CONCAT("%",:E,"%")) and (A.GWA IS NULL or A.GWA >= :F) and (A.maxgrade IS NULL or A.maxgrade >= :G)
        and (C.uname IS NULL or C.uname = :H) and (F.pname = :I or E.spid IS NULL or
        (E.field IN (SELECT field FROM program WHERE pname = :I2))
        )' ,
        [
        'A' => $sex,
        'B' => $age,
        'C' => $year,
        'D' => $semester,
        'E' => $level,
        'F' => $GWA,
        'G' => $maxgrade,
        'H' => $university,
        'I' => $course,
        'I2' => $course
        //'J' => $field,
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
        $scholarship = DB::select('SELECT A.sid, A.sname, A.sex, A.age, A.year, A.semester, A.level, A.GWA, A.maxgrade, A.cid, A.description, A.url, A.imgdir, A.stipend, A.type, C.uname FROM scholarship A left join (scholarship_university B natural join university C) ON A.sid = B.sid where A.sid = :id', ['id' => $id]);
        return view('shows.scholarshipTemplate')->with('scholarship',$scholarship);
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
