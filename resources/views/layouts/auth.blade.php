<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover"/>
    <meta content="stock inventory system, inventory management, supplier records, customer management, invoice printing, business software, multi-user settings, unit tracking, trade management, {{ config('app.name') }} app, stock tracking, inventory software, business solutions, invoicing software" name="keywords">
    <meta content="Effortless Stock Management | {{ config('app.name') }} - Simplify Inventory & Trade" name="title">
    <meta content="{{ config('app.name') }} is an advanced stock inventory management system designed to streamline purchasing, sales, supplier and customer records, multi-user settings, and invoice printing. Simplify your business operations with smart tools for tracking, organizing, and scaling effortlessly." name="description">
    <meta name="author" content="Jyotirmoy Saha">
    <meta property="og:image" content="https://jsaha.in/img/jsaha.png" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
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
</head>

<body class=" d-flex flex-column">
    <div class="page page-center">
        <div class="container container-tight py-4">
            <div class="text-center mb-4">
                <a href="{{ url('/') }}" class="navbar-brand navbar-brand-autodark">
                    <img src="{{ asset('static/inventory.png') }}" style="height: 4rem !important;" width="110" height="32" alt="Tabler" class="navbar-brand-image">
                    {{-- {{env("APP_NAME")}} --}}
                </a>
            </div>

            <!-- BEGIN: Content -->
            @yield('content')
            <!-- END: Content -->
        </div>
    </div>

    <!-- Libs JS -->
    <script src="{{ asset('dist/js/tabler.min.js') }}" defer></script>

    <!-- Custom JS for specific page.  -->
    @stack('page-scripts')
</body>
</html>
