<!DOCTYPE html>
<html lang="ru">
  <head>
    <meta charset="utf-8" />
    
    <title>Ukramerica - {site_title}</title>
    <meta name="description" content="{site_metadata_description}" />
    <meta name="keywords" content="{site_metadata_keywords}" />
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

    <!-- css [ -->
    <link rel="stylesheet" href="{res_btsp}/css/bootstrap.css" media="screen">
    <link rel="stylesheet" href="{res_btsp}/css/bootstrap-responsive.css" media="screen">
    <link rel="stylesheet" href="{res_css}/main.css" media="all">
    <!-- ] css -->
    
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    
  </head>

  <body class="main-page"> 
  
  
    <div id="wrap">
    
        <div class="container long">
            <div class="row relative">
                <img alt="Main Image" src="{res_img}/america_watsmus.jpg" />
                <a href="{base_url}" class="logo-image">
                  <img alt="Ukramerica" src="{res_img}/ukramerica.png">
                </a>
            </div>
            
            <div class="row">
              <div class="">
                {site_header}
              </div>
            </div>
            
            {breadcrumbs}

            {site_body}

        </div>
        <!--<div class="container">-->

        <div id="push"></div>

    </div>
    <!--<div id="wrap">-->

    <div id="footer">
        <div class="container">
            {site_footer}
        </div>
        <!--<div class="container">-->
    </div>
    <!--<div id="footer">-->
      
        <!-- js [ -->
        <script type="text/javascript">var BASEURL = '{base_url}'; var SUBURL = '{sub_url}'; var LANG = '{lang}'; var BASEURLLANG = '{res_url}/{lang}/';</script>
        <script type="text/javascript" src="{res_js}/vendor/jquery.min.js"></script>
        <script type="text/javascript" src="{res_btsp}/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="{res_btsp}/js/respond.min.js"></script>
        <script type="text/javascript" src="{res_js}/main.js"></script>
        <!-- ] js -->
        
        <?php //Custom scripts, added by add_script() function. Do not touch. ?>
        {scripts}
          {script}
        {/scripts}
        <?php //Custom scripts ?>
        
    </body>
</html>