<!DOCTYPE html>
<!--[if IE 7]>         <html class="ie7 lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="ie8 lt-ie9"> <![endif]-->
<!--[if IE 9]>         <html class="ie9"> <![endif]-->
<!--[if gt IE 9]><!-->
<html>
<!--<![endif]-->
  <head>
    <meta charset="utf-8">
    <title>Enotus - {site_title}</title>
    <meta name="description" content="{site_metadata_description}" />
    <meta name="keywords" content="{site_metadata_keywords}" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

    <!-- css [ -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,800,700,300&subset=latin,cyrillic' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="{res_css}/bootstrap.css" media="screen">
    <link href="{res_css}/bootswatch.min.css" rel="stylesheet">
    <link rel="stylesheet" href="{res_css}/main.css" media="all">
    <!-- ] css -->
    
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="{res_js}/vendor/html5shiv.js"></script>
      <script src="{res_js}/vendor/respond.min.js"></script>
    <![endif]-->
    
  </head>

  <body> 
      <!-- application [ -->
      <div class="application">
        {site_header} 
      <!-- application content [ -->
        <div class="app-content">
            <div class="app-content-inner">
                <div class="container">
                  {breadcrumbs}
                  {site_body}
                </div><!--<div class="container">-->
            </div><!--<div class="app-content-inner">-->
        </div><!--<div class="app-content">-->
        <!-- ] application content -->
            
      </div><!--<div class="application">-->
      <!-- ] application -->
      {site_footer} 
      
        <!-- js [ -->
        <script type="text/javascript">var BASEURL = '{base_url}'; var SUBURL = '{sub_url}'; var LANG = '{lang}'; var BASEURLLANG = '{res_url}/{lang}/';</script>
        <script type="text/javascript" src="{res_js}/vendor/jquery.min.js"></script>
        <script type="text/javascript" src="{res_js}/vendor/bootstrap.min.js"></script>
        <script type="text/javascript" src="{res_js}/main.js"></script>
        <!-- ] js -->
    </body>
</html>