<!DOCTYPE HTML>
<html>
<head data-style="${asset.assetPath(src: 'style.css')}"
      data-style-desktop="${asset.assetPath(src: 'style-desktop.css')}"
      data-style-1000="${asset.assetPath(src: 'style-1000px.css')}"
      data-sytle-mobile="${asset.assetPath(src: 'style-mobile.css')}">
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
    <div id="header" class="container">
        <!-- Nav -->
        <nav id="nav">
            <ul>
                <li><g:link action="index" class="icon fa-home"><span>Introduction</span></g:link></li>
                <li>
                    <a href="" class="icon fa-sitemap"><span>Browse Categories</span></a>
                    <ul>
                        <g:each in="${categories}">
                            <g:link action="test" id="${it.name}">${it.name}</g:link>
                        </g:each>
                    </ul>
                </li>
                <li><a class="icon fa-check-square-o" href="left-sidebar.html"><span>Take an Exam</span></a></li>
                <li><a class="icon fa-at" href="no-sidebar.html"><span>Sign in</span></a></li>
            </ul>
        </nav>
        <!-- Logo -->
        <g:layoutHead/>
    </div>
</div>

<g:layoutBody/>
</body>
</html>
