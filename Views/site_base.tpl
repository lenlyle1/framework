<html lang="en" ng-app>
    <head>
        <title>{block name="title"}{ucwords($site->name)}{/block}</title>

        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=0" />
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <meta name="description" content="{block name="meta_description"}{$site->description}{/block}" />
        <meta name="keyword" content="{block name="meta_keyword"}{$site->keywords}{/block}" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/css/bootstrap.min.css" integrity="sha384-Zug+QiDoJOrZ5t4lssLdxGhVrurbmBWopoEl+M6BdEfwnCJZtKxi1KgxUyJq13dy" crossorigin="anonymous">
        {block name="css"}
            {** embedcss cssfile="/assets/css/geometry.css"}
            {embedcss cssfile="/assets/css/responsive.css"}
            {embedcss cssfile="/assets/css/styles.css"}
            {embedcss cssfile="/assets/css/globalStyles.css"}
            {embedcss cssfile="/assets/css/site-styles.css"}
            {embedcss cssfile="/assets/css/sites-geometry.css"}
            {embedcss cssfile="/assets/css/responsive.css"}

            {if !empty($siteStyle)}
                {embedcss cssfile="/assets/css/`$siteStyle`.css"}
            {/if **}
        {/block}

        {block name="js"}
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/js/bootstrap.min.js"></script>
        {/block}
        
        {compile_stack}

        {if !empty($recaptcha)}
            <script src='https://www.google.com/recaptcha/api.js'></script>
        {/if}

        <script>
            {** $(document).ready(function(){
                {if !$isLive}
                    Log.output = true;
                {/if}
            }); **}
        </script>
    </head>
    <body>
        <header>
            <div class="contentHolder">
                <div class="left">
                    <div class="logo">
                        <a href="/">
                            <span class="site-name">{ucwords($site->shortname)}</span>
                        </a>
                    </div>
                </div>
            </div>
        </header>
        <div class="contentHolder main-body">
            {block name="content"}

            {/block}
        </div>


        <footer>    
            <div class="contentHolder"> 
                <div class="row">
                    {include file="footer-menu.tpl"}
                </div>
                <div class="row">
                    <div class="center copyright">
                        &copy; Copyright {'Y'|date} {$sitename}
                    </div>
                </div>
                
                {if !empty($swatches)}
                <div class="swatchHolder">
                    <h2>Swatches</h2>   
                    <div class="contentHolder center">
                        {$swatches}
                    </div>
                </div>
                {/if}
            </div>
        </footer>

        {** google analytics **}
        <script>
        {literal}
          (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
          (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
          m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
          })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

          ga('create', 'UA-73295442-1', 'auto');
          ga('send', 'pageview');
        {/literal}
        </script>
    </body>
</html>