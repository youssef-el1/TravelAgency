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
    <meta name="description" content="Ela Admin - HTML5 Admin Template">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="https://i.imgur.com/QRAUqs9.png">
    <link rel="shortcut icon" href="https://i.imgur.com/QRAUqs9.png">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/normalize.css@8.0.0/normalize.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/pixeden-stroke-7-icon@1.2.3/pe-icon-7-stroke/dist/pe-icon-7-stroke.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.2.0/css/flag-icon.min.css">
    <link rel="stylesheet" href="../../assets/css/cs-skin-elastic.css">
    <link rel="stylesheet" href="../../assets/css/lib/datatable/dataTables.bootstrap.min.css">
    <link rel="stylesheet" href="../../assets/css/style.css">
    <script src='../../tinymce/tinymce.min.js'></script>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>

    <!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->

</head>
<body>
    <!-- Left Panel -->

    <aside id="left-panel" class="left-panel">
        <nav class="navbar navbar-expand-sm navbar-default">
            <center><img src="{{ asset('assets2/img/55.png') }}" style=" width: 50px;"/>    </br>    
            <a id="menuToggle" class="menutoggle"><i class="fa fa-bars"></i></a></center>
    
                <div id="main-menu" class="main-menu collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li>
                            <a href="dashboard"><i class="menu-icon fa fa-laptop"></i>Dashboard </a>
                        </li>
                        <li class="menu-title">Gestion Reservations</li><!-- /.menu-title -->
                        <li class="">
                            <a href="{{route('reservation.index')}}"> <i class="menu-icon fa fa-cogs"></i>Valider les reservations</a>
                        </li>
    
                        <li class="menu-title">Gestion Voyages</li><!-- /.menu-title -->
    
                        <li class="">
                            <a href="{{route('voyage.index')}}"> <i class="menu-icon fa fa-tasks"></i>Afficher/Modifier Voyage</a>
                        </li>
                        <li class="">
                            <a href="{{route('voyage.create')}}"> <i class="menu-icon fa fa-bar-chart"></i>Ajouter Voyage</a>
                        </li>
                        <li class="">
                            <a href="{{url('/archive')}}"> <i class="menu-icon fa fa-cogs"></i>Afficher les archives</a>
                        </li>
    
                      
                        <li class="menu-title"><a href="{{route('listuser.index')}}">Gestion Utilisateurs</a></li><!-- /.menu-title -->
                        
                    </ul>
                </div><!-- /.navbar-collapse -->
            </nav>
    </aside><!-- /#left-panel -->

    <!-- Left Panel -->

    <!-- Right Panel -->

    <div id="right-panel" class="right-panel">

        <!-- Header-->
        <x-slot name="header">
            <h2 class="font-semibold text-xl text-gray-800 leading-tight">
                {{ __('Dashboard') }}
            </h2>
        </x-slot>
        <!-- /header -->
        <div class="breadcrumbs">
            <div class="breadcrumbs-inner">
                <div class="row m-0">
                    <div class="col-sm-4">
                        <div class="page-header float-left">
                            <div class="page-title">
                                <h1>Dashboard</h1>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-8">
                        <div class="page-header float-right">
                            <div class="page-title">
                                <ol class="breadcrumb text-right">
                                    <li><a href="dashboard">Dashboard</a></li>
                                    <li class="active">Ajouter voyage</li>
                                </ol>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="content">
            <div class="animated fadeIn">

                <div class="row">
                    <div class="col-lg-10">
                        <div class="card">
                            <div class="card-header">
                                <strong>Ajouter voyage</strong>
                            </div>
                            <div class="card-body card-block">
                                <form action="{{route('voyage.store')}}" method="post"  class="form-horizontal" enctype="multipart/form-data">
                                    @csrf
                                    <div class="row form-group ">
                                        <div class="col col-md-3"><label for="titre" class=" form-control-label">Titre</label></div>
                                        <div class="col-12 col-md-9"><input type="text" id="titre" name="titre" placeholder="Titre" class="form-control"></div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3"><label for="date_dp" class=" form-control-label">Date Depart</label></div>
                                        <div class="col-12 col-md-9"><input type="date" id="date_dp" name="date_dp"  class="form-control"></div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3"><label for="date_ar" class=" form-control-label">Date de Retour</label></div>
                                        <div class="col-12 col-md-9"><input type="date" id="date_ar" name="date_ar"  class="form-control"></div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3"><label for="durée" class=" form-control-label">Durée</label></div>
                                        <div class="col-12 col-md-4"><input type="number" id="durée" name="duree" placeholder="durée"  class="form-control"></div>
                                        <div class="col col-md-3"><strong>Jours</strong></div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3"><label for="prix" class=" form-control-label">Prix</label></div>
                                        <div class="col-12 col-md-9"><input type="text" id="prix" name="prix" placeholder="Prix"  class="form-control"></div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3"><label for="nbplace" class=" form-control-label">nombre de place</label></div>
                                        <div class="col-12 col-md-9"><input type="number" id="nbplace" name="nbplace" placeholder="nbplace"  class="form-control"></div>
                                    </div>

                                    <div class="user-image mb-3 text-center">
                                        <div class="imgPreview"> </div>
                                    </div>            
                        
                                    <div class="custom-file">
                                        <input type="file" name="image[]" class="custom-file-input" id="images" multiple="multiple">
                                        <label class="custom-file-label" for="images">Choose image</label>
                                    </div>
 
                            </div>
                        </div>
                         
                    </div>

                <div class="col-lg-10">            
                    <div class="card">
                        <div class="card-header">
                            <strong>Description</strong>
                        </div>
                        <div class="card-body card-block">
                            <div class="row form-group">
                                
                                <div class="col-12 col-md-12"><textarea id="myTextarea"  name="description"   placeholder="..." ></textarea></div>
                            </div>
                            <div class="card-body " style="margin-left: 20%;">
                                <button type="button" class="btn btn-danger col-md-4 " style="border-radius: 40px;">Annuler</button>
                                <button type="submit" class="btn btn-success col-md-4" style="border-radius: 40px;">Enregistrer</button>
                            </div>
                            </form>
                        </div>
                    </div>
                </div>

            </div>
            

        </div><!-- .animated -->
    </div><!-- .content -->
        <!-- Header-->

        <div class="clearfix"></div>
        
    </div><!-- /#right-panel -->

    <!-- Right Panel -->

    <!-- Scripts -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@2.2.4/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.4/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery-match-height@0.7.2/dist/jquery.matchHeight.min.js"></script>
    <script src="../../assets/js/main.js"></script>


    <script src="../../assets/js/lib/data-table/datatables.min.js"></script>
    <script src="../../assets/js/lib/data-table/dataTables.bootstrap.min.js"></script>
    <script src="../../assets/js/lib/data-table/dataTables.buttons.min.js"></script>
    <script src="../../assets/js/lib/data-table/buttons.bootstrap.min.js"></script>
    <script src="../../assets/js/lib/data-table/jszip.min.js"></script>
    <script src="../../assets/js/lib/data-table/vfs_fonts.js"></script>
    <script src="../../assets/js/lib/data-table/buttons.html5.min.js"></script>
    <script src="../../assets/js/lib/data-table/buttons.print.min.js"></script>
    <script src="../../assets/js/lib/data-table/buttons.colVis.min.js"></script>
    <script src="../../assets/js/init/datatables-init.js"></script>


    <script type="text/javascript">
        $(document).ready(function() {
          $('#bootstrap-data-table-export').DataTable();
      } );
  </script>
