<!DOCTYPE HTML>
<html>
<head data-style="${asset.assetPath(src: 'style.css')}"
      data-style-desktop="${asset.assetPath(src: 'style-desktop.css')}"
      data-style-1000="${asset.assetPath(src: 'style-1000px.css')}"
      data-style-mobile="${asset.assetPath(src: 'style-mobile.css')}">
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="description" content=""/>
    <meta name="keywords" content=""/>
    <!--[if lte IE 8]><asset:javascript src="ie/html5shiv.js"/><![endif]-->

    <asset:javascript src="jquery.min.js"/>
    <asset:javascript src="jquery.dropotron.min.js"/>
    <asset:javascript src="skel.min.js"/>
    <asset:javascript src="skel-layers.min.js"/>
    <asset:javascript src="init.js"/>
    <noscript>
        <asset:stylesheet src="style-desktop.css"/>
        <asset:stylesheet src="style.css"/>
        <asset:stylesheet src="skel.css"/>
    </noscript>

    <asset:link rel="shortcut icon" href="favicon.ico" type="image/x-icon"/>

    <!--[if lte IE 8]><asset:stylesheet src="ie/v8.css"/><![endif]-->
    <title>Passdentistry</title>

</head>

<body>
<!-- Header -->
<div id="header-wrapper">
    <div id="header" class="container" style="padding: 5em">
        <!-- Nav -->
        <nav id="nav">
            <ul>
                <li><g:link controller="question" action="index" class="icon fa-home"><span>Questions</span></g:link>
                </li>
                <li><g:link controller="category" action="index" class="icon fa-home"><span>Categories</span></g:link>
                </li>
                <li><g:link controller="exam" action="index" class="icon fa-home"><span>Exams</span></g:link></li>
                <li><g:link controller="admin" action="index" class="icon fa-home"><span>Admins</span></g:link></li>
            </ul>
        </nav>
        <!-- Logo -->
        <g:layoutHead/>
    </div>
</div>

<div id="main-wrapper">
    <div id="main" class="container">
        <g:layoutBody/>
    </div>
</div>
</body>
</html>
