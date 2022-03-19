<?php

namespace App\Http\Controllers;

use App\Models\ProjectDebt;
use App\Models\ProjectOverview;
use Illuminate\Http\Request;

class ProjectDebtController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function adddebt()
    {
        $projects = ProjectOverview::get();
        $projectsid = ProjectOverview::get();
        return view('user.projects.debt', compact('projects', 'projectsid'));
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
     * Display the specified resource.
     *
     * @param  \App\Models\ProjectDebt  $projectDebt
     * @return \Illuminate\Http\Response
     */
    public function show(ProjectDebt $projectDebt)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\ProjectDebt  $projectDebt
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // $request->validate([
        //     'ProjectName' => 'required|max:250|unique:project_contracts',
        //     'BuildingPermitsAvailable' => 'required|max:250',
        //     'EnvironmentalPermitsAvailable' => 'required|max:250',
        //     'InterconnectionPermitsAvailable' => 'required|max:250',
        //     'GeneralRisks' => 'required|max:250',
        //     'TransitRisks' => 'required|max:250',
        //     'Construction_ErectionRisks' => 'required|max:250',
        //     'ThirdPartyLiability' => 'required|max:250',
        //     'ProfessionalIndemnity' => 'required|max:250',
        //     'InsuranceCosts' => 'required|max:250',
        //     'InsuranceCostsCurrency' => 'required|max:250',
        //     'CommentAboutInsurance' => 'required|max:250',
        //     'ProjectDeveloperEPC' => 'required|max:250',
        //     'EPC_Contract' => 'required|max:250',
        //     'ProcurementContractor' => 'required|max:250',
        //     'EngineeringContractor' => 'required|max:250',
        //     'ConstructionContractor' => 'required|max:250',
        // ]);
        $contracts = new ProjectDebt();
        $contracts->ProjectId = $request->ProjectId;
        $contracts->ProjectName = $request->ProjectName;
        $contracts->ShareOfProject = $request->ShareOfProject;
        $contracts->RepaymentSchedule = $request->RepaymentSchedule;
        $contracts->FixedRate = $request->FixedRate;
        $contracts->LenderName = $request->LenderName;
        $contracts->DebtType = $request->DebtType;
        $contracts->MinimumDSCR = $request->MinimumDSCR;
        $contracts->LoanTerm = $request->LoanTerm;
        $contracts->DebtDescription = $request->DebtDescription;
        $contracts->StructureComments = $request->StructureComments;
        $contracts->Currency = $request->Currency;
        $contracts->InterestRate = $request->InterestRate;
        $contracts->Amount = $request->Amount;
        $contracts->Comments = $request->Comments;
        $contracts->PrincipalCurrency = $request->PrincipalCurrency;
        $contracts->PrincipalAmount = $request->PrincipalAmount;
        $contracts->save();
        return redirect()->back()->with('message','Debt Added Successfully!');
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\ProjectDebt  $projectDebt
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, ProjectDebt $projectDebt)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\ProjectDebt  $projectDebt
     * @return \Illuminate\Http\Response
     */
    public function destroy(ProjectDebt $projectDebt)
    {
        //
    }
}