<script src="https://cdn.jsdelivr.net/npm/jquery@2.2.4/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.4/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery-match-height@0.7.2/dist/jquery.matchHeight.min.js"></script>
<script src="assets/js/main.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script>
        $(function() {
        // Multiple images preview with JavaScript
        var multiImgPreview = function(input, imgPreviewPlaceholder) {

            if (input.files) {
                var filesAmount = input.files.length;

                for (i = 0; i < filesAmount; i++) {
                    var reader = new FileReader();

                    reader.onload = function(event) {
                        $($.parseHTML('<img>')).attr('src', event.target.result).appendTo(imgPreviewPlaceholder);
                    }
                    

                    reader.readAsDataURL(input.files[i]);
                }
            }

        };

        $('#images').on('change', function() {
            multiImgPreview(this, 'div.imgPreview');
        });
        });    
    </script>
 <script>
        tinymce.init({
           selector: 'textarea#myTextarea',
           plugins: 'print preview paste importcss searchreplace autolink autosave save directionality code visualblocks visualchars fullscreen image link media template codesample table charmap hr pagebreak nonbreaking anchor toc insertdatetime advlist lists wordcount imagetools textpattern noneditable help charmap quickbars emoticons',
           imagetools_cors_hosts: ['picsum.photos'],
           menubar: 'file edit view insert format tools table help',
           toolbar: 'undo redo | bold italic underline strikethrough | fontselect fontsizeselect formatselect | alignleft aligncenter alignright alignjustify | outdent indent |  numlist bullist | forecolor backcolor removeformat | pagebreak | charmap emoticons | fullscreen  preview save print | insertfile image media template link anchor codesample | ltr rtl',
           toolbar_sticky: true,
           autosave_ask_before_unload: true,
           autosave_interval: "30s",
           autosave_prefix: "{path}{query}-{id}-",
           autosave_restore_when_empty: false,
           autosave_retention: "2m",
           image_advtab: true,
           /*content_css: '//www.tiny.cloud/css/codepen.min.css',*/
           link_list: [
               { title: 'My page 1', value: 'https://www.codexworld.com' },
               { title: 'My page 2', value: 'https://www.xwebtools.com' }
           ],
           image_list: [
               { title: 'My page 1', value: 'https://www.codexworld.com' },
               { title: 'My page 2', value: 'https://www.xwebtools.com' }
           ],
           image_class_list: [
               { title: 'None', value: '' },
               { title: 'Some class', value: 'class-name' }
           ],
           importcss_append: true,
           file_picker_callback: function (callback, value, meta) {
               /* Provide file and text for the link dialog */
               if (meta.filetype === 'file') {
                   callback('https://www.google.com/logos/google.jpg', { text: 'My text' });
               }
           
               /* Provide image and alt text for the image dialog */
               if (meta.filetype === 'image') {
                   callback('https://www.google.com/logos/google.jpg', { alt: 'My alt text' });
               }
           
               /* Provide alternative source and posted for the media dialog */
               if (meta.filetype === 'media') {
                   callback('movie.mp4', { source2: 'alt.ogg', poster: 'https://www.google.com/logos/google.jpg' });
               }
           },
           templates: [
               { title: 'New Table', description: 'creates a new table', content: '<div class="mceTmpl"><table width="98%%"  border="0" cellspacing="0" cellpadding="0"><tr><th scope="col"> </th><th scope="col"> </th></tr><tr><td> </td><td> </td></tr></table></div>' },
               { title: 'Starting my story', description: 'A cure for writers block', content: 'Once upon a time...' },
               { title: 'New list with dates', description: 'New List with dates', content: '<div class="mceTmpl"><span class="cdate">cdate</span><br /><span class="mdate">mdate</span><h2>My List</h2><ul><li></li><li></li></ul></div>' }
           ],
           template_cdate_format: '[Date Created (CDATE): %m/%d/%Y : %H:%M:%S]',
           template_mdate_format: '[Date Modified (MDATE): %m/%d/%Y : %H:%M:%S]',
           height: 600,
           image_caption: true,
           quickbars_selection_toolbar: 'bold italic | quicklink h2 h3 blockquote quickimage quicktable',
           noneditable_noneditable_class: "mceNonEditable",
           toolbar_mode: 'sliding',
           contextmenu: "link image imagetools table",
        });
</script>



</body>
</html>
   
        </div>
    </div>
</x-app-layout>
