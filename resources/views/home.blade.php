<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <title>{{env("APP_NAME")}}</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="" name="keywords">
        <meta content="" name="description">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@500;600;700&family=Rubik:wght@400;500&display=swap" rel="stylesheet"> 

        <!-- Icon Font Stylesheet -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="{{asset('assets/front-end/')}}/lib/animate/animate.min.css" rel="stylesheet">
        <link href="{{asset('assets/front-end/')}}/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
        <link href="{{asset('assets/front-end/')}}/lib/lightbox/css/lightbox.min.css" rel="stylesheet">


        <!-- Customized Bootstrap Stylesheet -->
        <link href="{{asset('assets/front-end/')}}/css/bootstrap.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="{{asset('assets/front-end/')}}/css/style.css" rel="stylesheet">
    </head>

    <body>

        <!-- Spinner Start -->
        <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>
        <!-- Spinner End -->


        <!-- Navbar & Hero Start -->
        <div class="container-fluid header position-relative overflow-hidden p-0">
            <nav class="navbar navbar-expand-lg fixed-top navbar-light px-4 px-lg-5 py-3 py-lg-0">
                <a href="{{ url('/') }}" class="navbar-brand p-0">
                    {{-- <h1 class="display-6 text-primary m-0">
                        &nbsp;{{env("APP_NAME")}}</h1> --}}
                    <img src="{{ asset('static/inventory.png') }}" alt="Logo" style="height: 4rem !important;" class="navbar-brand-image">
                    {{-- <strong>&nbsp;{{env("APP_NAME")}}</strong> --}}
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                    <span class="fa fa-bars"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <div class="navbar-nav ms-auto py-0">
                        <a href="{{ url('/') }}" class="nav-item nav-link active">Home</a>
                        {{-- <a href="about.html" class="nav-item nav-link">About</a>
                        <a href="service.html" class="nav-item nav-link">Services</a>
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Pages</a>
                            <div class="dropdown-menu m-0">
                                <a href="feature.html" class="dropdown-item">Features</a>
                                <a href="pricing.html" class="dropdown-item">Pricing</a>
                                <a href="blog.html" class="dropdown-item">Blog</a>
                                <a href="testimonial.html" class="dropdown-item">Testimonial</a>
                                <a href="404.html" class="dropdown-item">404 Page</a>
                            </div>
                        </div>
                        <a href="contact.html" class="nav-item nav-link">Contact Us</a> --}}
                    </div>
                    @if (Route::has('login'))
                        <div class="sm:fixed sm:top-0 sm:right-0 p-6 text-right">
                            @auth
                                {{-- <a href="{{ url('/dashboard') }}" class="font-semibold text-gray-600 hover:text-gray-900 dark:text-gray-400 dark:hover:text-white focus:outline focus:outline-2 focus:rounded-sm focus:outline-red-500">Dashboard</a> --}}
                                <a href="{{ url('/dashboard') }}" class="btn btn-light border border-primary rounded-pill text-primary py-2 px-4 me-4">Dashboard</a>
                            @else
                                <a href="{{ route('login') }}" class="btn btn-light border border-primary rounded-pill text-primary py-2 px-4 me-4">Log In</a>
                                @if (Route::has('register'))
                                    <a href="{{ route('register') }}" class="btn btn-primary rounded-pill text-white py-2 px-4">Sign Up</a>
                                @endif
                            @endauth
                        </div>
                    @endif
                    {{-- <a href="#" class="btn btn-light border border-primary rounded-pill text-primary py-2 px-4 me-4">Log In</a>
                    <a href="#" class="btn btn-primary rounded-pill text-white py-2 px-4">Sign Up</a> --}}
                </div>
            </nav>


            <!-- Hero Header Start -->
            <div class="hero-header overflow-hidden px-5">
                <div class="rotate-img">
                    <img src="{{asset('assets/front-end/')}}/img/sty-1.png" class="img-fluid w-100" alt="">
                    <div class="rotate-sty-2"></div>
                </div>
                <div class="row gy-5 align-items-center">
                    <div class="col-lg-6 wow fadeInLeft" data-wow-delay="0.1s">
                        <h1 class="display-4 text-dark mb-4 wow fadeInUp" data-wow-delay="0.3s">Simple Online Stock Management Software</h1>
                        <p class="fs-4 mb-4 wow fadeInUp" data-wow-delay="0.5s">Manage sales and purchase orders, create packages and shipments, and send delivery updates through a single order management system. Dedicate more time to growing your orders than managing them.</p>
                        <a href="#" class="btn btn-primary rounded-pill py-3 px-5 wow fadeInUp" data-wow-delay="0.7s">Get Started</a>
                    </div>
                    <div class="col-lg-6 wow fadeInRight" data-wow-delay="0.2s">
                        <img src="{{asset('assets/front-end/')}}/img/hero-img-1.png" class="img-fluid w-100 h-100" alt="">
                    </div>
                </div>
            </div>
            <!-- Hero Header End -->
        </div>
        <!-- Navbar & Hero End -->


        <!-- About Start -->
        <div class="container-fluid overflow-hidden py-5"  style="margin-top: 6rem;">
            <div class="container py-5">
                <div class="row g-5">
                    <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="RotateMoveLeft">
                            <img src="{{asset('assets/front-end/')}}/img/still-life-supply-chain-representation.jpg" class="img-fluid w-100" alt="">
                        </div>
                    </div>
                    <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.3s">
                        <h4 class="mb-1 text-primary">About Us</h4>
                        <h1 class="display-5 mb-4">Get Started Easily With a Personalized Product Tour</h1>
                        <p class="mb-4">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium, suscipit itaque quaerat dicta porro illum, autem, molestias ut animi ab aspernatur dolorum officia nam dolore. Voluptatibus aliquam earum labore atque.
                        </p>
                        <a href="#" class="btn btn-primary rounded-pill py-3 px-5">About More</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- About End -->


        <!-- Service Start -->
        <div class="container-fluid service py-5">
            <div class="container py-5">
                <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 900px;">
                    <h4 class="mb-1 text-primary">Our Service</h4>
                    <h1 class="display-5 mb-4">What We Can Do For You</h1>
                    <p class="mb-0">Dolor sit amet consectetur, adipisicing elit. Ipsam, beatae maxime. Vel animi eveniet doloremque reiciendis soluta iste provident non rerum illum perferendis earum est architecto dolores vitae quia vero quod incidunt culpa corporis, porro doloribus. Voluptates nemo doloremque cum.
                    </p>
                </div>
                <div class="row g-4 justify-content-center">
                    <div class="col-md-6 col-lg-4 col-xl-3 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="service-item text-center rounded p-4">
                            <div class="service-icon d-inline-block bg-light rounded p-4 mb-4"><i class="fas fa-mail-bulk fa-5x text-secondary"></i></div>
                            <div class="service-content">
                                <h4 class="mb-4">Centralize multi-channel sales</h4>
                                <p class="mb-4">Integrate with Amazon, eBay, Etsy, and Shopify and manage all of your online orders in a single platform. Set a reorder point and get updates on your stock level to avoid out-of-stock situations.
                                </p>
                                <a href="#" class="btn btn-light rounded-pill text-primary py-2 px-4">Read More</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3 wow fadeInUp" data-wow-delay="0.3s">
                        <div class="service-item text-center rounded p-4">
                            <div class="service-icon d-inline-block bg-light rounded p-4 mb-4"><i class="fas fa-thumbs-up fa-5x text-secondary"></i></div>
                            <div class="service-content">
                                <h4 class="mb-4">Simplify packing and shipping</h4>
                                <p class="mb-4">Create packages, print package slips and get real-time shipping rates for 30 different shipping services. You can do all of this and more from a single order management system.
                                </p>
                                <a href="#" class="btn btn-light rounded-pill text-primary py-2 px-4">Read More</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3 wow fadeInUp" data-wow-delay="0.5s">
                        <div class="service-item text-center rounded p-4">
                            <div class="service-icon d-inline-block bg-light rounded p-4 mb-4"><i class="fa fa-subway fa-5x text-secondary"></i></div>
                            <div class="service-content">
                                <h4 class="mb-4">Track shipments</h4>
                                <p class="mb-4">Monitor the movement of packages after shipment and keep your customers updated on their locations. Create more satisfied customers with this order management system.
                                </p>
                                <a href="#" class="btn btn-light rounded-pill text-primary py-2 px-4">Read More</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3 wow fadeInUp" data-wow-delay="0.7s">
                        <div class="service-item text-center rounded p-4">
                            <div class="service-icon d-inline-block bg-light rounded p-4 mb-4"><i class="fas fa-sitemap fa-5x text-secondary"></i></div>
                            <div class="service-content">
                                <h4 class="mb-4">Collect payments online</h4>
                                <p class="mb-4">Set up and integrate your payment account to start receiving online payments right away. Switch to an easy, secure, and convenient mode of accepting payments from your customers.
                                </p>
                                <a href="#" class="btn btn-light rounded-pill text-primary py-2 px-4">Read More</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="service-item text-center rounded p-4">
                            <div class="service-icon d-inline-block bg-light rounded p-4 mb-4"><i class="fas fa-mail-bulk fa-5x text-secondary"></i></div>
                            <div class="service-content">
                                <h4 class="mb-4">Generate insightful reports</h4>
                                <p class="mb-4">Identify your most profitable item, or monitor purchasing and sales order trends to make informed decisions and stay ahead of your competitors.
                                </p>
                                <a href="#" class="btn btn-light rounded-pill text-primary py-2 px-4">Read More</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3 wow fadeInUp" data-wow-delay="0.3s">
                        <div class="service-item text-center rounded p-4">
                            <div class="service-icon d-inline-block bg-light rounded p-4 mb-4"><i class="fas fa-thumbs-up fa-5x text-secondary"></i></div>
                            <div class="service-content">
                                <h4 class="mb-4">Acquistion Emails </h4>
                                <p class="mb-4">Lorem ipsum dolor sit amet consectetur adipisicing elit.consectetur adipisicing elit
                                </p>
                                <a href="#" class="btn btn-light rounded-pill text-primary py-2 px-4">Read More</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3 wow fadeInUp" data-wow-delay="0.5s">
                        <div class="service-item text-center rounded p-4">
                            <div class="service-icon d-inline-block bg-light rounded p-4 mb-4"><i class="fa fa-subway fa-5x text-secondary"></i></div>
                            <div class="service-content">
                                <h4 class="mb-4">Manage orders efficiently</h4>
                                <p class="mb-4">With drop shipment and back ordering in Zoho Inventory, create purchase order direclty from a sales order or have your manufacturer ship the goods directly to the customer so the order is not delayed.
                                </p>
                                <a href="#" class="btn btn-light rounded-pill text-primary py-2 px-4">Read More</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3 wow fadeInUp" data-wow-delay="0.7s">
                        <div class="service-item text-center rounded p-4">
                            <div class="service-icon d-inline-block bg-light rounded p-4 mb-4"><i class="fas fa-sitemap fa-5x text-secondary"></i></div>
                            <div class="service-content">
                                <h4 class="mb-4">Promotional Emails</h4>
                                <p class="mb-4">Lorem ipsum dolor sit amet consectetur adipisicing elit.consectetur adipisicing elit
                                </p>
                                <a href="#" class="btn btn-light rounded-pill text-primary py-2 px-4">Read More</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Service End -->


        <!-- Feature Start -->
        <div class="container-fluid feature overflow-hidden py-5">
            <div class="container py-5">
                <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 900px;">
                    <h4 class="text-primary">Our Feature</h4>
                    <h1 class="display-5 mb-4">Important Features For Email Marketing</h1>
                    <p class="mb-0">Dolor sit amet consectetur, adipisicing elit. Ipsam, beatae maxime. Vel animi eveniet doloremque reiciendis soluta iste provident non rerum illum perferendis earum est architecto dolores vitae quia vero quod incidunt culpa corporis, porro doloribus. Voluptates nemo doloremque cum.
                    </p>
                </div>
                <div class="row g-4 justify-content-center text-center mb-5">
                    <div class="col-md-6 col-lg-4 col-xl-3 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="text-center p-4">
                            <div class="d-inline-block rounded bg-light p-4 mb-4"><i class="fas fa-envelope fa-5x text-secondary"></i></div>
                            <div class="feature-content">
                                <a href="#" class="h4">Email Marketing <i class="fa fa-long-arrow-alt-right"></i></a>
                                <p class="mt-4 mb-0">Lorem ipsum dolor sit amet consectetur adipisicing elit.consectetur adipisicing elit
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3 wow fadeInUp" data-wow-delay="0.3s">
                        <div class="text-center p-4">
                            <div class="d-inline-block rounded bg-light p-4 mb-4"><i class="fas fa-mail-bulk fa-5x text-secondary"></i></div>
                            <div class="feature-content">
                                <a href="#" class="h4">Email Builder <i class="fa fa-long-arrow-alt-right"></i></a>
                                <p class="mt-4 mb-0">Lorem ipsum dolor sit amet consectetur adipisicing elit.consectetur adipisicing elit
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3 wow fadeInUp" data-wow-delay="0.5s">
                        <div class="text-center rounded p-4">
                            <div class="d-inline-block rounded bg-light p-4 mb-4"><i class="fas fa-sitemap fa-5x text-secondary"></i></div>
                            <div class="feature-content">
                                <a href="#" class="h4">Customer Builder <i class="fa fa-long-arrow-alt-right"></i></a>
                                <p class="mt-4 mb-0">Lorem ipsum dolor sit amet consectetur adipisicing elit.consectetur adipisicing elit
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3 wow fadeInUp" data-wow-delay="0.7s">
                        <div class="text-center rounded p-4">
                            <div class="d-inline-block rounded bg-light p-4 mb-4"><i class="fas fa-tasks fa-5x text-secondary"></i></div>
                            <div class="feature-content">
                                <a href="#" class="h4">Campaign Manager <i class="fa fa-long-arrow-alt-right"></i></a>
                                <p class="mt-4 mb-0">Lorem ipsum dolor sit amet consectetur adipisicing elit.consectetur adipisicing elit
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="my-3">
                            <a href="#" class="btn btn-primary d-inline rounded-pill px-5 py-3">More Features</a>
                        </div>
                    </div>
                </div>
                <div class="row g-5 pt-5" style="margin-top: 6rem;">
                    <div class="col-lg-6 wow fadeInLeft" data-wow-delay="0.1s">
                        <div class="feature-img RotateMoveLeft h-100" style="object-fit: cover;">
                            <img src="{{asset('assets/front-end/')}}/img/features-1.png" class="img-fluid w-100 h-100" alt="">
                        </div>
                    </div>
                    <div class="col-lg-6 wow fadeInRight" data-wow-delay="0.1s">
                        <h4 class="text-primary">Fearutes</h4>
                        <h1 class="display-5 mb-4">Push Your Visitors Into Happy Customers</h1>
                        <p class="mb-4">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium, suscipit itaque quaerat dicta porro illum, autem, molestias ut animi ab aspernatur dolorum officia nam dolore. Voluptatibus aliquam earum labore atque.
                        </p>
                        <div class="row g-4">
                            <div class="col-6">
                                <div class="d-flex">
                                    <i class="fas fa-newspaper fa-4x text-secondary"></i>
                                    <div class="d-flex flex-column ms-3">
                                        <h2 class="mb-0 fw-bold">285</h2>
                                        <small class="text-dark">Created Projects</small>
                                    </div>
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="d-flex">
                                    <i class="fas fa-users fa-4x text-secondary"></i>
                                    <div class="d-flex flex-column ms-3">
                                        <h2 class="mb-0 fw-bold">6560</h2>
                                        <small class="text-dark">Happy Clients</small>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="my-4">
                            <a href="#" class="btn btn-primary rounded-pill py-3 px-5">Read More</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Feature End -->


        <!-- FAQ Start -->
        <div class="container-fluid FAQ bg-light overflow-hidden py-5">
            <div class="container py-5">
                <div class="row g-5 align-items-center">
                    <div class="col-lg-6 wow fadeInLeft" data-wow-delay="0.1s">
                       <div class="accordion" id="accordionExample">
                            <div class="accordion-item border-0 mb-4">
                                <h2 class="accordion-header" id="headingOne">
                                    <button class="accordion-button rounded-top" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseTOne">
                                        Why did you choose Our Email Services?
                                    </button>
                                </h2>
                                <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                                    <div class="accordion-body my-2">
                                        <h5>Dolor sit amet consectetur adipisicing elit.</h5>
                                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ad nemo impedit, sapiente quis illo quia nulla atque maxime fuga minima ipsa quae cum consequatur, sit, delectus exercitationem odit officiis maiores! Neque, quidem corrupti modi architecto eos saepe incidunt dignissimos rerum.</p>
                                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Dicta distinctio hic fuga odio excepturi ducimus sequi at. Doloribus, non aspernatur.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-item border-0 mb-4">
                                <h2 class="accordion-header" id="headingTwo">
                                    <button class="accordion-button collapsed rounded-top" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                        Are there any hidden charges? 
                                    </button>
                                </h2>
                                <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
                                    <div class="accordion-body my-2">
                                        <h5>Dolor sit amet consectetur adipisicing elit.</h5>
                                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ad nemo impedit, sapiente quis illo quia nulla atque maxime fuga minima ipsa quae cum consequatur, sit, delectus exercitationem odit officiis maiores! Neque, quidem corrupti modi architecto eos saepe incidunt dignissimos rerum.</p>
                                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Dicta distinctio hic fuga odio excepturi ducimus sequi at. Doloribus, non aspernatur.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-item border-0">
                                <h2 class="accordion-header" id="headingThree">
                                    <button class="accordion-button collapsed rounded-top" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                        What are the key challenges of email marketing?
                                    </button>
                                </h2>
                                <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                                    <div class="accordion-body my-2">
                                        <h5>Dolor sit amet consectetur adipisicing elit.</h5>
                                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ad nemo impedit, sapiente quis illo quia nulla atque maxime fuga minima ipsa quae cum consequatur, sit, delectus exercitationem odit officiis maiores! Neque, quidem corrupti modi architecto eos saepe incidunt dignissimos rerum.</p>
                                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Dicta distinctio hic fuga odio excepturi ducimus sequi at. Doloribus, non aspernatur.</p>
                                    </div>
                                </div>
                            </div>
                       </div>
                    </div>
                    <div class="col-lg-6 wow fadeInRight" data-wow-delay="0.3s">
                        <div class="FAQ-img RotateMoveRight rounded">
                            <img src="{{asset('assets/front-end/')}}/img/about-1.png" class="img-fluid w-100" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- FAQ End -->


        <!-- Pricing Start -->
        <div class="container-fluid price py-5">
            <div class="container py-5">
                <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 900px;">
                    <h4 class="text-primary">Pricing Plan</h4>
                    <h1 class="display-5 mb-4">Not Sure Which Plan Is For You?</h1>
                    <p class="mb-0">Dolor sit amet consectetur, adipisicing elit. Ipsam, beatae maxime. Vel animi eveniet doloremque reiciendis soluta iste provident non rerum illum perferendis earum est architecto dolores vitae quia vero quod incidunt culpa corporis, porro doloribus. Voluptates nemo doloremque cum.
                    </p>
                </div>
                <div class="row g-5 justify-content-center">
                    <div class="col-md-6 col-lg-6 col-xl-4 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="price-item bg-light rounded text-center">
                            <div class="text-center text-dark border-bottom d-flex flex-column justify-content-center p-4" style="width: 100%; height: 160px;">
                                <p class="fs-2 fw-bold text-uppercase mb-0">BASIC</p>
                                <div class="d-flex justify-content-center">
                                    <strong class="align-self-start">$</strong>
                                    <p class="mb-0"><span class="display-5">00</span>/mo</p>
                                </div>                        
                            </div>
                            <div class="text-start p-5">
                                <p><i class="fas fa-check text-success me-1"></i> Limited Acess Library</p>
                                <p><i class="fas fa-check text-success me-1"></i> Customer Support</p>
                                <p><i class="fas fa-check text-success me-1"></i> Pre-built Email Templates</p>
                                <p><i class="fas fa-check text-success me-1"></i> Reporting & Analytics</p>
                                <p><i class="fas fa-check text-success me-1"></i> Forms & Landing Pages</p>
                                <p><i class="fas fa-check text-success me-1"></i> A/B Testing</p>
                                <p><i class="fas fa-check text-success me-1"></i> Email Scheduling</p>
                                <p><i class="fas fa-check text-success me-1"></i> Automated Customer Journeys</p>
                                <p><i class="fas fa-times text-danger me-1"></i> Creative Assistant</p>
                                <p class="mb-4"><i class="fas fa-times text-danger me-1"></i> Role-based Access</p>
                                <button class="btn btn-light rounded-pill py-2 px-5" type="button">Get Started</button>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-6 col-xl-4 wow fadeInUp" data-wow-delay="0.3s">
                        <div class="price-item bg-light rounded text-center">
                            <div class="pice-item-offer">Popular</div>
                            <div class="text-center text-primary border-bottom d-flex flex-column justify-content-center p-4" style="width: 100%; height: 160px;">
                                <p class="fs-2 fw-bold text-uppercase mb-0">Standard</p>
                                <div class="d-flex justify-content-center">
                                    <strong class="align-self-start">$</strong>
                                    <p class="mb-0"><span class="display-5">23</span>/mo</p>
                                </div>                        
                            </div>
                            <div class="text-start p-5">
                                <p><i class="fas fa-check text-success me-1"></i> Limited Acess Library</p>
                                <p><i class="fas fa-check text-success me-1"></i> Customer Support</p>
                                <p><i class="fas fa-check text-success me-1"></i> Pre-built Email Templates</p>
                                <p><i class="fas fa-check text-success me-1"></i> Reporting & Analytics</p>
                                <p><i class="fas fa-check text-success me-1"></i> Forms & Landing Pages</p>
                                <p><i class="fas fa-check text-success me-1"></i> A/B Testing</p>
                                <p><i class="fas fa-check text-success me-1"></i> Email Scheduling</p>
                                <p><i class="fas fa-check text-success me-1"></i> Automated Customer Journeys</p>
                                <p><i class="fas fa-times text-danger me-1"></i> Creative Assistant</p>
                                <p class="mb-4"><i class="fas fa-times text-danger me-1"></i> Role-based Access</p>
                                <button class="btn btn-light rounded-pill py-2 px-5" type="button">Get Started</button>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-6 col-xl-4 wow fadeInUp" data-wow-delay="0.5s">
                        <div class="price-item bg-light rounded text-center">
                            <div class="text-center text-secondary border-bottom d-flex flex-column justify-content-center p-4" style="width: 100%; height: 160px;">
                                <p class="fs-2 fw-bold text-uppercase mb-0">Premium</p>
                                <div class="d-flex justify-content-center">
                                    <strong class="align-self-start">$</strong>
                                    <p class="mb-0"><span class="display-5">49</span>/mo</p>
                                </div>                        
                            </div>
                            <div class="text-start p-5">
                                <p><i class="fas fa-check text-success me-1"></i> Limited Acess Library</p>
                                <p><i class="fas fa-check text-success me-1"></i> Customer Support</p>
                                <p><i class="fas fa-check text-success me-1"></i> Pre-built Email Templates</p>
                                <p><i class="fas fa-check text-success me-1"></i> Reporting & Analytics</p>
                                <p><i class="fas fa-check text-success me-1"></i> Forms & Landing Pages</p>
                                <p><i class="fas fa-check text-success me-1"></i> A/B Testing</p>
                                <p><i class="fas fa-check text-success me-1"></i> Email Scheduling</p>
                                <p><i class="fas fa-check text-success me-1"></i> Automated Customer Journeys</p>
                                <p><i class="fas fa-times text-danger me-1"></i> Creative Assistant</p>
                                <p class="mb-4"><i class="fas fa-times text-danger me-1"></i> Role-based Access</p>
                                <button class="btn btn-light rounded-pill py-2 px-5" type="button">Get Started</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Pricing End -->


        <!-- Blog Start -->
        <div class="container-fluid blog py-5">
            <div class="container py-5">
                <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 900px;">
                    <h4 class="text-primary">Our Blog</h4>
                    <h1 class="display-5 mb-4">Join Us For New Blog</h1>
                    <p class="mb-0">Dolor sit amet consectetur, adipisicing elit. Ipsam, beatae maxime. Vel animi eveniet doloremque reiciendis soluta iste provident non rerum illum perferendis earum est architecto dolores vitae quia vero quod incidunt culpa corporis, porro doloribus. Voluptates nemo doloremque cum.
                    </p>
                </div>
                <div class="row g-4 justify-content-center">
                    <div class="col-md-6 col-lg-4 col-xl-3 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="blog-item">
                            <div class="blog-img">
                                <img src="{{asset('assets/front-end/')}}/img/blog-1.png" class="img-fluid w-100" alt="">
                                <div class="blog-info">
                                    <span><i class="fa fa-clock"></i> Dec 01.2024</span>
                                    <div class="d-flex">
                                        <span class="me-3"> 3 <i class="fa fa-heart"></i></span>
                                        <a href="#" class="text-white">0 <i class="fa fa-comment"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="blog-content text-dark border p-4 ">
                                <h5 class="mb-4">Dolor, sit amet consectetur adipisicing</h5>
                                <p class="mb-4">Lorem ipsum dolor sit amet consectur adip sed eiusmod amet consectur adip.</p>
                                <a class="btn btn-light rounded-pill py-2 px-4" href="#">Read More</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3 wow fadeInUp" data-wow-delay="0.3s">
                        <div class="blog-item">
                            <div class="blog-img">
                                <img src="{{asset('assets/front-end/')}}/img/blog-2.png" class="img-fluid w-100" alt="">
                                <div class="blog-info">
                                    <span><i class="fa fa-clock"></i> Dec 01.2024</span>
                                    <div class="d-flex">
                                        <span class="me-3"> 3 <i class="fa fa-heart"></i></span>
                                        <a href="#" class="text-white">0 <i class="fa fa-comment"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="blog-content text-dark border p-4 ">
                                <h5 class="mb-4">Dolor, sit amet consectetur adipisicing</h5>
                                <p class="mb-4">Lorem ipsum dolor sit amet consectur adip sed eiusmod amet consectur adip.</p>
                                <a class="btn btn-light rounded-pill py-2 px-4" href="#">Read More</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3 wow fadeInUp" data-wow-delay="0.5s">
                        <div class="blog-item">
                            <div class="blog-img">
                                <img src="{{asset('assets/front-end/')}}/img/blog-3.png" class="img-fluid w-100" alt="">
                                <div class="blog-info">
                                    <span><i class="fa fa-clock"></i> Dec 01.2024</span>
                                    <div class="d-flex">
                                        <span class="me-3"> 3 <i class="fa fa-heart"></i></span>
                                        <a href="#" class="text-white">0 <i class="fa fa-comment"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="blog-content text-dark border p-4 ">
                                <h5 class="mb-4">Dolor, sit amet consectetur adipisicing</h5>
                                <p class="mb-4">Lorem ipsum dolor sit amet consectur adip sed eiusmod amet consectur adip.</p>
                                <a class="btn btn-light rounded-pill py-2 px-4" href="#">Read More</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3 wow fadeInUp" data-wow-delay="0.7s">
                        <div class="blog-item">
                            <div class="blog-img">
                                <img src="{{asset('assets/front-end/')}}/img/blog-4.png" class="img-fluid w-100" alt="">
                                <div class="blog-info">
                                    <span><i class="fa fa-clock"></i> Dec 01.2024</span>
                                    <div class="d-flex">
                                        <span class="me-3"> 3 <i class="fa fa-heart"></i></span>
                                        <a href="#" class="text-white">0 <i class="fa fa-comment"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="blog-content text-dark border p-4 ">
                                <h5 class="mb-4">Dolor, sit amet consectetur adipisicing</h5>
                                <p class="mb-4">Lorem ipsum dolor sit amet consectur adip sed eiusmod amet consectur adip.</p>
                                <a class="btn btn-light rounded-pill py-2 px-4" href="#">Read More</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Blog End -->


        <!-- Testimonial Start -->
        <div class="container-fluid testimonial py-5">
            <div class="container py-5">
                <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 900px;">
                    <h4 class="text-primary">Testimonial</h4>
                    <h1 class="display-5 mb-4">What Our Client Say About Us</h1>
                    <p class="mb-0">Dolor sit amet consectetur, adipisicing elit. Ipsam, beatae maxime. Vel animi eveniet doloremque reiciendis soluta iste provident non rerum illum perferendis earum est architecto dolores vitae quia vero quod incidunt culpa corporis, porro doloribus. Voluptates nemo doloremque cum.
                    </p>
                </div>
                <div class="testimonial-carousel owl-carousel wow zoomInDown" data-wow-delay="0.2s">
                    <div class="testimonial-item" data-dot="<img class='img-fluid' src='{{asset('assets/front-end/')}}/img/testimonial-img-1.jpg' alt=''>">
                        <div class="testimonial-inner text-center p-5">
                            <div class="d-flex align-items-center justify-content-center mb-4">
                                <div class="testimonial-inner-img border border-primary border-3 me-4" style="width: 100px; height: 100px; border-radius: 50%;">
                                    <img src="{{asset('assets/front-end/')}}/img/testimonial-img-1.jpg" class="img-fluid rounded-circle" alt="">
                                </div>
                                <div>
                                    <h5 class="mb-2">John Abraham</h5>
                                    <p class="mb-0">New York, USA</p>
                                </div>
                            </div>
                            <p class="fs-7">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Asperiores nemo facilis tempora esse explicabo sed! Dignissimos quia ullam pariatur blanditiis sed voluptatum. Totam aut quidem laudantium tempora. Minima, saepe earum!
                            </p>
                            <div class="text-center">
                                <div class="d-flex justify-content-center">
                                    <i class="fas fa-star text-primary"></i>
                                    <i class="fas fa-star text-primary"></i>
                                    <i class="fas fa-star text-primary"></i>
                                    <i class="fas fa-star text-primary"></i>
                                    <i class="fas fa-star text-primary"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="testimonial-item" data-dot="<img class='img-fluid' src='{{asset('assets/front-end/')}}/img/testimonial-img-2.jpg' alt=''>">
                        <div class="testimonial-inner text-center p-5">
                            <div class="d-flex align-items-center justify-content-center mb-4">
                                <div class="testimonial-inner-img border border-primary border-3 me-4" style="width: 100px; height: 100px; border-radius: 50%;">
                                    <img src="{{asset('assets/front-end/')}}/img/testimonial-img-2.jpg" class="img-fluid rounded-circle" alt="">
                                </div>
                                <div>
                                    <h5 class="mb-2">John Abraham</h5>
                                    <p class="mb-0">New York, USA</p>
                                </div>
                            </div>
                            <p class="fs-7">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Asperiores nemo facilis tempora esse explicabo sed! Dignissimos quia ullam pariatur blanditiis sed voluptatum. Totam aut quidem laudantium tempora. Minima, saepe earum!
                            </p>
                            <div class="text-center">
                                <div class="d-flex justify-content-center">
                                    <i class="fas fa-star text-primary"></i>
                                    <i class="fas fa-star text-primary"></i>
                                    <i class="fas fa-star text-primary"></i>
                                    <i class="fas fa-star text-primary"></i>
                                    <i class="fas fa-star text-primary"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="testimonial-item" data-dot="<img class='img-fluid' src='{{asset('assets/front-end/')}}/img/testimonial-img-3.jpg' alt=''>">
                        <div class="testimonial-inner text-center p-5">
                            <div class="d-flex align-items-center justify-content-center mb-4">
                                <div class="testimonial-inner-img border border-primary border-3 me-4" style="width: 100px; height: 100px; border-radius: 50%;">
                                    <img src="{{asset('assets/front-end/')}}/img/testimonial-img-3.jpg" class="img-fluid rounded-circle" alt="">
                                </div>
                                <div>
                                    <h5 class="mb-2">John Abraham</h5>
                                    <p class="mb-0">New York, USA</p>
                                </div>
                            </div>
                            <p class="fs-7">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Asperiores nemo facilis tempora esse explicabo sed! Dignissimos quia ullam pariatur blanditiis sed voluptatum. Totam aut quidem laudantium tempora. Minima, saepe earum!
                            </p>
                            <div class="text-center">
                                <div class="d-flex justify-content-center">
                                    <i class="fas fa-star text-primary"></i>
                                    <i class="fas fa-star text-primary"></i>
                                    <i class="fas fa-star text-primary"></i>
                                    <i class="fas fa-star text-primary"></i>
                                    <i class="fas fa-star text-primary"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Testimonial End -->


        <!-- Footer Start -->
        <div class="container-fluid footer py-5 wow fadeIn" data-wow-delay="0.2s">
            <div class="container py-5">
                <div class="row g-5">
                    <div class="col-md-6 col-lg-6 col-xl-3">
                        <div class="footer-item d-flex flex-column">
                            <h4 class="text-dark mb-4">Company</h4>
                            <a href=""> Why Mailler?</a>
                            <a href=""> Our Features</a>
                            <a href=""> Our Portfolio</a>
                            <a href=""> About Us</a>
                            <a href=""> Our Blog & News</a>
                            <a href=""> Get In Touch</a>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-6 col-xl-3">
                        <div class="footer-item d-flex flex-column">
                            <h4 class="mb-4 text-dark">Quick Links</h4>
                            <a href=""> About Us</a>
                            <a href=""> Contact Us</a>
                            <a href=""> Privacy Policy</a>
                            <a href=""> Terms & Conditions</a>
                            <a href=""> Our Blog & News</a>
                            <a href=""> Our Team</a>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-6 col-xl-3">
                        <div class="footer-item d-flex flex-column">
                            <h4 class="mb-4 text-dark">Services</h4>
                            <a href=""> All Services</a>
                            <a href=""> Promotional Emails</a>
                            <a href=""> Product Updates</a>
                            <a href=""> Email Marketing</a>
                            <a href=""> Acquistion Emails</a>
                            <a href=""> Retention Emails</a>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-6 col-xl-3">
                        <div class="footer-item d-flex flex-column">
                            <h4 class="mb-4 text-dark">Contact Info</h4>
                            <a href=""><i class="fa fa-map-marker-alt me-2"></i> 123 Street, New York, USA</a>
                            <a href=""><i class="fas fa-envelope me-2"></i> info@example.com</a>
                            <a href=""><i class="fas fa-phone me-2"></i> +012 345 67890</a>
                            <a href="" class="mb-3"><i class="fas fa-print me-2"></i> +012 345 67890</a>
                            <div class="d-flex align-items-center">
                                <i class="fas fa-share fa-2x text-secondary me-2"></i>
                                <a class="btn-square btn btn-primary rounded-circle mx-1" href=""><i class="fab fa-facebook-f"></i></a>
                                <a class="btn-square btn btn-primary rounded-circle mx-1" href=""><i class="fab fa-twitter"></i></a>
                                <a class="btn-square btn btn-primary rounded-circle mx-1" href=""><i class="fab fa-instagram"></i></a>
                                <a class="btn-square btn btn-primary rounded-circle mx-1" href=""><i class="fab fa-linkedin-in"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer End -->

        
        <!-- Copyright Start -->
        <div class="container-fluid copyright py-4">
            <div class="container">
                <div class="row g-4 align-items-center">
                    <div class="col-md-6 text-center text-md-start mb-md-0">
                        <span class="text-white"><a href="#" style="color: #01dfc2 !important;"><i class="fas fa-copyright text-light me-2"></i>{{env("APP_NAME")}}</a>, All right reserved.</span>
                    </div>
                    <div class="col-md-6 text-center text-md-end text-white">
                        Designed By <a class="border-bottom" href="https://jsaha.in" style="color: #01dfc2 !important;">J. Saha</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Copyright End -->


        <!-- Back to Top -->
        <a href="#" class="btn btn-primary btn-lg-square back-to-top"><i class="fa fa-arrow-up"></i></a>   

        
    <!-- JavaScript Libraries -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="{{asset('assets/front-end/')}}/lib/wow/wow.min.js"></script>
    <script src="{{asset('assets/front-end/')}}/lib/easing/easing.min.js"></script>
    <script src="{{asset('assets/front-end/')}}/lib/waypoints/waypoints.min.js"></script>
    <script src="{{asset('assets/front-end/')}}/lib/counterup/counterup.min.js"></script>
    <script src="{{asset('assets/front-end/')}}/lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="{{asset('assets/front-end/')}}/lib/lightbox/js/lightbox.min.js"></script>
    

    <!-- Template Javascript -->
    <script src="{{asset('assets/front-end/')}}/js/main.js"></script>
    </body>

</html>