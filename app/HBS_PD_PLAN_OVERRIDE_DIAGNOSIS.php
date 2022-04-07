<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class HBS_PD_PLAN_OVERRIDE_DIAGNOSIS extends BaseModelDB2
{
    protected $table = 'pd_plan_override_diagnosis';
    protected $primaryKey = 'pdod_oid';
    
    public function RT_DIAGNOSIS()
    {
        return $this->belongsTo('App\HBS_RT_DIAGNOSIS', 'diag_oid_override', 'diag_oid');
    }
}
