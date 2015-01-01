<!DOCTYPE HTML>
<html>
<head>
    <meta name="layout" content="main"/>
    <h1 id="logo"><g:link action="index">Take a Test</g:link></h1>
    <p>${params.id}</p>
</head>
<body class="homepage">

<!-- Main -->
<div id="main-wrapper">
    <div id="main" class="container">
        <div class="row">

            <!-- Content -->
            <div id="content" class="8u">

                <h3>You are about to take a Test in ${params.category}</h3>

                <g:link class="button" action="startTest" params="[category: params.category]">Start!</g:link>

            </div>

            <div id="sidebar" class="4u">
                <g:render template="announcements"/>
            </div>

        </div>
    </div>
</div>

<!-- Footer -->
<div id="footer-wrapper">
    <div id="copyright" class="container">
        <ul class="links">
            <li>&copy; Untitled. All rights reserved.</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
            <a href="http://www.freepik.com/free-vector/dental-care-tooth-icons_722694.htm">Designed by Freepik</a>
        </ul>
    </div>
</div>

</body>
</html>