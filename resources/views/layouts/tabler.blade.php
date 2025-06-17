
<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>

    <meta content="stock inventory system, inventory management, supplier records, customer management, invoice printing, business software, multi-user settings, unit tracking, trade management, {{ config('app.name') }} app, stock tracking, inventory software, business solutions, invoicing software" name="keywords">
    <meta content="Effortless Stock Management | {{ config('app.name') }} - Simplify Inventory & Trade" name="title">
    <meta content="{{ config('app.name') }} is an advanced stock inventory management system designed to streamline purchasing, sales, supplier and customer records, multi-user settings, and invoice printing. Simplify your business operations with smart tools for tracking, organizing, and scaling effortlessly." name="description">
    <meta name="author" content="Jyotirmoy Saha">
    <meta property="og:image" content="https://jsaha.in/img/jsaha.png" />


    <title>{{ config('app.name') }}</title>
    <link rel="icon" type="image/x-icon" href="{{ asset('favicon.ico') }}" />

    <!-- CSS files -->
    <link href="{{ asset('dist/css/tabler.min.css') }}" rel="stylesheet"/>
    <style>
        @import url('https://rsms.me/inter/inter.css');
        :root {
            --tblr-font-sans-serif: 'Inter Var', -apple-system, BlinkMacSystemFont, San Francisco, Segoe UI, Roboto, Helvetica Neue, sans-serif;
        }
        body {
            font-feature-settings: "cv03", "cv04", "cv11";
        }
    </style>

    <!-- Custom CSS for specific page.  -->
    @stack('page-styles')
    @livewireStyles
</head>
    <body>

        <div class="page">

            @include('layouts.body.header')

            @include('layouts.body.navbar')

            <div class="page-wrapper">
                <div>
                    @yield('content')
                </div>

                @include('layouts.body.footer')
            </div>
        </div>

        <!-- Tabler Core -->
        <script src="{{ asset('dist/js/tabler.min.js') }}" defer></script>
        <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
        {{--- Page Scripts ---}}
        @stack('page-scripts')

        @livewireScripts
    </body>
</html>
