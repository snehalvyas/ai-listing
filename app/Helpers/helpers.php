<?php

use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Auth;
use Laravel\Passport\ClientRepository;
use Laravel\Passport\Guards\TokenGuard;
use Laravel\Passport\PassportUserProvider;
use Laravel\Passport\TokenRepository;
use League\OAuth2\Server\ResourceServer;

/**
 * Write code on Method
 *
 * @return response()
 */
if (! function_exists('getUser')) {

    function getUser($bearerToken='')
    {
        if (!isset($bearerToken)) {
            $request = app('request');
            $bearerToken = $request->header('Authorization');
        }
//        $tokenguard = new TokenGuard(
//            App::make(ResourceServer::class),
//            Auth::createUserProvider('users'),
//            App::make(TokenRepository::class),
//            App::make(ClientRepository::class),
//            App::make('encrypter')
//        );
        $tokenguard = new TokenGuard(
            App::make(ResourceServer::class),
            new PassportUserProvider(Auth::createUserProvider('users'), 'users'),
            App::make(TokenRepository::class),
            App::make(ClientRepository::class),
            App::make('encrypter'),
            App::make(Request::class)

        );
        $request = Request::create('/');
//        $request->headers->set('Authorization', 'Bearer ' . $bearerToken);
        return $tokenguard->user($request);
    }
}
if (! function_exists('getLoginId')) {
function getLoginId(){
    if (auth()->check()) {
        return auth()->id();
    }
    else{
        // Access a specific header value
            return getUser()->id??'';
        }

}
}
if (! function_exists('authorizeUser')) {

    function authorizeUser($bearerToken='')
    {
        if (!isset($bearerToken)) {
            $request = app('request');
            $bearerToken = $request->header('Authorization');
        }
        $request = request();
        $request->headers->set('Authorization', 'Bearer ' . $bearerToken);
        Auth::setRequest($request);

        return Auth::user();
    }
}
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
            'fa fa-learn',
            'fa fa-search',
            'fab fa-research',
            'fas fa-calculator',
            'fas fa-camera-retro',
            'far fa-check-circle',
            'fas fa-desktop',
            'fab fa-github',
            'fab fa-instagram',
            'fa fa-video',
            'extension',
        ];
    }
}
