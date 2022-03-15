<x-app-layout>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
        <!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang=""> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>YALLAH</title>
    
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>
    <link rel="shortcut icon" type="image/x-icon" href="favicon.png">
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
    <link
        href='http://fonts.googleapis.com/css?family=Montserrat:400,700%7COpen+Sans:400,300%7CLibre+Baskerville:400,400italic'
        rel='stylesheet' type='text/css'>
    

    <link rel="stylesheet" type="text/css" href="../../css3/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="../../css3/settings.css">
    <link rel="stylesheet" type="text/css" href="../../css3/simple-line-icons.css">
    <link rel="stylesheet" type="text/css" href="../../css3/font-awesome.css">
    <link rel="stylesheet" type="text/css" href="../../css3/owl.carousel.css">
    <link rel="stylesheet" type="text/css" href="../../css3/jquery-ui.css">
    <link rel="stylesheet" type="text/css" href="../../css3/jquery.timepicker.css">
    <link rel="stylesheet" type="text/css" href="../../css3/jquery.fancybox.css">
    <link rel="stylesheet" type="text/css" href="../../css3/jquery.selectBox.css">
    <link rel="stylesheet" type="text/css" href="../../css3/global.css">
    <link rel="stylesheet" type="text/css" href="../../css3/style.css">
    <link rel="stylesheet" type="text/css" href="../../css3/responsive.css">
    <link rel="stylesheet" type="text/less" href="../../css3/skin.less">
    <script type="text/javascript" src="../../js3/jquery-1.11.3.min.js"></script>
    <!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->

</head>
<body>


    <!-- Left Panel -->

    <!-- Right Panel -->
<center>
    <div id="right-panel" class="right-panel">

        <!-- Header-->
        <x-slot name="header">
            <h2 class="font-semibold text-xl text-gray-800 leading-tight">
                {{ __('Dashboard') }}
            </h2>
        </x-slot>
        <!-- /header -->
     <div class="content">  
        <section class="banner2 banner-margin-zero">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-6 ">
                        <h1>Plus d'informations sur le voyage</h1>
                    </div>

                </div>
            </div>
        </section>
        <section class="car-view-slider">
            <div class="container">
                <div class="vehicles-head clearfix">
                    <h5></h5>
                    <a href="{{url()->previous()}}" class="get-back-home">retour<i aria-hidden="true"></i></a>
                </div>
                @foreach ($voyages as $voy)
               
                <div class="rental-car">
                    <div class="car-parts-slider-outer">
                        <div class="car-parts-slider">

                            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">

                                <!-- Wrapper for slides -->
                                <div class="rental-car">
                                    <div class="car-parts-slider-outer">
                                        <div class="car-parts-slider">
                
                                            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                
                                                <!-- Wrapper for slides -->
                                                <div class="carousel-inner" role="listbox">
                                                @foreach (App\Models\Image::where('idvoyage',$voy->id)->orderBy('id')->get() as $image)
                                                    <div class="item {{ $loop->index === 0 ? 'active' : '' }}">
                                                        <img src="{{asset('./uploads/'.$image->path)}}" alt="..."  style="max-height: 475px">
                                                    </div>
                                                    @endforeach
                                                </div>
                
                                                <!-- Controls -->
                                                <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                                                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                                                    <span class="sr-only">Previous</span>
                                                </a>
                                                <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                                                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                                                    <span class="sr-only">Next</span>
                                                </a>
                                            </div>
                                        </div>
                                    </div>

                                <!-- Controls -->
                                <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                                    <span class="sr-only"> < </span>
                                </a>
                                <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                                    <span class="sr-only"> > </span>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="car-details-wrap">
                        
                        <div class="car-details ">
                            <div class="car-info clearfix">
                            <br><br><center> <span class="start-price-rent"><strong>{{$voy->titre}}<br><br>BIENVENU<br><br><br><br> </strong></span></center>
                            </div>

                        </div>
                        <ul class="car-more-info clearfix">
                            <li>
                                <strong>Date de départ:</strong><br>{{$voy->date_dp}} 
                            </li>
                            <li>
                                <strong>Date d'arrivée:</strong><br>{{$voy->date_ar}}
                            </li>
                            <li>
                                <strong>Prix:</strong><br>{{$voy->prix}}
                            </li>
                            <li>
                                <strong>Durrée:</strong><br>{{$voy->duree}}
                            </li>
                            <br>
                            <li class="orange-btn" >
                                <a href="{{route('reservation.create')}}"><i class="fa fa-plus-circle" aria-hidden="true"></i><strong>Réserver</strong></a>
                            </li>
                        </ul>
                        @endforeach
                    </div>
                    <div class="car-details ">
                        <div class="">
                        <br><br> <span class="start-price-rent"><strong>Description<br><br> </strong></span>
                        <div style="text-align: left;">{!! $voy->description !!}</div>
                        </div>

                    </div>
                    
                    

                </div>
            </div>
        </section>
        <!-- Header-->
     </div>    
    </div>
    </center>
        <div class="clearfix"></div>
        
    </div><!-- /#right-panel -->

    <!-- Right Panel -->

   

    <script type="text/javascript" src="../../js3/angular.js"></script>
    <script type="text/javascript" src="../../js3/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="../../js3/jquery-ui.js"></script>
    <script type="text/javascript" src="../../js3/jquery.timepicker.min.js"></script>
    <script type="text/javascript" src="../../js3/bootstrap.js"></script>
    <script type="text/javascript" src="../../js3/less.js"></script>
    <script type="text/javascript" src="../../js3/owl.carousel.js"></script>
    <script type="text/javascript" src="../../js3/app.js"></script>
    <script type="text/javascript" src="../../js3/jquery.selectBox.js"></script>
    <script type="text/javascript" src="../../js3/jquery.fancybox.js"></script>

    <!-- revolution slider Js -->
    <script type="text/javascript" src="../../js3/jquery.themepunch.tools.min.js"></script>
    <script type="text/javascript" src="../../js3/jquery.themepunch.revolution.min.js"></script>
    <script type="text/javascript" src="../../js3/jquery.revolution.js"></script>
    <script type="text/javascript" src="../../extensions3/revolution.extension.video.min.js"></script>
    <script type="text/javascript" src="../../extensions3/revolution.extension.slideanims.min.js"></script>
    <script type="text/javascript" src="../../extensions3/revolution.extension.actions.min.js"></script>
    <script type="text/javascript" src="../../extensions3/revolution.extension.layeranimation.min.js"></script>
    <script type="text/javascript" src="../../extensions3/revolution.extension.kenburn.min.js"></script>
    <script type="text/javascript" src="../../extensions3/revolution.extension.navigation.min.js"></script>
    <script type="text/javascript" src="../../extensions3/revolution.extension.migration.min.js"></script>
    <script type="text/javascript" src="../../extensions3/revolution.extension.parallax.min.js"></script>
    <!--  revolution slider Js -->

    <script type="text/javascript" src="../../js3/site.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
          $('#bootstrap-data-table-export').DataTable();
      } );
    </script>
    
    <script>
        for (let item of document.getElementsByClassName('rate-btn')) {
            item.addEventListener('click', function (e) {
                const val = e.target.dataset.start;
            })
        }

</script>

</body>
</html>
   
        </div>
    </div>
</x-app-layout>