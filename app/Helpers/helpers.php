<?php

use Carbon\Carbon;

/**
 * Write code on Method
 *
 * @return response()
 */
if (! function_exists('convertYmdToMdy')) {
    function convertYmdToMdy($date)
    {
        return Carbon::createFromFormat('Y-m-d', $date)->format('m-d-Y');
    }
}

/**
 * Write code on Method
 *
 * @return response()
 */
if (! function_exists('convertMdyToYmd')) {
    function convertMdyToYmd($date)
    {
        return Carbon::createFromFormat('m-d-Y', $date)->format('Y-m-d');
    }
}
if (! function_exists('getIcons')) {
    function getIcons(){
        return [
            'fab fa-500px',
            'fab fa-accessible-icon',
            'far fa-address-book',
            'fas fa-ambulance',
            'fab fa-apple',
            'fab fa-apple',
            'fab fa-apple',
            'fas fa-apple-alt',
            'fab fa-apple-pay',
            'fab fa-aws',
            'fas fa-mobile-alt',
            'fas fa-money-bill',
            'fas fa-money-bill-alt',
            'far fa-money-bill-alt',
            'fas fa-dollar-sign',
            'fas fa-dove',
            'fa fa-check',
            'fa fa-check-circle',
            'fa fa-save',
            'fa fa-lock',
            'extension',
        ];
    }
}
