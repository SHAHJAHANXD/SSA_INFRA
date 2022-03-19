<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('project_financials', function (Blueprint $table) {
            $table->id();
            $table->string('ProjectId')->nullable();
            $table->string('ProjectName')->nullable();
            $table->string('TotalProjectCost')->nullable();
            $table->string('CivilEngineeringAmount')->nullable();
            $table->string('TotalProjectAmount')->nullable();
            $table->string('ProjectCostSpentDate')->nullable();
            $table->string('ProjectCurrencySpentDate')->nullable();
            $table->string('CivilEngineeringCurrency')->nullable();
            $table->string('DesignAmount')->nullable();
            $table->string('ProjectManagementAmount')->nullable();
            $table->string('Evacuation')->nullable();
            $table->string('ContingencyAmount')->nullable();
            $table->string('FinancialComments')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('project_financials');
    }
};
