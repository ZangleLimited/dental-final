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

<g:render template="footer"/>

</body>
</html>