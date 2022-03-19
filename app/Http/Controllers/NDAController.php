<?php

namespace App\Http\Controllers;

use App\Models\NDA;
use App\Http\Controllers\Controller;
use App\Models\RequestProject;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class NDAController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function nda($id)
    {
        return view('user.auth.nda' , ['id' => $id]);
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
        $user =  Auth::guard('web')->user()->id;
        $projectid = $request->inves_user_id;
        $nda = new NDA();
        if ($request->hasfile('nda')) {
            $imageName = time() . '.' . $request->nda->extension();
            $nda->nda = $imageName;
            $request->nda->move(public_path('pdfs'), $imageName);
        }
        $nda->user_id = $user;
        $nda->inves_user_id = $projectid;
        $nda->save();
        if ($this->changeStatus($projectid)) {
            return redirect()->back()->with('message', trans('Account Created Successfully!'));
        }

    }
    public function changeStatus($projectid)
    {
        $update_id = $projectid;
        if (isset($update_id) && $update_id > 0) {
            $userr = RequestProject::find($update_id);
            $userr->nda = 1;
            $userr->save();
            return redirect()->back()->with('messsage','NDA Submitted Successfully!');
        }

    }
    /**
     * Display the specified resource.
     *
     * @param  \App\Models\NDA  $nDA
     * @return \Illuminate\Http\Response
     */
    public function show(NDA $nDA)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\NDA  $nDA
     * @return \Illuminate\Http\Response
     */
    public function edit(NDA $nDA)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\NDA  $nDA
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, NDA $nDA)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\NDA  $nDA
     * @return \Illuminate\Http\Response
     */
    public function destroy(NDA $nDA)
    {
        //
    }
}
