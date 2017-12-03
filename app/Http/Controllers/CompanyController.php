<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Company;
use App\Models\Location;

class CompanyController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        $company = Company::all();
        return view('pages.companies', ['company' => $company]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
       
        $dropdown = Location::pluck('city', 'city');
        $dropdown = $dropdown->unique();
        return view('shows.addCompany', ['dropdown'=>$dropdown] );
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // Validate if the user filled the form or not
        $this->validate($request, [
            'name' => 'required',
            'address' => 'required',
        ]);

        $name = $request->input('name');
        $address = $request->input('address');

        $company = new Company;
        $company->cid = NULL;
        $company->name = $name;
        $company->address = $address;
        $company->save();


        return redirect('/companies')->with('success', 'Create Successful');     
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $company = Company::find($id);
        return view('shows.companyTemplate')->with('company', $company);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $company = Company::find($id);
        $dropdown = Location::pluck('city', 'city');
        $dropdown = $dropdown->unique();
        return view('shows.editCompany', ['company'=> $company, 'dropdown'=>$dropdown] );
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
        // Validate if the user filled the form or not
        $this->validate($request, [
            'name' => 'required',
            'address' => 'required',
        ]);

        $name = $request->input('name');
        $address = $request->input('address');

        $company = Company::find($id);
        $company->name = $name;
        $company->address = $address;
        $company->save();


        return redirect('/companies')->with('success', 'Update Successful');
        
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
