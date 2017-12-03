<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Scholarship;
use App\Models\University;
use App\Models\Program;
use DB;

class ScholarshipsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //return Scholarship::all();
        $scholarship = Scholarship::all();
        return view('pages.scholarships')->with('scholarship', $scholarship);
    }

    public function byName()
    {
        $var = "Name";
        return view('shows.byScholarship')->with('var', $var);
    }

    public function byCollege()
    {
        $var = "College";
        $dropdown = University::pluck('uname', 'uname');
        $dropdown = $dropdown->unique();

        return view('shows.byScholarship',['dropdown' => $dropdown])->with('var', $var);
    }

    public function byProgram()
    {
        $var = "Program";
        $dropdown = Program::pluck('pname', 'pname');
        $dropdown = $dropdown->unique();

        return view('shows.byScholarship', ['dropdown' => $dropdown])->with('var', $var);
    }

    public function byLevel()
    {
        $var = "Level";
        $dropdown = Scholarship::pluck('level', 'level');
        $dropdown = $dropdown->unique();

        return view('shows.byScholarship', ['dropdown' => $dropdown])->with('var', $var);
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
        $college = $request->input('college');
        $program = $request->input('program');
        $level = $request->input('level');


        if(strlen($name) > 0){
            $results = DB::select('SELECT * FROM Scholarship WHERE sname LIKE CONCAT("%",:sname,"%")', ['sname' => $name]);}
        elseif(strlen($college) > 0)
            $results = DB::select('SELECT A.sid, A.sname, A.sex, A.age, A.year, A.semester, A.level, A.GWA, A.maxgrade, A.cid
            FROM (University U LEFT JOIN Scholarship_University SU ON U.uid = SU.uid) NATURAL JOIN Scholarship A
            WHERE U.uname = :uname
            UNION
            SELECT *
            FROM Scholarship
            WHERE sid NOT IN (SELECT sid FROM Scholarship_University)', ['uname' => $college]);
        elseif(strlen($program) > 0)
            $results = DB::select('SELECT * FROM
            (SELECT S.sid, S.sname, S.sex, S.age, S.year, S.semester, S.level, S.GWA, S.maxgrade, S.cid
            FROM (Program P LEFT JOIN Scholarship_Program SP ON P.pid = SP.pid) NATURAL JOIN Scholarship S  
            WHERE P.pname = :program or P.pid IS NULL
            UNION
            SELECT DISTINCT S.sid, S.sname, S.sex, S.age, S.year, S.semester, S.level, S.GWA, S.maxgrade, S.cid
            FROM (Program P LEFT JOIN Scholarship_Program SP ON P.field = SP.field) NATURAL JOIN Scholarship S
            WHERE P.pname = :program2 AND (P.field = SP.field)
            UNION 
            SELECT * 
            FROM Scholarship
            WHERE sid NOT IN (SELECT sid FROM Scholarship_Program)) PROGRAMSEARCH
            ORDER BY PROGRAMSEARCH.sid;', ['program' => $program, 'program2' => $program]);
        elseif(strlen($level) > 0)
            $results = DB::select('SELECT * FROM Scholarship WHERE level = :yrlevel or level IS NULL', ['yrlevel' => $level]);

        return view('shows.resultScholarship', ['results' => $results]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $scholarship = DB::select('SELECT * FROM scholarship A natural join scholarship_university B natural join university C where A.sid = :id', ['id' => $id]);
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
        $scholarship = Scholarship::find($id);
        $college_dropdown = University::orderBy('uname')->pluck('uname', 'uname');
        $course_dropdown = Program::orderBy('pname')->pluck('pname', 'pname');

        return view('shows.editScholarship', ['college_dropdown' => $college_dropdown, 'course_dropdown' => $course_dropdown, 'scholarship' => $scholarship]);
        
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
        // Validation 
        /*
        $this->validate($request, [
            'sex' => 'required',
            'age' => 'required',
            'year' => 'required',
            'semester' => 'required',
            'maxgrade' => 'required',
            'GWA' => 'required',
            'level' => 'required',
        ]);
        */
        // Variable Declarations
        $sex = $request->input('sex');
        $age = $request->input('age');
        $year = $request->input('year');
        $semester = $request->input('semester');
        $level = $request->input('level');
        $GWA = $request->input('GWA');
        $maxgrade = $request->input('maxgrade');

        if($maxgrade != NULL) $maxgrade /=100;
        if($GWA != NULL) $GWA /=100;
        
        
        // UPDATE SCHOLARSHIP
        $scholarship = Scholarship::find($id);
        $scholarship->sex = $sex;
        $scholarship->year = $year;
        $scholarship->semester = $semester;
        $scholarship->level = $level;
        $scholarship->GWA = $GWA;
        $scholarship->maxgrade = $maxgrade;
        $scholarship->save();
        
        return redirect('/scholarships')->with('success', 'Update Successful');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $scholarship = Scholarship::find($id);
        $scholarship->delete();
        return redirect('/scholarships')->with('success', 'Scholarship Deleted');
        //
    }
}
