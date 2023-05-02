<?php

namespace App\Traits;

trait Common {

    public function fun1(){

        return "Trait response";
    }

    public function status($status = 0){

        $statusText = "InActive";
        if($status == 1){
            $statusText = "Active";
        }

        return $statusText;
    }
}
